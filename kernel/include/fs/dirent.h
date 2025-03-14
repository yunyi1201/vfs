/*  dirent.h - filesystem-independent directory entry
 *  mcc, kma, jal
 */
#pragma once

/* Kernel and user header (via symlink) */

#ifdef __KERNEL__
#include "config.h"
#include "types.h"
#else

#include "sys/types.h"
#include "weenix/config.h"

#endif

typedef struct dirent {
  ino_t d_ino;           /* entry inode number */
  off_t d_off;           /* seek pointer of next entry */
  char d_name[NAME_LEN]; /* filename */
} dirent_t;

#define d_fileno d_ino
