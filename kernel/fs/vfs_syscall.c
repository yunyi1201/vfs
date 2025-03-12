#include "fs/vfs_syscall.h"

#include <limits.h>

#include "errno.h"
#include "fs/fcntl.h"
#include "fs/file.h"
#include "fs/lseek.h"
#include "fs/vfs.h"
#include "fs/vnode.h"
#include "globals.h"
#include "kernel.h"
#include "util/debug.h"
#include "util/string.h"

/*
 * Read len bytes into buf from the fd's file using the file's vnode operation
 * read.
 *
 * Return the number of bytes read on success, or:
 *  - EBADF: fd is invalid or is not open for reading
 *  - EISDIR: fd refers to a directory
 *  - Propagate errors from the vnode operation read
 *
 * Hints:
 *  - Be sure to update the file's position appropriately.
 *  - Lock/unlock the file's vnode when calling its read operation.
 */
ssize_t do_read(int fd, void *buf, size_t len) {
  KASSERT(curproc);
  struct file *file = fget(fd);
  if (!file || (file->f_mode & FMODE_READ) == 0) {
    if (file) {
      fput(&file);
    }
    return -EBADF;
  }
  struct vnode *vnode = file->f_vnode;
  if (S_ISDIR(vnode->vn_mode)) {
    fput(&file);
    return -EISDIR;
  }

  vlock(vnode);
  KASSERT(vnode->vn_ops->read);
  ssize_t ret = vnode->vn_ops->read(vnode, file->f_pos, buf, len);
  vunlock(vnode);
  file->f_pos += ret;
  fput(&file);
  return ret;
}

/*
 * Write len bytes from buf into the fd's file using the file's vnode operation
 * write.
 *
 * Return the number of bytes written on success, or:
 *  - EBADF: fd is invalid or is not open for writing
 *  - Propagate errors from the vnode operation read
 *
 * Hints:
 *  - Check out `man 2 write` for details about how to handle the FMODE_APPEND
 *    flag.
 *  - Be sure to update the file's position appropriately.
 *  - Lock/unlock the file's vnode when calling its write operation.
 */
ssize_t do_write(int fd, const void *buf, size_t len) {
  KASSERT(curproc);

  struct file *file = fget(fd);
  if (!file || (file->f_mode & FMODE_WRITE) == 0) {
    if (file) {
      fput(&file);
    }
    return -EBADF;
  }

  struct vnode *vnode = file->f_vnode;
  vlock(vnode);
  KASSERT(vnode->vn_ops->write);

  if (file->f_mode & FMODE_APPEND) {
    file->f_pos = vnode->vn_len;
  }

  ssize_t ret = vnode->vn_ops->write(vnode, file->f_pos, buf, len);
  vunlock(vnode);
  file->f_pos += ret;
  fput(&file);
  return ret;
}

/*
 * Close the file descriptor fd.
 *
 * Return 0 on success, or:
 *  - EBADF: fd is invalid or not open
 *
 * Hints:
 * Check `proc.h` to see if there are any helpful fields in the
 * proc_t struct for checking if the file associated with the fd is open.
 * Consider what happens when we open a file and what counts as closing it
 */
long do_close(int fd) {
  KASSERT(curproc);
  if (fd < 0 || fd >= NFILES || curproc->p_files[fd] == NULL) {
    return -EBADF;
  }
  // if (curproc->p_files[fd]->f_refcount == 1) {
  //   vput(&curproc->p_files[fd]->f_vnode);
  // }
  fput(&curproc->p_files[fd]);
  return 0;
}

/*
 * Duplicate the file descriptor fd.
 *
 * Return the new file descriptor on success, or:
 *  - EBADF: fd is invalid or not open
 *  - Propagate errors from get_empty_fd()
 *
 * Hint: Use get_empty_fd() to obtain an available file descriptor.
 */
long do_dup(int fd) {
  KASSERT(curproc);
  struct file *file = fget(fd);
  int ret, new_fd;
  if (!file) {
    return -EBADF;
  }

  ret = get_empty_fd(&new_fd);
  if (ret < 0) {
    fput(&file);
    return ret;
  }
  fref(file);
  curproc->p_files[new_fd] = file;
  fput(&file);
  return new_fd;
}

/*
 * Duplicate the file descriptor ofd using the new file descriptor nfd. If nfd
 * was previously open, close it.
 *
 * Return nfd on success, or:
 *  - EBADF: ofd is invalid or not open, or nfd is invalid
 *
 * Hint: You don't need to do anything if ofd and nfd are the same.
 * (If supporting MTP, this action must be atomic)
 */
long do_dup2(int ofd, int nfd) {
  if (ofd < 0 || ofd >= NFILES || nfd < 0 || nfd >= NFILES) {
    return -EBADF;
  }

  struct file *file = fget(ofd);
  if (!file) {
    return -EBADF;
  }

  if (ofd == nfd) {
    fput(&file);
    return nfd;
  }

  struct file *file_2 = curproc->p_files[nfd];
  if (file_2) {
    fput(&curproc->p_files[nfd]);
  }

  fref(file);
  curproc->p_files[nfd] = file;
  fput(&file);
  return nfd;
}

/*
 * Create a file specified by mode and devid at the location specified by path.
 *
 * Return 0 on success, or:
 *  - EINVAL: Mode is not S_IFCHR, S_IFBLK, or S_IFREG
 *  - Propagate errors from namev_open()
 *
 * Hints:
 *  - Create the file by calling namev_open() with the O_CREAT flag.
 *  - Be careful about refcounts after calling namev_open(). The newly created
 *    vnode should have no references when do_mknod returns. The underlying
 *    filesystem is responsible for maintaining references to the inode, which
 *    will prevent it from being destroyed, even if the corresponding vnode is
 *    cleaned up.
 *  - You don't need to handle EEXIST (this would be handled within namev_open,
 *    but doing so would likely cause problems elsewhere)
 */
long do_mknod(const char *path, int mode, devid_t devid) {
  if (!S_ISCHR(mode) && !S_ISBLK(mode) && !S_ISREG(mode)) {
    return -EINVAL;
  }

  int ret;
  vnode_t *res_vnode;

  KASSERT(curproc && curproc->p_cwd);
  ret = namev_open(curproc->p_cwd, path, O_CREAT, mode, devid, &res_vnode);
  if (ret < 0) {
    return ret;
  }

  vput(&res_vnode);
  return 0;
}

/*
 * Create a directory at the location specified by path.
 *
 * Return 0 on success, or:
 *  - ENAMETOOLONG: The last component of path is too long
 *  - ENOTDIR: The parent of the directory to be created is not a directory
 *  - EEXIST: A file located at path already exists
 *  - Propagate errors from namev_dir(), namev_lookup(), and the vnode
 *    operation mkdir
 *
 * Hints:
 * 1) Use namev_dir() to find the parent of the directory to be created.
 * 2) Use namev_lookup() to check that the directory does not already exist.
 * 3) Use the vnode operation mkdir to create the directory.
 *  - Compare against NAME_LEN to determine if the basename is too long.
 *    Check out ramfs_mkdir() to confirm that the basename will be null-
 *    terminated.
 *  - Be careful about locking and refcounts after calling namev_dir() and
 *    namev_lookup().
 */
long do_mkdir(const char *path) {
  vnode_t *parent_vnode;
  vnode_t *result_vnode;
  vnode_t *dir_vnode;
  size_t namelen;
  const char *name;
  int ret;

  // Find the parent directory vnode
  KASSERT(curproc && curproc->p_cwd);
  ret = namev_dir(curproc->p_cwd, path, &parent_vnode, &name, &namelen);
  if (ret < 0) {
    return ret;
  }

  // Check if the name length is too long
  if (namelen > NAME_LEN) {
    vput(&parent_vnode);
    return -ENAMETOOLONG;
  }

  // Check if the directory already exists
  vlock(parent_vnode);
  ret = namev_lookup(parent_vnode, name, namelen, &result_vnode);
  if (ret == 0) {
    vunlock(parent_vnode);
    vput(&result_vnode);
    vput(&parent_vnode);
    return -EEXIST;
  } else if (ret != -ENOENT) {
    vunlock(parent_vnode);
    vput(&parent_vnode);
    return ret;
  }

  // Create the directory
  if (!S_ISDIR(parent_vnode->vn_mode)) {
    vunlock(parent_vnode);
    vput(&parent_vnode);
    return -ENOTDIR;
  }

  KASSERT(NULL != parent_vnode->vn_ops->mkdir);
  ret = parent_vnode->vn_ops->mkdir(parent_vnode, name, namelen, &dir_vnode);
  if (ret < 0) {
    vunlock(parent_vnode);
    vput(&parent_vnode);
    return ret;
  }

  vunlock(parent_vnode);
  vput(&dir_vnode);
  vput(&parent_vnode);
  return ret;
}

/*
 * Delete a directory at path.
 *
 * Return 0 on success, or:
 *  - EINVAL: Attempting to rmdir with "." as the final component
 *  - ENOTEMPTY: Attempting to rmdir with ".." as the final component
 *  - ENOTDIR: The parent of the directory to be removed is not a directory
 *  - ENAMETOOLONG: the last component of path is too long
 *  - Propagate errors from namev_dir() and the vnode operation rmdir
 *
 * Hints:
 *  - Use namev_dir() to find the parent of the directory to be removed.
 *  - Be careful about refcounts from calling namev_dir().
 *  - Use the parent directory's rmdir operation to remove the directory.
 *  - Lock/unlock the vnode when calling its rmdir operation.
 */
long do_rmdir(const char *path) {
  NOT_YET_IMPLEMENTED("VFS: do_rmdir");
  return -1;
}

/*
 * Remove the link between path and the file it refers to.
 *
 * Return 0 on success, or:
 *  - ENOTDIR: the parent of the file to be unlinked is not a directory
 *  - ENAMETOOLONG: the last component of path is too long
 *  - Propagate errors from namev_dir() and the vnode operation unlink
 *
 * Hints:
 *  - Use namev_dir() and be careful about refcounts.
 *  - Lock/unlock the parent directory when calling its unlink operation.
 */
long do_unlink(const char *path) {
  struct vnode *dir_vnode, *vnode;
  const char *basename = NULL;
  size_t namelen = 0;
  long ret = namev_dir(curproc->p_cwd, path, &dir_vnode, &basename, &namelen);
  if (ret < 0) {
    return ret;
  }

  if (namelen > NAME_LEN) {
    vput(&dir_vnode);
    return -ENAMETOOLONG;
  }

  if (!S_ISDIR(dir_vnode->vn_mode)) {
    vput(&dir_vnode);
    return -ENOTDIR;
  }

  vlock(dir_vnode);
  ret = namev_lookup(dir_vnode, basename, namelen, &vnode);
  if (ret < 0) {
    vunlock(dir_vnode);
    vput(&dir_vnode);
    return ret;
  }

  if (S_ISDIR(vnode->vn_mode)) {
    vunlock(dir_vnode);
    vput(&vnode);
    vput(&dir_vnode);
    return -EPERM;
  }

  KASSERT(dir_vnode->vn_ops->unlink);
  ret = dir_vnode->vn_ops->unlink(dir_vnode, basename, namelen);
  vunlock(dir_vnode);

  // if the vnode hold the last reference of the inode, `vput` will call
  // `fs->delete_vnode` to free inode.
  vput(&vnode);
  vput(&dir_vnode);
  return ret;
}

/*
 * Create a hard link newpath that refers to the same file as oldpath.
 *
 * Return 0 on success, or:
 *  - EPERM: oldpath refers to a directory
 *  - ENAMETOOLONG: The last component of newpath is too long
 *  - ENOTDIR: The parent of the file to be linked is not a directory
 *
 * Hints:
 * 1) Use namev_resolve() on oldpath to get the target vnode.
 * 2) Use namev_dir() on newpath to get the directory vnode.
 * 3) Use vlock_in_order() to lock the directory and target vnodes.
 * 4) Use the directory vnode's link operation to create a link to the target.
 * 5) Use vunlock_in_order() to unlock the vnodes.
 * 6) Make sure to clean up references added from calling namev_resolve() and
 *    namev_dir().
 */
long do_link(const char *oldpath, const char *newpath) {
  struct vnode *vnode, *dir_vnode, *parent_vnode;

  const char *basename = NULL;
  size_t namelen = 0;

  long ret = namev_resolve(curproc->p_cwd, oldpath, &vnode);
  if (ret < 0) {
    return ret;
  }

  // don't support link directory.
  if (S_ISDIR(vnode->vn_mode)) {
    vput(&vnode);
    return -EPERM;
  }

  ret = namev_dir(curproc->p_cwd, newpath, &dir_vnode, &basename, &namelen);

  if (ret < 0) {
    vput(&vnode);
    return ret;
  }

  if (!S_ISDIR(dir_vnode->vn_mode)) {
    vput(&dir_vnode);
    vput(&vnode);
    return -ENOTDIR;
  }

  if (namelen > NAME_LEN) {
    vput(&vnode);
    vput(&dir_vnode);
    return -ENAMETOOLONG;
  }

  vlock_in_order(dir_vnode, vnode);
  ret = dir_vnode->vn_ops->link(dir_vnode, basename, namelen, vnode);
  vunlock_in_order(dir_vnode, vnode);

  vput(&dir_vnode);
  vput(&vnode);
  return ret;
}

/* Rename a file or directory.
 *
 * Return 0 on success, or:
 *  - ENOTDIR: the parent of either path is not a directory
 *  - ENAMETOOLONG: the last component of either path is too long
 *  - Propagate errors from namev_dir() and the vnode operation rename
 *
 * You DO NOT need to support renaming of directories.
 * Steps:
 * 1. namev_dir oldpath --> olddir vnode
 * 2. namev_dir newpath --> newdir vnode
 * 4. Lock the olddir and newdir in ancestor-first order (see `vlock_in_order`)
 * 5. Use the `rename` vnode operation
 * 6. Unlock the olddir and newdir
 * 8. vput the olddir and newdir vnodes
 *
 * Alternatively, you can allow do_rename() to rename directories if
 * __RENAMEDIR__ is set in Config.mk. As with all extra credit
 * projects this is harder and you will get no extra credit (but you
 * will get our admiration). Please make sure the normal version works first.
 * Steps:
 * 1. namev_dir oldpath --> olddir vnode
 * 2. namev_dir newpath --> newdir vnode
 * 3. Lock the global filesystem `vnode_rename_mutex`
 * 4. Lock the olddir and newdir in ancestor-first order (see `vlock_in_order`)
 * 5. Use the `rename` vnode operation
 * 6. Unlock the olddir and newdir
 * 7. Unlock the global filesystem `vnode_rename_mutex`
 * 8. vput the olddir and newdir vnodes
 *
 * P.S. This scheme /probably/ works, but we're not 100% sure.
 */
long do_rename(const char *oldpath, const char *newpath) {
  NOT_YET_IMPLEMENTED("VFS: do_rename");
  return -1;
}

/* Set the current working directory to the directory represented by path.
 *
 * Returns 0 on success, or:
 *  - ENOTDIR: path does not refer to a directory
 *  - Propagate errors from namev_resolve()
 *
 * Hints:
 *  - Use namev_resolve() to get the vnode corresponding to path.
 *  - Pay attention to refcounts!
 *  - Remember that p_cwd should not be locked upon return from this function.
 *  - (If doing MTP, must protect access to p_cwd)
 */
long do_chdir(const char *path) {
  struct vnode *vnode = NULL;
  long ret = namev_resolve(curproc->p_cwd, path, &vnode);
  if (ret != 0) {
    if (vnode) {
      vput(&vnode);
    }
    return ret;
  }
  if (!S_ISDIR(vnode->vn_mode)) {
    vput(&vnode);
    return -ENOTDIR;
  }

  if (curproc->p_cwd) {
    vput(&curproc->p_cwd);
  }
  vref(curproc->p_cwd = vnode);
  vput(&vnode);
  return 0;
}

/*
 * Read a directory entry from the file specified by fd into dirp.
 *
 * Return sizeof(dirent_t) on success, or:
 *  - EBADF: fd is invalid or is not open
 *  - ENOTDIR: fd does not refer to a directory
 *  - Propagate errors from the vnode operation readdir
 *
 * Hints:
 *  - Use the vnode operation readdir.
 *  - Be sure to update file position according to readdir's return value.
 *  - On success (readdir return value is strictly positive), return
 *    sizeof(dirent_t).
 */
ssize_t do_getdent(int fd, struct dirent *dirp) {
  struct file *file = fget(fd);
  if (!file) {
    return -EBADF;
  }

  struct vnode *vnode = file->f_vnode;
  if (!S_ISDIR(vnode->vn_mode)) {
    fput(&file);
    return -ENOTDIR;
  }

  vlock(vnode);
  KASSERT(vnode->vn_ops->readdir);
  ssize_t ret = vnode->vn_ops->readdir(vnode, file->f_pos, dirp);
  vunlock(vnode);
  file->f_pos += ret;
  fput(&file);
  return ret == 0 ? 0 : sizeof(struct dirent);
}

/*
 * Set the position of the file represented by fd according to offset and
 * whence.
 *
 * Return the new file position, or:
 *  - EBADF: fd is invalid or is not open
 *  - EINVAL: whence is not one of SEEK_SET, SEEK_CUR, or SEEK_END;
 *            or, the resulting file offset would be negative
 *
 * Hints:
 *  - See `man 2 lseek` for details about whence.
 *  - Be sure to protect the vnode if you have to access its vn_len.
 */
off_t do_lseek(int fd, off_t offset, int whence) {
  struct file *file = fget(fd);
  if (!file) {
    return -EBADF;
  }
  off_t new_pos;
  switch (whence) {
  case SEEK_SET:
    new_pos = offset;
    break;
  case SEEK_CUR:
    new_pos = file->f_pos + offset;
    break;
  case SEEK_END:
    vlock(file->f_vnode);
    new_pos = file->f_vnode->vn_len + offset;
    vunlock(file->f_vnode);
    break;
  default:
    fput(&file);
    return -EINVAL;
  }

  if (new_pos < 0) {
    fput(&file);
    return -EINVAL;
  }

  file->f_pos = new_pos;
  fput(&file);
  return new_pos;
}

/* Use buf to return the status of the file represented by path.
 *
 * Return 0 on success, or:
 *  - Propagate errors from namev_resolve() and the vnode operation stat.
 */
long do_stat(const char *path, stat_t *buf) {
  struct vnode *vnode = NULL;
  KASSERT(curproc && curproc->p_cwd);
  long ret = namev_resolve(curproc->p_cwd, path, &vnode);
  if (ret < 0) {
    if (vnode) {
      vput(&vnode);
    }
    return ret;
  }

  KASSERT(vnode && vnode->vn_ops->stat);
  vlock(vnode);
  ret = vnode->vn_ops->stat(vnode, buf);
  vunlock(vnode);
  vput(&vnode);
  return ret;
}

#ifdef __MOUNTING__
/*
 * Implementing this function is not required and strongly discouraged unless
 * you are absolutely sure your Weenix is perfect.
 *
 * This is the syscall entry point into vfs for mounting. You will need to
 * create the fs_t struct and populate its fs_dev and fs_type fields before
 * calling vfs's mountfunc(). mountfunc() will use the fields you populated
 * in order to determine which underlying filesystem's mount function should
 * be run, then it will finish setting up the fs_t struct. At this point you
 * have a fully functioning file system, however it is not mounted on the
 * virtual file system, you will need to call vfs_mount to do this.
 *
 * There are lots of things which can go wrong here. Make sure you have good
 * error handling. Remember the fs_dev and fs_type buffers have limited size
 * so you should not write arbitrary length strings to them.
 */
int do_mount(const char *source, const char *target, const char *type) {
  NOT_YET_IMPLEMENTED("MOUNTING: do_mount");
  return -EINVAL;
}

/*
 * Implementing this function is not required and strongly discouraged unless
 * you are absolutley sure your Weenix is perfect.
 *
 * This function delegates all of the real work to vfs_umount. You should not
 * worry about freeing the fs_t struct here, that is done in vfs_umount. All
 * this function does is figure out which file system to pass to vfs_umount and
 * do good error checking.
 */
int do_umount(const char *target) {
  NOT_YET_IMPLEMENTED("MOUNTING: do_umount");
  return -EINVAL;
}
#endif
