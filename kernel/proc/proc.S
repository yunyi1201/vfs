	.file	"proc.c"
	.text
.Ltext0:
	.file 1 "proc/proc.c"
	.type	__atomic_add_unless, @function
__atomic_add_unless:
.LFB0:
	.file 2 "include/util/atomic.h"
	.loc 2 9 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	.loc 2 11 9
	movq	-24(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 2 11 7
	movl	%edx, -4(%rbp)
	.loc 2 12 11
	jmp	.L2
.L4:
	.loc 2 13 11
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L2:
	.loc 2 12 19
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L3
	.loc 2 12 65 discriminator 1
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 2 12 29 discriminator 1
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 2 12 27 discriminator 1
	movl	%eax, -8(%rbp)
	.loc 2 12 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L4
.L3:
	.loc 2 14 12
	movl	-4(%rbp), %eax
	.loc 2 15 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__atomic_add_unless, .-__atomic_add_unless
	.type	atomic_set, @function
atomic_set:
.LFB1:
	.loc 2 17 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 2 17 56
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 17 61
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	atomic_set, .-atomic_set
	.type	atomic_inc, @function
atomic_inc:
.LFB2:
	.loc 2 19 44
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 19 46
	movq	-8(%rbp), %rax
	lock addl	$1, (%rax)
	.loc 2 19 74
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	atomic_inc, .-atomic_inc
	.type	atomic_dec_and_test, @function
atomic_dec_and_test:
.LFB3:
	.loc 2 22 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 23 12
	movq	-8(%rbp), %rdx
	movl	$1, %eax
	negl	%eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	lock xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	.loc 2 23 39
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 2 24 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	atomic_dec_and_test, .-atomic_dec_and_test
	.type	atomic_inc_not_zero, @function
atomic_inc_not_zero:
.LFB4:
	.loc 2 27 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB4:
.LBB5:
	.loc 2 11 9
	movq	-8(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 2 11 7
	movl	%edx, -20(%rbp)
	.loc 2 12 11
	jmp	.L11
.L13:
	.loc 2 13 11
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L11:
	.loc 2 12 19
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L12
	.loc 2 12 65
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 2 12 29
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 2 12 27
	movl	%eax, -24(%rbp)
	.loc 2 12 19
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L13
.L12:
	.loc 2 14 12
	movl	-20(%rbp), %eax
.LBE5:
.LBE4:
	.loc 2 29 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	atomic_inc_not_zero, .-atomic_inc_not_zero
	.type	intr_enabled, @function
intr_enabled:
.LFB5:
	.file 3 "include/main/interrupt.h"
	.loc 3 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 3 84 5
#APP
# 84 "include/main/interrupt.h" 1
	pushf; pop %rax; and $0x200, %rax;
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	.loc 3 86 12
	movq	-8(%rbp), %rax
	.loc 3 87 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB6:
	.loc 3 89 34
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 89 36
#APP
# 89 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 3 89 61
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB7:
	.loc 3 91 35
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 91 37
#APP
# 91 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 3 91 62
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB8:
	.loc 3 98 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 105 5
#APP
# 105 "include/main/interrupt.h" 1
	sti; hlt
# 0 "" 2
	.loc 3 106 1
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	intr_wait, .-intr_wait
	.type	equals, @function
equals:
.LFB9:
	.file 4 "include/util/debug.h"
	.loc 4 280 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 281 14
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	.loc 4 282 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB10:
	.loc 4 284 39
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 284 50
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	.loc 4 284 56
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB11:
	.loc 4 286 38
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 286 49
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setl	%al
	movzbl	%al, %eax
	.loc 4 286 54
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB12:
	.loc 4 288 41
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 288 52
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setg	%al
	movzbl	%al, %eax
	.loc 4 288 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB13:
	.loc 4 290 40
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 290 51
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setle	%al
	movzbl	%al, %eax
	.loc 4 290 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB14:
	.loc 4 292 43
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 292 54
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setge	%al
	movzbl	%al, %eax
	.loc 4 292 60
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	greaterthaneq, .-greaterthaneq
	.globl	curproc
	.section	.csd,"aw"
	.align 8
	.type	curproc, @object
	.size	curproc, 8
curproc:
	.zero	8
	.data
	.align 16
	.type	proc_list, @object
	.size	proc_list, 16
proc_list:
	.quad	proc_list
	.quad	proc_list
	.local	proc_allocator
	.comm	proc_allocator,8,8
	.globl	idleproc
	.section	.csd
	.align 32
	.type	idleproc, @object
	.size	idleproc, 672
idleproc:
	.zero	672
	.local	proc_initproc
	.comm	proc_initproc,8,8
	.section	.rodata
.LC0:
	.string	"proc"
.LC1:
	.string	"proc_allocator"
.LC2:
	.string	"assertion failed: %s"
.LC3:
	.string	"proc/proc.c"
	.text
	.globl	proc_init
	.type	proc_init, @function
proc_init:
.LFB15:
	.loc 1 56 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 57 22
	movl	$672, %esi
	movabsq	$.LC0, %rax
	movq	%rax, %rdi
	movabsq	$slab_allocator_create, %rax
	call	*%rax
.LVL0:
	.loc 1 57 20
	movabsq	$proc_allocator, %rdx
	movq	%rax, (%rdx)
	.loc 1 58 5
	movabsq	$proc_allocator, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	.loc 1 58 5 is_stmt 0 discriminator 1
	movabsq	$.LC1, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.11, %rax
	movq	%rax, %rdx
	movl	$58, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL1:
.L35:
	.loc 1 59 1 is_stmt 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	proc_init, .-proc_init
	.section	.rodata
.LC4:
	.string	"idle%ld"
.LC5:
	.string	"%s"
.LC6:
	.string	"C%ld P%ld "
.LC7:
	.string	"%s:%d %s(): "
.LC8:
	.string	"created %s\n"
.LC9:
	.string	"\033[0m"
	.text
	.globl	proc_idleproc_init
	.type	proc_idleproc_init, @function
proc_idleproc_init:
.LFB16:
	.loc 1 66 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 67 13
	movabsq	$idleproc, %rax
	movq	%rax, -8(%rbp)
	.loc 1 69 17
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 70 5
	movq	-8(%rbp), %rax
	addq	$264, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL2:
	.loc 1 71 5
	movq	-8(%rbp), %rax
	addq	$280, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL3:
	.loc 1 72 19
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	.loc 1 74 5
	movq	-8(%rbp), %rax
	addq	$320, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL4:
	.loc 1 75 5
	movq	-8(%rbp), %rax
	addq	$304, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL5:
	.loc 1 77 20
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	.loc 1 78 19
	movq	-8(%rbp), %rax
	movl	$0, 344(%rax)
	.loc 1 80 12
	movq	-8(%rbp), %rax
	addq	$360, %rax
	.loc 1 80 5
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL6:
	.loc 1 82 20
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL7:
	.loc 1 82 18
	movq	-8(%rbp), %rdx
	movq	%rax, 352(%rdx)
	.loc 1 83 21
	movabsq	$vmmap_create, %rax
	call	*%rax
.LVL8:
	.loc 1 83 19
	movq	-8(%rbp), %rdx
	movq	%rax, 664(%rdx)
	.loc 1 85 17
	movq	-8(%rbp), %rax
	movq	$0, 640(%rax)
	.loc 1 87 16
	movq	-8(%rbp), %rax
	addq	$384, %rax
	.loc 1 87 5
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL9:
	.loc 1 90 5
	movabsq	$curcore, %rax
	movq	(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movabsq	$.LC4, %rdx
	movl	$8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$snprintf, %r8
	call	*%r8
.LVL10:
	.loc 1 91 17
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 91 5
	leaq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$strncpy, %rax
	call	*%rax
.LVL11:
	.loc 1 92 37
	movq	-8(%rbp), %rax
	movb	$0, 259(%rax)
	.loc 1 94 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L37
	.loc 1 94 5 is_stmt 0 discriminator 1
	movl	$2048, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL12:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL13:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L38
	.loc 1 94 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L39
.L38:
	.loc 1 94 5 discriminator 3
	movq	$-1, %rax
.L39:
	.loc 1 94 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL14:
	movabsq	$__func__.10, %rax
	movq	%rax, %rcx
	movl	$94, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL15:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	movabsq	$.LC8, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL16:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL17:
.L37:
	.loc 1 95 13 is_stmt 1
	movabsq	$curproc, %rax
	movabsq	$idleproc, %rcx
	movq	%rcx, (%rax)
	.loc 1 96 12
	movabsq	$curthr, %rax
	movq	$0, (%rax)
	.loc 1 97 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	proc_idleproc_init, .-proc_idleproc_init
	.data
	.align 4
	.type	next_pid, @object
	.size	next_pid, 4
next_pid:
	.long	1
	.section	.rodata
.LC10:
	.string	"pid"
	.text
	.type	_proc_getid, @function
_proc_getid:
.LFB17:
	.loc 1 108 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 109 11
	movabsq	$next_pid, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L41:
.LBB6:
	.loc 1 111 5
	movabsq	$proc_list, %rax
	movq	(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -24(%rbp)
	jmp	.L42
.L48:
	.loc 1 113 14
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 113 12
	cmpl	%eax, -4(%rbp)
	jne	.L43
	.loc 1 115 49
	cmpl	$65535, -4(%rbp)
	je	.L44
	.loc 1 115 49 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L45
.L44:
	.loc 1 115 49 discriminator 2
	movl	$1, %eax
.L45:
	.loc 1 115 17 is_stmt 1 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 116 21 discriminator 4
	movabsq	$next_pid, %rax
	movl	(%rax), %eax
	.loc 1 116 16 discriminator 4
	cmpl	%eax, -4(%rbp)
	jne	.L41
	.loc 1 118 24
	movl	$-1, %eax
	jmp	.L47
.L43:
	.loc 1 111 5 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -24(%rbp)
.L42:
	.loc 1 111 5 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	leaq	304(%rax), %rdx
	movabsq	$proc_list, %rax
	cmpq	%rax, %rdx
	jne	.L48
.LBE6:
	.loc 1 126 46 is_stmt 1
	cmpl	$65535, -4(%rbp)
	je	.L49
	.loc 1 126 46 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	.L50
.L49:
	.loc 1 126 46 discriminator 2
	movl	$1, %eax
.L50:
	.loc 1 126 14 is_stmt 1 discriminator 4
	movabsq	$next_pid, %rdx
	movl	%eax, (%rdx)
	.loc 1 127 5 discriminator 4
	cmpl	$0, -4(%rbp)
	jne	.L51
	.loc 1 127 5 is_stmt 0 discriminator 1
	movabsq	$.LC10, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.9, %rax
	movq	%rax, %rdx
	movl	$127, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL18:
.L51:
	.loc 1 128 12 is_stmt 1
	movl	-4(%rbp), %eax
.L47:
	.loc 1 129 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_proc_getid, .-_proc_getid
	.globl	proc_lookup
	.type	proc_lookup, @function
proc_lookup:
.LFB18:
	.loc 1 136 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 137 8
	cmpl	$0, -20(%rbp)
	jne	.L53
	.loc 1 139 16
	movabsq	$idleproc, %rax
	jmp	.L54
.L53:
.LBB7:
	.loc 1 141 5
	movabsq	$proc_list, %rax
	movq	(%rax), %rax
	subq	$304, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
	jmp	.L55
.L57:
	.loc 1 143 14
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 143 12
	cmpl	%eax, -20(%rbp)
	jne	.L56
	.loc 1 145 20
	movq	-8(%rbp), %rax
	jmp	.L54
.L56:
	.loc 1 141 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
.L55:
	.loc 1 141 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	304(%rax), %rdx
	movabsq	$proc_list, %rax
	cmpq	%rax, %rdx
	jne	.L57
.LBE7:
	.loc 1 148 12 is_stmt 1
	movl	$0, %eax
.L54:
	.loc 1 149 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	proc_lookup, .-proc_lookup
	.section	.rodata
	.align 8
.LC11:
	.string	"Could not allocate PID for new process.\n"
.LC12:
	.string	"pid != PID_IDLE"
	.align 8
.LC13:
	.string	"pid != PID_INIT || curproc->p_pid == PID_IDLE"
.LC14:
	.string	"!proc_initproc"
.LC15:
	.string	"unnamed"
.LC16:
	.string	"created P%d (%s)\n"
	.text
	.globl	proc_create
	.type	proc_create, @function
proc_create:
.LFB19:
	.loc 1 174 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 176 17
	movl	$0, %eax
	movabsq	$_proc_getid, %rdx
	call	*%rdx
.LVL19:
	movl	%eax, -12(%rbp)
	.loc 1 177 8
	cmpl	$0, -12(%rbp)
	jns	.L59
	.loc 1 179 9
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L60
	.loc 1 179 9 is_stmt 0 discriminator 1
	movl	$2048, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL20:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL21:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	.loc 1 179 9 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L62
.L61:
	.loc 1 179 9 discriminator 3
	movq	$-1, %rax
.L62:
	.loc 1 179 9 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL22:
	movabsq	$__func__.8, %rax
	movq	%rax, %rcx
	movl	$179, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL23:
	movabsq	$.LC11, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL24:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL25:
.L60:
	.loc 1 180 16 is_stmt 1
	movl	$0, %eax
	jmp	.L63
.L59:
	.loc 1 182 5
	cmpl	$0, -12(%rbp)
	jne	.L64
	.loc 1 182 5 is_stmt 0 discriminator 1
	movabsq	$.LC12, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.8, %rax
	movq	%rax, %rdx
	movl	$182, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL26:
.L64:
	.loc 1 183 5 is_stmt 1
	cmpl	$1, -12(%rbp)
	jne	.L65
	.loc 1 183 5 is_stmt 0 discriminator 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 183 5 discriminator 2
	movabsq	$.LC13, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.8, %rax
	movq	%rax, %rdx
	movl	$183, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL27:
.L65:
	.loc 1 185 20 is_stmt 1
	movabsq	$proc_allocator, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$slab_obj_alloc, %rax
	call	*%rax
.LVL28:
	movq	%rax, -24(%rbp)
	.loc 1 186 8
	cmpq	$0, -24(%rbp)
	jne	.L66
	.loc 1 187 16
	movl	$0, %eax
	jmp	.L63
.L66:
	.loc 1 189 17
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 191 20
	movl	$0, %eax
	movabsq	$pt_create, %rdx
	call	*%rdx
.LVL29:
	.loc 1 191 18
	movq	-24(%rbp), %rdx
	movq	%rax, 352(%rdx)
	.loc 1 192 14
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	.loc 1 192 8
	testq	%rax, %rax
	jne	.L67
	.loc 1 194 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$proc_destroy, %rax
	call	*%rax
.LVL30:
	.loc 1 195 16
	movl	$0, %eax
	jmp	.L63
.L67:
	.loc 1 198 5
	movq	-24(%rbp), %rax
	addq	$264, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL31:
	.loc 1 199 5
	movq	-24(%rbp), %rax
	addq	$280, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL32:
	.loc 1 200 19
	movabsq	$curproc, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 296(%rax)
	.loc 1 202 20
	movq	-24(%rbp), %rax
	movq	$0, 336(%rax)
	.loc 1 203 19
	movq	-24(%rbp), %rax
	movl	$0, 344(%rax)
	.loc 1 204 5
	movq	-24(%rbp), %rax
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$sched_queue_init, %rax
	call	*%rax
.LVL33:
	.loc 1 206 13
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 206 8
	testq	%rax, %rax
	je	.L68
	.loc 1 208 9
	movq	-24(%rbp), %rax
	leaq	320(%rax), %rdx
	.loc 1 208 31
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 208 9
	addq	$280, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL34:
.L68:
	.loc 1 211 5
	movq	-24(%rbp), %rax
	addq	$304, %rax
	movq	%rax, %rsi
	movabsq	$proc_list, %rax
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL35:
	.loc 1 213 13
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 213 8
	cmpl	$1, %eax
	jne	.L69
	.loc 1 215 9
	movabsq	$proc_initproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L70
	.loc 1 215 9 is_stmt 0 discriminator 1
	movabsq	$.LC14, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.8, %rax
	movq	%rax, %rdx
	movl	$215, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL36:
.L70:
	.loc 1 216 23 is_stmt 1
	movabsq	$proc_initproc, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
.L69:
	.loc 1 219 8
	cmpq	$0, -40(%rbp)
	jne	.L71
	.loc 1 221 14
	movabsq	$.LC15, %rax
	movq	%rax, -40(%rbp)
.L71:
	.loc 1 223 17
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 223 5
	movq	-40(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$strncpy, %rax
	call	*%rax
.LVL37:
	.loc 1 224 37
	movq	-24(%rbp), %rax
	movb	$0, 259(%rax)
	.loc 1 227 31
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 227 40
	leaq	384(%rax), %rcx
	.loc 1 227 16
	movq	-24(%rbp), %rax
	addq	$384, %rax
	.loc 1 227 5
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL38:
.LBB8:
	.loc 1 228 17
	movq	$0, -8(%rbp)
	.loc 1 228 5
	jmp	.L72
.L74:
	.loc 1 229 26
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	.loc 1 229 12
	testq	%rax, %rax
	je	.L73
	.loc 1 230 31
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	.loc 1 230 13
	movq	%rax, %rdi
	movabsq	$fref, %rax
	call	*%rax
.LVL39:
.L73:
	.loc 1 228 37 discriminator 2
	addq	$1, -8(%rbp)
.L72:
	.loc 1 228 26 discriminator 1
	cmpq	$31, -8(%rbp)
	jbe	.L74
.LBE8:
	.loc 1 232 16
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	.loc 1 232 8
	testq	%rax, %rax
	je	.L75
	.loc 1 234 22
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	.loc 1 234 9
	movq	%rax, %rdi
	movabsq	$vlock, %rax
	call	*%rax
.LVL40:
	.loc 1 235 35
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	640(%rax), %rdx
	.loc 1 235 26
	movq	-24(%rbp), %rax
	movq	%rdx, 640(%rax)
	.loc 1 235 18
	movq	-24(%rbp), %rax
	movq	640(%rax), %rax
	.loc 1 235 9
	movq	%rax, %rdi
	movabsq	$vref, %rax
	call	*%rax
.LVL41:
	.loc 1 236 24
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	.loc 1 236 9
	movq	%rax, %rdi
	movabsq	$vunlock, %rax
	call	*%rax
.LVL42:
	jmp	.L76
.L75:
	.loc 1 240 21
	movq	-24(%rbp), %rax
	movq	$0, 640(%rax)
.L76:
	.loc 1 254 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L77
	.loc 1 254 5 is_stmt 0 discriminator 1
	movl	$2048, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL43:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL44:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L78
	.loc 1 254 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L79
.L78:
	.loc 1 254 5 discriminator 3
	movq	$-1, %rax
.L79:
	.loc 1 254 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL45:
	movabsq	$__func__.8, %rax
	movq	%rax, %rcx
	movl	$254, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL46:
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movabsq	$.LC16, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL47:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL48:
.L77:
	.loc 1 255 12 is_stmt 1
	movq	-24(%rbp), %rax
.L63:
	.loc 1 258 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	proc_create, .-proc_create
	.section	.rodata
.LC17:
	.string	"1 <= curproc->p_pid"
.LC18:
	.string	"curproc->p_pproc"
	.align 8
.LC19:
	.string	"(curproc->p_pid != PID_INIT || list_empty(&curproc->p_children)) && \"caught init exiting with children\""
.LC20:
	.string	"child->p_pproc == curproc"
	.text
	.globl	proc_cleanup
	.type	proc_cleanup, @function
proc_cleanup:
.LFB20:
	.loc 1 278 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 280 5
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L81
	.loc 1 280 5 is_stmt 0 discriminator 1
	movabsq	$.LC17, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$280, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL49:
.L81:
	.loc 1 281 5 is_stmt 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	.loc 1 281 5 is_stmt 0 discriminator 1
	movabsq	$.LC18, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$281, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL50:
.L82:
.LBB9:
	.loc 1 284 14 is_stmt 1
	movl	$0, -4(%rbp)
	.loc 1 284 5
	jmp	.L83
.L84:
	.loc 1 286 9 discriminator 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movabsq	$do_close, %rax
	call	*%rax
.LVL51:
	.loc 1 284 37 discriminator 3
	addl	$1, -4(%rbp)
.L83:
	.loc 1 284 25 discriminator 1
	cmpl	$31, -4(%rbp)
	jle	.L84
.LBE9:
	.loc 1 288 16
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	.loc 1 288 8
	testq	%rax, %rax
	je	.L85
	.loc 1 290 22
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 290 14
	addq	$640, %rax
	.loc 1 290 9
	movq	%rax, %rdi
	movabsq	$vput, %rax
	call	*%rax
.LVL52:
.L85:
	.loc 1 298 5
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L86
	.loc 1 298 5 is_stmt 0 discriminator 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	addq	$280, %rax
	movq	%rax, %rdi
	movabsq	$list_empty, %rax
	call	*%rax
.LVL53:
	testq	%rax, %rax
	jne	.L86
	.loc 1 298 5 discriminator 5
	movabsq	$.LC19, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$298, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL54:
.L86:
	.loc 1 300 16 is_stmt 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	.loc 1 300 8
	cmpl	$1, %eax
	je	.L87
.LBB10:
	.loc 1 302 9
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	subq	$320, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -24(%rbp)
	jmp	.L88
.L90:
	.loc 1 304 13
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdx
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L89
	.loc 1 304 13 is_stmt 0 discriminator 1
	movabsq	$.LC20, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$304, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL55:
.L89:
	.loc 1 305 28 is_stmt 1 discriminator 2
	movabsq	$proc_initproc, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 296(%rax)
	.loc 1 306 13 discriminator 2
	movq	-16(%rbp), %rax
	addq	$320, %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL56:
	.loc 1 307 13 discriminator 2
	movq	-16(%rbp), %rax
	leaq	320(%rax), %rdx
	.loc 1 307 46 discriminator 2
	movabsq	$proc_initproc, %rax
	movq	(%rax), %rax
	.loc 1 307 32 discriminator 2
	addq	$280, %rax
	.loc 1 307 13 discriminator 2
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_insert_before, %rax
	call	*%rax
.LVL57:
	.loc 1 302 9 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -24(%rbp)
.L88:
	.loc 1 302 9 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	leaq	320(%rax), %rdx
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	addq	$280, %rax
	cmpq	%rax, %rdx
	jne	.L90
.L87:
.LBE10:
	.loc 1 312 12 is_stmt 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 312 22
	movl	$1, 344(%rax)
	.loc 1 313 12
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 313 23
	movq	-40(%rbp), %rdx
	movq	%rdx, 336(%rax)
	.loc 1 315 5
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	.loc 1 315 5 is_stmt 0 discriminator 1
	movabsq	$.LC18, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$315, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL58:
.L91:
	.loc 1 317 16 is_stmt 1
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	.loc 1 317 8
	cmpl	$1, %eax
	jne	.L93
	.loc 1 319 9
	movl	$0, %eax
	movabsq	$initproc_finish, %rdx
	call	*%rdx
.LVL59:
.L93:
	.loc 1 322 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	proc_cleanup, .-proc_cleanup
	.section	.rodata
.LC21:
	.string	"mutex: %p\n"
	.align 8
.LC22:
	.string	"list_empty(&curthr->kt_mutexes)"
.LC23:
	.string	"!curthr->kt_wchan"
	.align 8
.LC24:
	.string	"!list_link_is_linked(&curthr->kt_qlink)"
.LC25:
	.string	"curthr->kt_proc == curproc"
	.align 8
.LC26:
	.string	"!preemption_enabled() && curthr->kt_state == KT_EXITED"
	.text
	.globl	proc_thread_exiting
	.type	proc_thread_exiting, @function
proc_thread_exiting:
.LFB21:
	.loc 1 339 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 342 5
	movl	$0, %eax
	movabsq	$preemption_disable, %rdx
	call	*%rdx
.LVL60:
	.loc 1 343 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$proc_cleanup, %rax
	call	*%rax
.LVL61:
.LBB11:
	.loc 1 345 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	136(%rax), %rax
	subq	$32, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	subq	$32, %rax
	movq	%rax, -16(%rbp)
	jmp	.L95
.L99:
	.loc 1 347 9
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L96
	.loc 1 347 9 is_stmt 0 discriminator 1
	movl	$16384, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL62:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL63:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L97
	.loc 1 347 9 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L98
.L97:
	.loc 1 347 9 discriminator 3
	movq	$-1, %rax
.L98:
	.loc 1 347 9 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL64:
	movabsq	$__func__.6, %rax
	movq	%rax, %rcx
	movl	$347, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL65:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movabsq	$.LC21, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL66:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL67:
.L96:
	.loc 1 345 5 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	subq	$32, %rax
	movq	%rax, -16(%rbp)
.L95:
	.loc 1 345 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	addq	$136, %rax
	cmpq	%rax, %rdx
	jne	.L99
.LBE11:
	.loc 1 350 5 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	movabsq	$list_empty, %rax
	call	*%rax
.LVL68:
	testq	%rax, %rax
	jne	.L100
	.loc 1 350 5 is_stmt 0 discriminator 1
	movabsq	$.LC22, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$350, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL69:
.L100:
	.loc 1 351 5 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L101
	.loc 1 351 5 is_stmt 0 discriminator 1
	movabsq	$.LC23, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$351, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL70:
.L101:
	.loc 1 352 5 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	movabsq	$list_link_is_linked, %rax
	call	*%rax
.LVL71:
	testq	%rax, %rax
	je	.L102
	.loc 1 352 5 is_stmt 0 discriminator 1
	movabsq	$.LC24, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$352, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL72:
.L102:
	.loc 1 353 5 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L103
	.loc 1 353 5 is_stmt 0 discriminator 1
	movabsq	$.LC25, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$353, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL73:
.L103:
	.loc 1 355 11 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 355 22
	movl	$5, 96(%rax)
	.loc 1 356 11
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 356 23
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	.loc 1 358 32
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	.loc 1 358 5
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$sched_broadcast_on, %rax
	call	*%rax
.LVL74:
	.loc 1 360 5
	movl	$0, %eax
	movabsq	$preemption_enabled, %rdx
	call	*%rdx
.LVL75:
	testq	%rax, %rax
	jne	.L104
	.loc 1 360 5 is_stmt 0 discriminator 2
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$5, %eax
	je	.L105
.L104:
	.loc 1 360 5 discriminator 3
	movabsq	$.LC26, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$360, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL76:
.L105:
	.loc 1 362 5 is_stmt 1
	movl	$0, %edi
	movabsq	$sched_switch, %rax
	call	*%rax
.LVL77:
	.loc 1 364 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	proc_thread_exiting, .-proc_thread_exiting
	.section	.rodata
.LC27:
	.string	"curproc && curproc != proc"
	.text
	.globl	proc_kill
	.type	proc_kill, @function
proc_kill:
.LFB22:
	.loc 1 373 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 375 5
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
	.loc 1 375 5 is_stmt 0 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L108
.L107:
	.loc 1 375 5 discriminator 3
	movabsq	$.LC27, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.5, %rax
	movq	%rax, %rdx
	movl	$375, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL78:
.L108:
.LBB12:
	.loc 1 377 5 is_stmt 1
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	subq	$104, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	subq	$104, %rax
	movq	%rax, -16(%rbp)
	jmp	.L109
.L110:
	.loc 1 379 9 discriminator 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$kthread_cancel, %rax
	call	*%rax
.LVL79:
	.loc 1 377 5 discriminator 3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	subq	$104, %rax
	movq	%rax, -16(%rbp)
.L109:
	.loc 1 377 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$264, %rax
	cmpq	%rax, %rdx
	jne	.L110
.LBE12:
	.loc 1 382 1 is_stmt 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	proc_kill, .-proc_kill
	.globl	proc_kill_all
	.type	proc_kill_all, @function
proc_kill_all:
.LFB23:
	.loc 1 395 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB13:
	.loc 1 397 5
	movabsq	$proc_list, %rax
	movq	(%rax), %rax
	subq	$304, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
	jmp	.L112
.L114:
	.loc 1 399 18
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 399 12
	cmpq	%rax, -8(%rbp)
	je	.L113
	.loc 1 399 36 discriminator 1
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 399 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 399 29 discriminator 1
	testl	%eax, %eax
	je	.L113
	.loc 1 401 13
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	movabsq	$proc_kill, %rax
	call	*%rax
.LVL80:
.L113:
	.loc 1 397 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
.L112:
	.loc 1 397 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	304(%rax), %rdx
	movabsq	$proc_list, %rax
	cmpq	%rax, %rdx
	jne	.L114
.LBE13:
	.loc 1 405 5 is_stmt 1
	movl	$0, %edi
	movabsq	$do_exit, %rax
	call	*%rax
.LVL81:
	.loc 1 407 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	proc_kill_all, .-proc_kill_all
	.section	.rodata
.LC28:
	.string	"destroying P%d\n"
.LC29:
	.string	"proc->p_pml4"
	.text
	.globl	proc_destroy
	.type	proc_destroy, @function
proc_destroy:
.LFB24:
	.loc 1 418 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 419 5
	movq	-40(%rbp), %rax
	addq	$304, %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL82:
.LBB14:
	.loc 1 421 5
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	subq	$104, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	subq	$104, %rax
	movq	%rax, -16(%rbp)
	jmp	.L116
.L117:
	.loc 1 423 9 discriminator 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$kthread_destroy, %rax
	call	*%rax
.LVL83:
	.loc 1 421 5 discriminator 3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	subq	$104, %rax
	movq	%rax, -16(%rbp)
.L116:
	.loc 1 421 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$264, %rax
	cmpq	%rax, %rdx
	jne	.L117
.LBE14:
.LBB15:
	.loc 1 427 14 is_stmt 1
	movl	$0, -20(%rbp)
	.loc 1 427 5
	jmp	.L118
.L120:
	.loc 1 429 26
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	.loc 1 429 12
	testq	%rax, %rax
	je	.L119
	.loc 1 430 18
	movq	-40(%rbp), %rax
	leaq	384(%rax), %rdx
	.loc 1 430 32
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	.loc 1 430 13
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$fput, %rax
	call	*%rax
.LVL84:
.L119:
	.loc 1 427 37 discriminator 2
	addl	$1, -20(%rbp)
.L118:
	.loc 1 427 25 discriminator 1
	cmpl	$31, -20(%rbp)
	jle	.L120
.LBE15:
	.loc 1 432 13
	movq	-40(%rbp), %rax
	movq	640(%rax), %rax
	.loc 1 432 8
	testq	%rax, %rax
	je	.L121
	.loc 1 434 14
	movq	-40(%rbp), %rax
	addq	$640, %rax
	.loc 1 434 9
	movq	%rax, %rdi
	movabsq	$vput, %rax
	call	*%rax
.LVL85:
.L121:
	.loc 1 443 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L122
	.loc 1 443 5 is_stmt 0 discriminator 1
	movl	$8388608, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL86:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL87:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L123
	.loc 1 443 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L124
.L123:
	.loc 1 443 5 discriminator 3
	movq	$-1, %rax
.L124:
	.loc 1 443 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL88:
	movabsq	$__func__.4, %rax
	movq	%rax, %rcx
	movl	$443, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL89:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movabsq	$.LC28, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL90:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL91:
.L122:
	.loc 1 445 5 is_stmt 1
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	.loc 1 445 5 is_stmt 0 discriminator 1
	movabsq	$.LC29, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.4, %rax
	movq	%rax, %rdx
	movl	$445, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL92:
.L125:
	.loc 1 446 5 is_stmt 1
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	movabsq	$pt_destroy, %rax
	call	*%rax
.LVL93:
	.loc 1 448 5
	movabsq	$proc_allocator, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$slab_obj_free, %rax
	call	*%rax
.LVL94:
	.loc 1 449 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	proc_destroy, .-proc_destroy
	.section	.rodata
	.align 8
.LC30:
	.string	"-1 == pid || proc->p_pid == pid"
	.text
	.globl	do_waitpid
	.type	do_waitpid, @function
do_waitpid:
.LFB25:
	.loc 1 480 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	.loc 1 483 8
	cmpl	$0, -36(%rbp)
	je	.L127
	.loc 1 483 14 discriminator 1
	cmpl	$-1, -36(%rbp)
	jl	.L127
	.loc 1 483 26 discriminator 2
	cmpl	$0, -40(%rbp)
	je	.L128
.L127:
	.loc 1 485 16
	movl	$-95, %eax
	jmp	.L129
.L128:
	.loc 1 488 13
	movq	$0, -8(%rbp)
.L138:
.LBB16:
	.loc 1 491 14
	movq	$0, -16(%rbp)
.LBB17:
	.loc 1 492 9
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	subq	$320, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -32(%rbp)
	jmp	.L130
.L137:
	.loc 1 494 26
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 494 16
	cmpl	%eax, -36(%rbp)
	jne	.L131
	.loc 1 496 30
	movq	-24(%rbp), %rax
	movl	344(%rax), %eax
	.loc 1 496 20
	cmpl	$1, %eax
	jne	.L142
	.loc 1 498 26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 499 21
	jmp	.L133
.L131:
	.loc 1 503 21
	cmpl	$-1, -36(%rbp)
	jne	.L135
	.loc 1 505 30
	movq	-24(%rbp), %rax
	movl	344(%rax), %eax
	.loc 1 505 20
	cmpl	$1, %eax
	jne	.L136
	.loc 1 507 26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 508 21
	jmp	.L133
.L136:
	.loc 1 510 23
	movq	$1, -16(%rbp)
.L135:
	.loc 1 492 9 discriminator 2
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -32(%rbp)
.L130:
	.loc 1 492 9 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	leaq	320(%rax), %rdx
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	addq	$280, %rax
	cmpq	%rax, %rdx
	jne	.L137
.LBE17:
	.loc 1 514 12 is_stmt 1
	cmpq	$0, -16(%rbp)
	jne	.L143
	.loc 1 516 20
	movl	$-10, %eax
	jmp	.L129
.L142:
.LBB18:
	.loc 1 501 17
	nop
	jmp	.L134
.L143:
.LBE18:
	.loc 1 518 5
	nop
.L134:
	.loc 1 519 32
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 519 9
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$sched_sleep_on, %rax
	call	*%rax
.LVL95:
.LBE16:
	.loc 1 490 5
	jmp	.L138
.L133:
	.loc 1 524 5
	cmpq	$0, -8(%rbp)
	jne	.L139
	.loc 1 524 5 is_stmt 0 discriminator 1
	movabsq	$.LC0, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$524, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL96:
.L139:
	.loc 1 525 5 is_stmt 1
	movq	-8(%rbp), %rax
	addq	$320, %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL97:
	.loc 1 527 5
	cmpl	$-1, -36(%rbp)
	je	.L140
	.loc 1 527 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L140
	.loc 1 527 5 discriminator 2
	movabsq	$.LC30, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$527, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL98:
.L140:
	.loc 1 528 9 is_stmt 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 1 529 8
	cmpq	$0, -48(%rbp)
	je	.L141
	.loc 1 530 29
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	.loc 1 530 19
	movzbl	%al, %edx
	.loc 1 530 17
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L141:
	.loc 1 533 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$proc_destroy, %rax
	call	*%rax
.LVL99:
	.loc 1 535 12
	movl	-36(%rbp), %eax
.L129:
	.loc 1 538 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	do_waitpid, .-do_waitpid
	.section	.rodata
.LC31:
	.string	"exiting with status %lu\n"
	.text
	.globl	do_exit
	.type	do_exit, @function
do_exit:
.LFB26:
	.loc 1 546 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 548 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L145
	.loc 1 548 5 is_stmt 0 discriminator 1
	movl	$2048, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL100:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL101:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L146
	.loc 1 548 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L147
.L146:
	.loc 1 548 5 discriminator 3
	movq	$-1, %rax
.L147:
	.loc 1 548 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL102:
	movabsq	$__func__.2, %rax
	movq	%rax, %rcx
	movl	$548, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL103:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movabsq	$.LC31, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL104:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL105:
.L145:
	.loc 1 549 5 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$kthread_exit, %rax
	call	*%rax
.LVL106:
	.loc 1 551 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	do_exit, .-do_exit
	.section	.rodata
.LC32:
	.string	"NULL != p"
.LC33:
	.string	"NULL != buf"
.LC34:
	.string	"pid:          %i\n"
.LC35:
	.string	"name:         %s\n"
.LC36:
	.string	"parent:       %i (%s)\n"
.LC37:
	.string	"parent:       -\n"
.LC38:
	.string	"children:     -\n"
.LC39:
	.string	"children:\n"
.LC40:
	.string	"     %i (%s)\n"
.LC41:
	.string	"status:       %ld\n"
.LC42:
	.string	"state:        %i\n"
	.text
	.globl	proc_info
	.type	proc_info, @function
proc_info:
.LFB27:
	.loc 1 558 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 559 19
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 560 12
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 563 5
	cmpq	$0, -24(%rbp)
	jne	.L149
	.loc 1 563 5 is_stmt 0 discriminator 1
	movabsq	$.LC32, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$563, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL107:
.L149:
	.loc 1 564 5 is_stmt 1
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L150
	.loc 1 564 5 is_stmt 0 discriminator 1
	movabsq	$.LC33, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$564, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL108:
.L150:
	.loc 1 566 49 is_stmt 1
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 566 5
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edx, %ecx
	movabsq	$.LC34, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r8
	call	*%r8
.LVL109:
	.loc 1 567 49
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 567 5
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movabsq	$.LC35, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r8
	call	*%r8
.LVL110:
	.loc 1 568 18
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 568 8
	testq	%rax, %rax
	je	.L151
	.loc 1 571 18
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 571 27
	leaq	4(%rax), %rcx
	.loc 1 570 58
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 570 9
	movl	(%rax), %edx
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movabsq	$.LC36, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r9
	call	*%r9
.LVL111:
	jmp	.L152
.L151:
	.loc 1 575 9
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movabsq	$.LC37, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %rcx
	call	*%rcx
.LVL112:
.L152:
	.loc 1 578 9
	movq	-24(%rbp), %rax
	addq	$280, %rax
	movq	%rax, %rdi
	movabsq	$list_empty, %rax
	call	*%rax
.LVL113:
	.loc 1 578 8
	testq	%rax, %rax
	je	.L153
	.loc 1 580 9
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movabsq	$.LC38, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %rcx
	call	*%rcx
.LVL114:
	jmp	.L154
.L153:
	.loc 1 584 9
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movabsq	$.LC39, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %rcx
	call	*%rcx
.LVL115:
.L154:
.LBB19:
	.loc 1 586 5
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	subq	$320, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -16(%rbp)
	jmp	.L155
.L156:
	.loc 1 588 67 discriminator 3
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 588 9 discriminator 3
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movabsq	$.LC40, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r9
	call	*%r9
.LVL116:
	.loc 1 586 5 discriminator 3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	subq	$320, %rax
	movq	%rax, -16(%rbp)
.L155:
	.loc 1 586 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$280, %rax
	cmpq	%rax, %rdx
	jne	.L156
.LBE19:
	.loc 1 591 50 is_stmt 1
	movq	-24(%rbp), %rax
	movq	336(%rax), %rdx
	.loc 1 591 5
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movabsq	$.LC41, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r8
	call	*%r8
.LVL117:
	.loc 1 592 49
	movq	-24(%rbp), %rax
	movl	344(%rax), %edx
	.loc 1 592 5
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movl	%edx, %ecx
	movabsq	$.LC42, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r8
	call	*%r8
.LVL118:
	.loc 1 614 12
	movq	-32(%rbp), %rax
	.loc 1 615 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	proc_info, .-proc_info
	.section	.rodata
.LC43:
	.string	"NULL == arg"
.LC44:
	.string	"PARENT"
.LC45:
	.string	"NAME"
.LC46:
	.string	"PID"
.LC47:
	.string	"%5s %-13s %-s\n"
.LC48:
	.string	"%3i (%s)"
.LC49:
	.string	"  -"
.LC50:
	.string	" %3i  %-13s %-s\n"
	.text
	.globl	proc_list_info
	.type	proc_list_info, @function
proc_list_info:
.LFB28:
	.loc 1 618 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	.loc 1 619 12
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 621 5
	cmpq	$0, -104(%rbp)
	je	.L159
	.loc 1 621 5 is_stmt 0 discriminator 1
	movabsq	$.LC43, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$621, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL119:
.L159:
	.loc 1 622 5 is_stmt 1
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L160
	.loc 1 622 5 is_stmt 0 discriminator 1
	movabsq	$.LC33, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$622, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL120:
.L160:
	.loc 1 628 5 is_stmt 1
	leaq	-24(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movabsq	$.LC44, %r9
	movabsq	$.LC45, %r8
	movabsq	$.LC46, %rdx
	movq	%rdx, %rcx
	movabsq	$.LC47, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r10
	call	*%r10
.LVL121:
.LBB20:
	.loc 1 631 5
	movabsq	$proc_list, %rax
	movq	(%rax), %rax
	subq	$304, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
	jmp	.L161
.L164:
.LBB21:
	.loc 1 634 22
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 634 12
	testq	%rax, %rax
	je	.L162
	.loc 1 637 23
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 637 32
	leaq	4(%rax), %rcx
	.loc 1 636 59
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	.loc 1 636 13
	movl	(%rax), %edx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movabsq	$.LC48, %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$snprintf, %r9
	call	*%r9
.LVL122:
	jmp	.L163
.L162:
	.loc 1 641 13
	leaq	-96(%rbp), %rax
	movabsq	$.LC49, %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$snprintf, %rcx
	call	*%rcx
.LVL123:
.L163:
	.loc 1 658 62 discriminator 2
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdi
	.loc 1 658 9 discriminator 2
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	leaq	-96(%rbp), %rcx
	leaq	-24(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movl	%edx, %ecx
	movabsq	$.LC50, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$iprintf, %r10
	call	*%r10
.LVL124:
.LBE21:
	.loc 1 631 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	subq	$304, %rax
	movq	%rax, -16(%rbp)
.L161:
	.loc 1 631 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	304(%rax), %rdx
	movabsq	$proc_list, %rax
	cmpq	%rax, %rdx
	jne	.L164
.LBE20:
	.loc 1 661 12 is_stmt 1
	movq	-24(%rbp), %rax
	.loc 1 662 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	proc_list_info, .-proc_list_info
	.section	.rodata
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 10
__func__.11:
	.string	"proc_init"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 19
__func__.10:
	.string	"proc_idleproc_init"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 12
__func__.9:
	.string	"_proc_getid"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 12
__func__.8:
	.string	"proc_create"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 13
__func__.7:
	.string	"proc_cleanup"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"proc_thread_exiting"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 10
__func__.5:
	.string	"proc_kill"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"proc_destroy"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"do_waitpid"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 8
__func__.2:
	.string	"do_exit"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 10
__func__.1:
	.string	"proc_info"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"proc_list_info"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/fs/file.h"
	.file 7 "include/fs/vnode.h"
	.file 8 "include/util/list.h"
	.file 9 "include/proc/sched.h"
	.file 10 "include/proc/kmutex.h"
	.file 11 "include/proc/kthread.h"
	.file 12 "include/fs/vfs.h"
	.file 13 "include/util/btree.h"
	.file 14 "include/mm/pframe.h"
	.file 15 "include/mm/mobj.h"
	.file 16 "include/drivers/blockdev.h"
	.file 17 "include/drivers/chardev.h"
	.file 18 "include/fs/dirent.h"
	.file 19 "include/fs/stat.h"
	.file 20 "include/vm/vmmap.h"
	.file 21 "include/proc/proc.h"
	.file 22 "include/mm/pagetable.h"
	.file 23 "include/proc/context.h"
	.file 24 "include/proc/core.h"
	.file 25 "include/globals.h"
	.file 26 "include/mm/slab.h"
	.file 27 "include/util/printf.h"
	.file 28 "include/fs/vfs_syscall.h"
	.file 29 "include/util/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x26bb
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1063
	.byte	0xc
	.long	.LASF1064
	.long	.LASF1065
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF760
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF761
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF762
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF763
	.uleb128 0x3
	.long	.LASF764
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x59
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF765
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF766
	.uleb128 0x3
	.long	.LASF767
	.byte	0x5
	.byte	0x10
	.byte	0x15
	.long	0x7f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF768
	.uleb128 0x3
	.long	.LASF769
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF770
	.uleb128 0x3
	.long	.LASF771
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x92
	.uleb128 0x3
	.long	.LASF772
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x86
	.uleb128 0x3
	.long	.LASF773
	.byte	0x5
	.byte	0x15
	.byte	0x11
	.long	0x73
	.uleb128 0x3
	.long	.LASF774
	.byte	0x5
	.byte	0x16
	.byte	0x11
	.long	0x73
	.uleb128 0x3
	.long	.LASF775
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x4d
	.uleb128 0x3
	.long	.LASF776
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.long	0x60
	.uleb128 0x3
	.long	.LASF777
	.byte	0x5
	.byte	0x1b
	.byte	0x12
	.long	0x60
	.uleb128 0x3
	.long	.LASF778
	.byte	0x5
	.byte	0x1c
	.byte	0x12
	.long	0x60
	.uleb128 0x5
	.long	.LASF783
	.byte	0x20
	.byte	0x6
	.byte	0xc
	.byte	0x10
	.long	0x13b
	.uleb128 0x6
	.long	.LASF779
	.byte	0x6
	.byte	0x13
	.byte	0xc
	.long	0xa5
	.byte	0
	.uleb128 0x6
	.long	.LASF780
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF781
	.byte	0x6
	.byte	0x20
	.byte	0xc
	.long	0xa5
	.byte	0x10
	.uleb128 0x6
	.long	.LASF782
	.byte	0x6
	.byte	0x25
	.byte	0x13
	.long	0x1e7
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF784
	.byte	0xd8
	.byte	0x7
	.byte	0xb1
	.byte	0x10
	.long	0x1e7
	.uleb128 0x6
	.long	.LASF785
	.byte	0x7
	.byte	0xb7
	.byte	0x17
	.long	0xca5
	.byte	0
	.uleb128 0x6
	.long	.LASF786
	.byte	0x7
	.byte	0xbe
	.byte	0x10
	.long	0x3cf
	.byte	0x8
	.uleb128 0x6
	.long	.LASF787
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.long	0x62c
	.byte	0x10
	.uleb128 0x6
	.long	.LASF788
	.byte	0x7
	.byte	0xd5
	.byte	0xb
	.long	0xe1
	.byte	0x88
	.uleb128 0x6
	.long	.LASF789
	.byte	0x7
	.byte	0xda
	.byte	0x9
	.long	0x59
	.byte	0x8c
	.uleb128 0x6
	.long	.LASF790
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.long	0xa5
	.byte	0x90
	.uleb128 0x6
	.long	.LASF791
	.byte	0x7
	.byte	0xe8
	.byte	0xb
	.long	0x205
	.byte	0x98
	.uleb128 0x6
	.long	.LASF792
	.byte	0x7
	.byte	0xee
	.byte	0xd
	.long	0xed
	.byte	0xa0
	.uleb128 0x6
	.long	.LASF793
	.byte	0x7
	.byte	0xf6
	.byte	0x9
	.long	0x59
	.byte	0xa4
	.uleb128 0x6
	.long	.LASF794
	.byte	0x7
	.byte	0xfb
	.byte	0xf
	.long	0x27f
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF795
	.byte	0x7
	.value	0x100
	.byte	0x7
	.long	0xc83
	.byte	0xc0
	.uleb128 0x7
	.long	.LASF796
	.byte	0x7
	.value	0x103
	.byte	0x11
	.long	0x246
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x13b
	.uleb128 0x3
	.long	.LASF797
	.byte	0x6
	.byte	0x26
	.byte	0x3
	.long	0xf9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF798
	.uleb128 0x9
	.long	0x1f9
	.uleb128 0xa
	.byte	0x8
	.uleb128 0x5
	.long	.LASF799
	.byte	0x10
	.byte	0x8
	.byte	0x5e
	.byte	0x10
	.long	0x22f
	.uleb128 0x6
	.long	.LASF800
	.byte	0x8
	.byte	0x60
	.byte	0x12
	.long	0x22f
	.byte	0
	.uleb128 0x6
	.long	.LASF801
	.byte	0x8
	.byte	0x61
	.byte	0x12
	.long	0x22f
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x207
	.uleb128 0x3
	.long	.LASF802
	.byte	0x8
	.byte	0x62
	.byte	0x3
	.long	0x207
	.uleb128 0x9
	.long	0x235
	.uleb128 0x3
	.long	.LASF803
	.byte	0x8
	.byte	0x62
	.byte	0xb
	.long	0x207
	.uleb128 0x9
	.long	0x246
	.uleb128 0x5
	.long	.LASF804
	.byte	0x18
	.byte	0x9
	.byte	0xf
	.byte	0x10
	.long	0x27f
	.uleb128 0x6
	.long	.LASF805
	.byte	0x9
	.byte	0x11
	.byte	0xc
	.long	0x235
	.byte	0
	.uleb128 0x6
	.long	.LASF806
	.byte	0x9
	.byte	0x12
	.byte	0xc
	.long	0xa5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF807
	.byte	0x9
	.byte	0x13
	.byte	0x3
	.long	0x257
	.uleb128 0x5
	.long	.LASF808
	.byte	0x30
	.byte	0xa
	.byte	0xa
	.byte	0x10
	.long	0x2c0
	.uleb128 0x6
	.long	.LASF809
	.byte	0xa
	.byte	0xc
	.byte	0xf
	.long	0x27f
	.byte	0
	.uleb128 0x6
	.long	.LASF810
	.byte	0xa
	.byte	0xd
	.byte	0x15
	.long	0x36a
	.byte	0x18
	.uleb128 0x6
	.long	.LASF811
	.byte	0xa
	.byte	0xe
	.byte	0x11
	.long	0x246
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF812
	.byte	0xa0
	.byte	0xb
	.byte	0x21
	.byte	0x10
	.long	0x36a
	.uleb128 0x6
	.long	.LASF813
	.byte	0xb
	.byte	0x23
	.byte	0xf
	.long	0xe7f
	.byte	0
	.uleb128 0x6
	.long	.LASF814
	.byte	0xb
	.byte	0x24
	.byte	0xb
	.long	0x761
	.byte	0x30
	.uleb128 0x6
	.long	.LASF815
	.byte	0xb
	.byte	0x25
	.byte	0xb
	.long	0x205
	.byte	0x38
	.uleb128 0x6
	.long	.LASF816
	.byte	0xb
	.byte	0x26
	.byte	0xa
	.long	0x7f
	.byte	0x40
	.uleb128 0x6
	.long	.LASF817
	.byte	0xb
	.byte	0x27
	.byte	0x12
	.long	0xdcd
	.byte	0x48
	.uleb128 0x6
	.long	.LASF818
	.byte	0xb
	.byte	0x29
	.byte	0xa
	.long	0x7f
	.byte	0x50
	.uleb128 0x6
	.long	.LASF819
	.byte	0xb
	.byte	0x2a
	.byte	0x10
	.long	0xecd
	.byte	0x58
	.uleb128 0x6
	.long	.LASF820
	.byte	0xb
	.byte	0x2b
	.byte	0x15
	.long	0xf12
	.byte	0x60
	.uleb128 0x6
	.long	.LASF821
	.byte	0xb
	.byte	0x2d
	.byte	0x11
	.long	0x246
	.byte	0x68
	.uleb128 0x6
	.long	.LASF822
	.byte	0xb
	.byte	0x2f
	.byte	0x9
	.long	0x246
	.byte	0x78
	.uleb128 0x6
	.long	.LASF823
	.byte	0xb
	.byte	0x31
	.byte	0xc
	.long	0x235
	.byte	0x88
	.uleb128 0x6
	.long	.LASF824
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.long	0x86
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2c0
	.uleb128 0x3
	.long	.LASF825
	.byte	0xa
	.byte	0xf
	.byte	0x3
	.long	0x28b
	.uleb128 0x5
	.long	.LASF826
	.byte	0x20
	.byte	0xc
	.byte	0x13
	.byte	0x10
	.long	0x3be
	.uleb128 0x6
	.long	.LASF827
	.byte	0xc
	.byte	0x19
	.byte	0xc
	.long	0x457
	.byte	0
	.uleb128 0x6
	.long	.LASF828
	.byte	0xc
	.byte	0x1f
	.byte	0xc
	.long	0x457
	.byte	0x8
	.uleb128 0x6
	.long	.LASF829
	.byte	0xc
	.byte	0x27
	.byte	0xc
	.long	0x46d
	.byte	0x10
	.uleb128 0x6
	.long	.LASF830
	.byte	0xc
	.byte	0x29
	.byte	0xc
	.long	0x47f
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	0x3cf
	.uleb128 0xc
	.long	0x3cf
	.uleb128 0xc
	.long	0x1e7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3d5
	.uleb128 0xd
	.string	"fs"
	.byte	0xd0
	.byte	0xc
	.byte	0x31
	.byte	0x10
	.long	0x457
	.uleb128 0x6
	.long	.LASF831
	.byte	0xc
	.byte	0x38
	.byte	0xa
	.long	0x491
	.byte	0
	.uleb128 0x6
	.long	.LASF832
	.byte	0xc
	.byte	0x3f
	.byte	0xa
	.long	0x491
	.byte	0x20
	.uleb128 0x6
	.long	.LASF826
	.byte	0xc
	.byte	0x59
	.byte	0xf
	.long	0x4a1
	.byte	0x40
	.uleb128 0x6
	.long	.LASF833
	.byte	0xc
	.byte	0x60
	.byte	0x13
	.long	0x1e7
	.byte	0x48
	.uleb128 0x6
	.long	.LASF834
	.byte	0xc
	.byte	0x63
	.byte	0xb
	.long	0x205
	.byte	0x50
	.uleb128 0x6
	.long	.LASF835
	.byte	0xc
	.byte	0x65
	.byte	0x1c
	.long	0x4ad
	.byte	0x58
	.uleb128 0x6
	.long	.LASF836
	.byte	0xc
	.byte	0x66
	.byte	0xc
	.long	0x235
	.byte	0x60
	.uleb128 0x6
	.long	.LASF837
	.byte	0xc
	.byte	0x67
	.byte	0xe
	.long	0x370
	.byte	0x70
	.uleb128 0x6
	.long	.LASF838
	.byte	0xc
	.byte	0x68
	.byte	0xe
	.long	0x370
	.byte	0xa0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3be
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x46d
	.uleb128 0xc
	.long	0x3cf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x45d
	.uleb128 0xb
	.byte	0x1
	.long	0x47f
	.uleb128 0xc
	.long	0x3cf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x473
	.uleb128 0x3
	.long	.LASF839
	.byte	0xc
	.byte	0x2a
	.byte	0x3
	.long	0x37c
	.uleb128 0xf
	.long	0x1f9
	.long	0x4a1
	.uleb128 0x10
	.long	0x92
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x485
	.uleb128 0x11
	.long	.LASF1066
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x4a7
	.uleb128 0x3
	.long	.LASF840
	.byte	0x2
	.byte	0x4
	.byte	0xd
	.long	0x59
	.uleb128 0x5
	.long	.LASF841
	.byte	0x60
	.byte	0xd
	.byte	0x26
	.byte	0x10
	.long	0x51b
	.uleb128 0x6
	.long	.LASF842
	.byte	0xd
	.byte	0x28
	.byte	0x12
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF843
	.byte	0xd
	.byte	0x29
	.byte	0x12
	.long	0x6c
	.byte	0x4
	.uleb128 0x6
	.long	.LASF844
	.byte	0xd
	.byte	0x2a
	.byte	0x9
	.long	0x59
	.byte	0x8
	.uleb128 0x6
	.long	.LASF845
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.long	0x51b
	.byte	0x10
	.uleb128 0x6
	.long	.LASF846
	.byte	0xd
	.byte	0x2c
	.byte	0xb
	.long	0x52b
	.byte	0x28
	.uleb128 0x6
	.long	.LASF847
	.byte	0xd
	.byte	0x2d
	.byte	0x18
	.long	0x53b
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.long	0x86
	.long	0x52b
	.uleb128 0x10
	.long	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x205
	.long	0x53b
	.uleb128 0x10
	.long	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x54b
	.long	0x54b
	.uleb128 0x10
	.long	0x92
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4bf
	.uleb128 0x3
	.long	.LASF848
	.byte	0xd
	.byte	0x2e
	.byte	0x3
	.long	0x4bf
	.uleb128 0x5
	.long	.LASF849
	.byte	0x60
	.byte	0xe
	.byte	0x7
	.byte	0x10
	.long	0x5b9
	.uleb128 0x6
	.long	.LASF850
	.byte	0xe
	.byte	0x9
	.byte	0xc
	.long	0xa5
	.byte	0
	.uleb128 0x6
	.long	.LASF851
	.byte	0xe
	.byte	0xa
	.byte	0xc
	.long	0xa5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF852
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.long	0x205
	.byte	0x10
	.uleb128 0x6
	.long	.LASF853
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.long	0x7f
	.byte	0x18
	.uleb128 0x6
	.long	.LASF854
	.byte	0xe
	.byte	0xd
	.byte	0xe
	.long	0x370
	.byte	0x20
	.uleb128 0x6
	.long	.LASF855
	.byte	0xe
	.byte	0xe
	.byte	0x11
	.long	0x246
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.long	.LASF856
	.byte	0xe
	.byte	0xf
	.byte	0x3
	.long	0x55d
	.uleb128 0x5
	.long	.LASF857
	.byte	0x20
	.byte	0xf
	.byte	0x15
	.byte	0x10
	.long	0x607
	.uleb128 0x6
	.long	.LASF858
	.byte	0xf
	.byte	0x17
	.byte	0xc
	.long	0x694
	.byte	0
	.uleb128 0x6
	.long	.LASF859
	.byte	0xf
	.byte	0x1a
	.byte	0xc
	.long	0x6af
	.byte	0x8
	.uleb128 0x6
	.long	.LASF860
	.byte	0xf
	.byte	0x1c
	.byte	0xc
	.long	0x6af
	.byte	0x10
	.uleb128 0x6
	.long	.LASF861
	.byte	0xf
	.byte	0x1e
	.byte	0xc
	.long	0x6c1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x626
	.uleb128 0xc
	.long	0x626
	.uleb128 0xc
	.long	0x86
	.uleb128 0xc
	.long	0x7f
	.uleb128 0xc
	.long	0x688
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x62c
	.uleb128 0x5
	.long	.LASF862
	.byte	0x78
	.byte	0xf
	.byte	0x21
	.byte	0x10
	.long	0x688
	.uleb128 0x6
	.long	.LASF863
	.byte	0xf
	.byte	0x23
	.byte	0xa
	.long	0x7f
	.byte	0
	.uleb128 0x6
	.long	.LASF864
	.byte	0xf
	.byte	0x24
	.byte	0x15
	.long	0x5c5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF865
	.byte	0xf
	.byte	0x25
	.byte	0xe
	.long	0x4b3
	.byte	0x28
	.uleb128 0x6
	.long	.LASF866
	.byte	0xf
	.byte	0x26
	.byte	0xc
	.long	0x235
	.byte	0x30
	.uleb128 0x6
	.long	.LASF867
	.byte	0xf
	.byte	0x27
	.byte	0xe
	.long	0x370
	.byte	0x40
	.uleb128 0x6
	.long	.LASF868
	.byte	0xf
	.byte	0x28
	.byte	0x13
	.long	0x6c7
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x68e
	.uleb128 0x8
	.byte	0x8
	.long	0x55d
	.uleb128 0x8
	.byte	0x8
	.long	0x607
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x6af
	.uleb128 0xc
	.long	0x626
	.uleb128 0xc
	.long	0x68e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x69a
	.uleb128 0xb
	.byte	0x1
	.long	0x6c1
	.uleb128 0xc
	.long	0x626
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6b5
	.uleb128 0x8
	.byte	0x8
	.long	0x551
	.uleb128 0x5
	.long	.LASF869
	.byte	0x20
	.byte	0x10
	.byte	0x17
	.byte	0x10
	.long	0x702
	.uleb128 0x6
	.long	.LASF870
	.byte	0x10
	.byte	0x1a
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x6
	.long	.LASF871
	.byte	0x10
	.byte	0x1c
	.byte	0x1a
	.long	0x72a
	.byte	0x8
	.uleb128 0x6
	.long	.LASF872
	.byte	0x10
	.byte	0x1f
	.byte	0x11
	.long	0x246
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF873
	.byte	0x10
	.byte	0x10
	.byte	0x22
	.byte	0x10
	.long	0x72a
	.uleb128 0x6
	.long	.LASF874
	.byte	0x10
	.byte	0x2e
	.byte	0xc
	.long	0x767
	.byte	0
	.uleb128 0x6
	.long	.LASF875
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x792
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x702
	.uleb128 0x3
	.long	.LASF876
	.byte	0x10
	.byte	0x20
	.byte	0x3
	.long	0x6cd
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x75b
	.uleb128 0xc
	.long	0x75b
	.uleb128 0xc
	.long	0x761
	.uleb128 0xc
	.long	0xd5
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x730
	.uleb128 0x8
	.byte	0x8
	.long	0x1f9
	.uleb128 0x8
	.byte	0x8
	.long	0x73c
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x78c
	.uleb128 0xc
	.long	0x75b
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xd5
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x200
	.uleb128 0x8
	.byte	0x8
	.long	0x76d
	.uleb128 0x5
	.long	.LASF877
	.byte	0x20
	.byte	0x11
	.byte	0xc
	.byte	0x10
	.long	0x7cd
	.uleb128 0x6
	.long	.LASF878
	.byte	0x11
	.byte	0xe
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x6
	.long	.LASF879
	.byte	0x11
	.byte	0xf
	.byte	0x19
	.long	0x81c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF880
	.byte	0x11
	.byte	0x10
	.byte	0x11
	.long	0x246
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF881
	.byte	0x28
	.byte	0x11
	.byte	0x13
	.byte	0x10
	.long	0x81c
	.uleb128 0x6
	.long	.LASF882
	.byte	0x11
	.byte	0x15
	.byte	0xf
	.long	0x853
	.byte	0
	.uleb128 0x6
	.long	.LASF883
	.byte	0x11
	.byte	0x17
	.byte	0xf
	.long	0x87f
	.byte	0x8
	.uleb128 0x6
	.long	.LASF884
	.byte	0x11
	.byte	0x19
	.byte	0xc
	.long	0x8a0
	.byte	0x10
	.uleb128 0x6
	.long	.LASF859
	.byte	0x11
	.byte	0x1b
	.byte	0xc
	.long	0x8bb
	.byte	0x18
	.uleb128 0x6
	.long	.LASF860
	.byte	0x11
	.byte	0x1d
	.byte	0xc
	.long	0x8bb
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x7cd
	.uleb128 0x3
	.long	.LASF885
	.byte	0x11
	.byte	0x11
	.byte	0x3
	.long	0x798
	.uleb128 0xe
	.byte	0x1
	.long	0xb1
	.long	0x84d
	.uleb128 0xc
	.long	0x84d
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x205
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x822
	.uleb128 0x8
	.byte	0x8
	.long	0x82e
	.uleb128 0xe
	.byte	0x1
	.long	0xb1
	.long	0x878
	.uleb128 0xc
	.long	0x84d
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x878
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x87e
	.uleb128 0x12
	.uleb128 0x8
	.byte	0x8
	.long	0x859
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x89a
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x89a
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x626
	.uleb128 0x8
	.byte	0x8
	.long	0x885
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0x8bb
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x68e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8a6
	.uleb128 0x5
	.long	.LASF886
	.byte	0x90
	.byte	0x7
	.byte	0x1d
	.byte	0x10
	.long	0x9b9
	.uleb128 0x6
	.long	.LASF882
	.byte	0x7
	.byte	0x2b
	.byte	0xf
	.long	0x9d8
	.byte	0
	.uleb128 0x6
	.long	.LASF883
	.byte	0x7
	.byte	0x35
	.byte	0xf
	.long	0x9fd
	.byte	0x8
	.uleb128 0x6
	.long	.LASF884
	.byte	0x7
	.byte	0x3e
	.byte	0xc
	.long	0x8a0
	.byte	0x10
	.uleb128 0x6
	.long	.LASF887
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.long	0xa32
	.byte	0x18
	.uleb128 0x6
	.long	.LASF888
	.byte	0x7
	.byte	0x51
	.byte	0xc
	.long	0xa57
	.byte	0x20
	.uleb128 0x6
	.long	.LASF889
	.byte	0x7
	.byte	0x58
	.byte	0xc
	.long	0xa7c
	.byte	0x28
	.uleb128 0x6
	.long	.LASF890
	.byte	0x7
	.byte	0x5f
	.byte	0xc
	.long	0xa9c
	.byte	0x30
	.uleb128 0x6
	.long	.LASF891
	.byte	0x7
	.byte	0x64
	.byte	0xc
	.long	0xacb
	.byte	0x38
	.uleb128 0x6
	.long	.LASF892
	.byte	0x7
	.byte	0x6f
	.byte	0xc
	.long	0xa57
	.byte	0x40
	.uleb128 0x6
	.long	.LASF893
	.byte	0x7
	.byte	0x77
	.byte	0xc
	.long	0xa9c
	.byte	0x48
	.uleb128 0x6
	.long	.LASF894
	.byte	0x7
	.byte	0x81
	.byte	0xf
	.long	0xb26
	.byte	0x50
	.uleb128 0x6
	.long	.LASF895
	.byte	0x7
	.byte	0x89
	.byte	0xc
	.long	0xbfe
	.byte	0x58
	.uleb128 0x6
	.long	.LASF896
	.byte	0x7
	.byte	0x8f
	.byte	0xc
	.long	0xc1f
	.byte	0x60
	.uleb128 0x6
	.long	.LASF897
	.byte	0x7
	.byte	0x97
	.byte	0xc
	.long	0xc1f
	.byte	0x68
	.uleb128 0x6
	.long	.LASF858
	.byte	0x7
	.byte	0x99
	.byte	0xc
	.long	0xc50
	.byte	0x70
	.uleb128 0x6
	.long	.LASF859
	.byte	0x7
	.byte	0xa1
	.byte	0xc
	.long	0xc6b
	.byte	0x78
	.uleb128 0x6
	.long	.LASF860
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.long	0xc6b
	.byte	0x80
	.uleb128 0x6
	.long	.LASF898
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0xc7d
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	0xb1
	.long	0x9d8
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x205
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9b9
	.uleb128 0xe
	.byte	0x1
	.long	0xb1
	.long	0x9fd
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x878
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9de
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xa2c
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x59
	.uleb128 0xc
	.long	0xed
	.uleb128 0xc
	.long	0xa2c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1e7
	.uleb128 0x8
	.byte	0x8
	.long	0xa03
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xa57
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0xa2c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa38
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xa7c
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x1e7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa5d
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xa9c
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa82
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xacb
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaa2
	.uleb128 0xe
	.byte	0x1
	.long	0xb1
	.long	0xaeb
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0xaeb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaf1
	.uleb128 0x5
	.long	.LASF899
	.byte	0x30
	.byte	0x12
	.byte	0x12
	.byte	0x10
	.long	0xb26
	.uleb128 0x6
	.long	.LASF900
	.byte	0x12
	.byte	0x14
	.byte	0xb
	.long	0xe1
	.byte	0
	.uleb128 0x6
	.long	.LASF901
	.byte	0x12
	.byte	0x15
	.byte	0xb
	.long	0xbd
	.byte	0x8
	.uleb128 0x6
	.long	.LASF902
	.byte	0x12
	.byte	0x16
	.byte	0xa
	.long	0xfe0
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xad1
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xb41
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xb41
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb47
	.uleb128 0x5
	.long	.LASF895
	.byte	0x34
	.byte	0x13
	.byte	0xc
	.byte	0x10
	.long	0xbfe
	.uleb128 0x6
	.long	.LASF903
	.byte	0x13
	.byte	0xe
	.byte	0x9
	.long	0x59
	.byte	0
	.uleb128 0x6
	.long	.LASF904
	.byte	0x13
	.byte	0xf
	.byte	0x9
	.long	0x59
	.byte	0x4
	.uleb128 0x6
	.long	.LASF905
	.byte	0x13
	.byte	0x10
	.byte	0x9
	.long	0x59
	.byte	0x8
	.uleb128 0x6
	.long	.LASF906
	.byte	0x13
	.byte	0x11
	.byte	0x9
	.long	0x59
	.byte	0xc
	.uleb128 0x6
	.long	.LASF907
	.byte	0x13
	.byte	0x12
	.byte	0x9
	.long	0x59
	.byte	0x10
	.uleb128 0x6
	.long	.LASF908
	.byte	0x13
	.byte	0x13
	.byte	0x9
	.long	0x59
	.byte	0x14
	.uleb128 0x6
	.long	.LASF909
	.byte	0x13
	.byte	0x14
	.byte	0x9
	.long	0x59
	.byte	0x18
	.uleb128 0x6
	.long	.LASF910
	.byte	0x13
	.byte	0x15
	.byte	0x9
	.long	0x59
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF911
	.byte	0x13
	.byte	0x16
	.byte	0x9
	.long	0x59
	.byte	0x20
	.uleb128 0x6
	.long	.LASF912
	.byte	0x13
	.byte	0x17
	.byte	0x9
	.long	0x59
	.byte	0x24
	.uleb128 0x6
	.long	.LASF913
	.byte	0x13
	.byte	0x18
	.byte	0x9
	.long	0x59
	.byte	0x28
	.uleb128 0x6
	.long	.LASF914
	.byte	0x13
	.byte	0x19
	.byte	0x9
	.long	0x59
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF915
	.byte	0x13
	.byte	0x1a
	.byte	0x9
	.long	0x59
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb2c
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xc19
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xc19
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf9
	.uleb128 0x8
	.byte	0x8
	.long	0xc04
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xc44
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x7f
	.uleb128 0xc
	.long	0xc44
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc4a
	.uleb128 0x8
	.byte	0x8
	.long	0x5b9
	.uleb128 0x8
	.byte	0x8
	.long	0xc25
	.uleb128 0xe
	.byte	0x1
	.long	0x7f
	.long	0xc6b
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xc
	.long	0xc4a
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc56
	.uleb128 0xb
	.byte	0x1
	.long	0xc7d
	.uleb128 0xc
	.long	0x1e7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc71
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.byte	0xfd
	.byte	0x5
	.long	0xca5
	.uleb128 0x14
	.long	.LASF877
	.byte	0x7
	.byte	0xfe
	.byte	0x14
	.long	0x84d
	.uleb128 0x14
	.long	.LASF869
	.byte	0x7
	.byte	0xff
	.byte	0x15
	.long	0x75b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8c1
	.uleb128 0x15
	.long	.LASF916
	.byte	0x7
	.value	0x104
	.byte	0x3
	.long	0x13b
	.uleb128 0x5
	.long	.LASF917
	.byte	0x18
	.byte	0x14
	.byte	0xe
	.byte	0x10
	.long	0xce0
	.uleb128 0x6
	.long	.LASF918
	.byte	0x14
	.byte	0x10
	.byte	0xc
	.long	0x235
	.byte	0
	.uleb128 0x6
	.long	.LASF919
	.byte	0x14
	.byte	0x11
	.byte	0x12
	.long	0xdcd
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	.LASF920
	.value	0x2a0
	.byte	0x15
	.byte	0x1b
	.byte	0x10
	.long	0xdcd
	.uleb128 0x6
	.long	.LASF921
	.byte	0x15
	.byte	0x1d
	.byte	0xb
	.long	0xc9
	.byte	0
	.uleb128 0x6
	.long	.LASF922
	.byte	0x15
	.byte	0x1e
	.byte	0xa
	.long	0xf51
	.byte	0x4
	.uleb128 0x17
	.long	.LASF923
	.byte	0x15
	.byte	0x20
	.byte	0xc
	.long	0x235
	.value	0x108
	.uleb128 0x17
	.long	.LASF924
	.byte	0x15
	.byte	0x21
	.byte	0xc
	.long	0x235
	.value	0x118
	.uleb128 0x17
	.long	.LASF925
	.byte	0x15
	.byte	0x22
	.byte	0x12
	.long	0xdcd
	.value	0x128
	.uleb128 0x17
	.long	.LASF926
	.byte	0x15
	.byte	0x24
	.byte	0x11
	.long	0x246
	.value	0x130
	.uleb128 0x17
	.long	.LASF927
	.byte	0x15
	.byte	0x25
	.byte	0x11
	.long	0x246
	.value	0x140
	.uleb128 0x17
	.long	.LASF928
	.byte	0x15
	.byte	0x27
	.byte	0xa
	.long	0x7f
	.value	0x150
	.uleb128 0x17
	.long	.LASF929
	.byte	0x15
	.byte	0x28
	.byte	0x12
	.long	0xf45
	.value	0x158
	.uleb128 0x17
	.long	.LASF930
	.byte	0x15
	.byte	0x2a
	.byte	0xd
	.long	0xe79
	.value	0x160
	.uleb128 0x17
	.long	.LASF931
	.byte	0x15
	.byte	0x31
	.byte	0xf
	.long	0x27f
	.value	0x168
	.uleb128 0x17
	.long	.LASF932
	.byte	0x15
	.byte	0x34
	.byte	0x12
	.long	0xf61
	.value	0x180
	.uleb128 0x17
	.long	.LASF933
	.byte	0x15
	.byte	0x35
	.byte	0x13
	.long	0x1e7
	.value	0x280
	.uleb128 0x17
	.long	.LASF934
	.byte	0x15
	.byte	0x45
	.byte	0xb
	.long	0x205
	.value	0x288
	.uleb128 0x17
	.long	.LASF935
	.byte	0x15
	.byte	0x46
	.byte	0xb
	.long	0x205
	.value	0x290
	.uleb128 0x17
	.long	.LASF936
	.byte	0x15
	.byte	0x47
	.byte	0x13
	.long	0xddf
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xce0
	.uleb128 0x3
	.long	.LASF937
	.byte	0x14
	.byte	0x12
	.byte	0x3
	.long	0xcb8
	.uleb128 0x8
	.byte	0x8
	.long	0xcb8
	.uleb128 0x18
	.string	"pt"
	.value	0x1000
	.byte	0x16
	.byte	0x18
	.byte	0x10
	.long	0xe00
	.uleb128 0x6
	.long	.LASF938
	.byte	0x16
	.byte	0x1a
	.byte	0xf
	.long	0xe00
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x99
	.long	0xe11
	.uleb128 0x19
	.long	0x92
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF939
	.byte	0x16
	.byte	0x1b
	.byte	0x16
	.long	0xde5
	.uleb128 0x5
	.long	.LASF940
	.byte	0x30
	.byte	0x17
	.byte	0xd
	.byte	0x10
	.long	0xe79
	.uleb128 0x6
	.long	.LASF941
	.byte	0x17
	.byte	0xf
	.byte	0xf
	.long	0x99
	.byte	0
	.uleb128 0x6
	.long	.LASF942
	.byte	0x17
	.byte	0x10
	.byte	0xf
	.long	0x99
	.byte	0x8
	.uleb128 0x6
	.long	.LASF943
	.byte	0x17
	.byte	0x11
	.byte	0xf
	.long	0x99
	.byte	0x10
	.uleb128 0x6
	.long	.LASF944
	.byte	0x17
	.byte	0x14
	.byte	0xa
	.long	0xe79
	.byte	0x18
	.uleb128 0x6
	.long	.LASF945
	.byte	0x17
	.byte	0x18
	.byte	0xf
	.long	0x99
	.byte	0x20
	.uleb128 0x6
	.long	.LASF946
	.byte	0x17
	.byte	0x19
	.byte	0xc
	.long	0xa5
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe11
	.uleb128 0x3
	.long	.LASF947
	.byte	0x17
	.byte	0x1a
	.byte	0x3
	.long	0xe1d
	.uleb128 0x5
	.long	.LASF948
	.byte	0x48
	.byte	0x18
	.byte	0x7
	.byte	0x10
	.long	0xecd
	.uleb128 0x6
	.long	.LASF949
	.byte	0x18
	.byte	0x9
	.byte	0xa
	.long	0x7f
	.byte	0
	.uleb128 0x6
	.long	.LASF950
	.byte	0x18
	.byte	0xa
	.byte	0xf
	.long	0xe7f
	.byte	0x8
	.uleb128 0x6
	.long	.LASF951
	.byte	0x18
	.byte	0xc
	.byte	0x10
	.long	0xecd
	.byte	0x38
	.uleb128 0x6
	.long	.LASF952
	.byte	0x18
	.byte	0xe
	.byte	0xf
	.long	0x99
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x27f
	.uleb128 0x3
	.long	.LASF953
	.byte	0x18
	.byte	0xf
	.byte	0x3
	.long	0xe8b
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0xb
	.byte	0x15
	.byte	0x1
	.long	0xf12
	.uleb128 0x1b
	.long	.LASF954
	.byte	0
	.uleb128 0x1b
	.long	.LASF955
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF956
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF957
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF958
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF959
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF960
	.byte	0xb
	.byte	0x1c
	.byte	0x3
	.long	0xedf
	.uleb128 0x3
	.long	.LASF961
	.byte	0xb
	.byte	0x35
	.byte	0x3
	.long	0x2c0
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x15
	.byte	0x15
	.byte	0x1
	.long	0xf45
	.uleb128 0x1b
	.long	.LASF962
	.byte	0
	.uleb128 0x1b
	.long	.LASF963
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF964
	.byte	0x15
	.byte	0x18
	.byte	0x3
	.long	0xf2a
	.uleb128 0xf
	.long	0x1f9
	.long	0xf61
	.uleb128 0x10
	.long	0x92
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.long	0xc19
	.long	0xf71
	.uleb128 0x10
	.long	0x92
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF965
	.byte	0x15
	.byte	0x49
	.byte	0x3
	.long	0xce0
	.uleb128 0x9
	.long	0xf71
	.uleb128 0x1c
	.long	.LASF966
	.byte	0x15
	.byte	0xb0
	.byte	0xf
	.long	0xf71
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF967
	.byte	0x19
	.byte	0x9
	.byte	0xf
	.long	0xed3
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF968
	.byte	0x19
	.byte	0xa
	.byte	0x10
	.long	0xfac
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xf71
	.uleb128 0x1c
	.long	.LASF969
	.byte	0x19
	.byte	0xb
	.byte	0x13
	.long	0xfc0
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xf1e
	.uleb128 0x3
	.long	.LASF970
	.byte	0x1a
	.byte	0x14
	.byte	0x1f
	.long	0x4a7
	.uleb128 0x1c
	.long	.LASF971
	.byte	0x4
	.byte	0x8c
	.byte	0x11
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x1f9
	.long	0xff0
	.uleb128 0x10
	.long	0x92
	.byte	0x1b
	.byte	0
	.uleb128 0x1d
	.long	0xf9e
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.byte	0x9
	.byte	0x3
	.quad	curproc
	.uleb128 0x1e
	.long	.LASF972
	.byte	0x1
	.byte	0x1d
	.byte	0xf
	.long	0x235
	.byte	0x9
	.byte	0x3
	.quad	proc_list
	.uleb128 0x1e
	.long	.LASF973
	.byte	0x1
	.byte	0x22
	.byte	0x1a
	.long	0x102e
	.byte	0x9
	.byte	0x3
	.quad	proc_allocator
	.uleb128 0x8
	.byte	0x8
	.long	0xfc6
	.uleb128 0x1d
	.long	0xf82
	.byte	0x1
	.byte	0x29
	.byte	0x8
	.byte	0x9
	.byte	0x3
	.quad	idleproc
	.uleb128 0x1e
	.long	.LASF974
	.byte	0x1
	.byte	0x2e
	.byte	0x10
	.long	0xfac
	.byte	0x9
	.byte	0x3
	.quad	proc_initproc
	.uleb128 0x1e
	.long	.LASF975
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.long	0xc9
	.byte	0x9
	.byte	0x3
	.quad	next_pid
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF986
	.byte	0x1b
	.byte	0x52
	.byte	0x5
	.byte	0x1
	.long	0x59
	.byte	0x1
	.long	0x1096
	.uleb128 0xc
	.long	0x1096
	.uleb128 0xc
	.long	0x109c
	.uleb128 0xc
	.long	0x761
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x761
	.uleb128 0x8
	.byte	0x8
	.long	0xa5
	.uleb128 0x21
	.byte	0x1
	.long	.LASF976
	.byte	0xb
	.byte	0x6a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x10b7
	.uleb128 0xc
	.long	0x205
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF977
	.byte	0x9
	.byte	0x46
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x10cc
	.uleb128 0xc
	.long	0xecd
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF978
	.byte	0x1a
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x10e6
	.uleb128 0xc
	.long	0x102e
	.uleb128 0xc
	.long	0x205
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF979
	.byte	0x16
	.byte	0x52
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x10fb
	.uleb128 0xc
	.long	0xe79
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF980
	.byte	0x6
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1110
	.uleb128 0xc
	.long	0x1110
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1116
	.uleb128 0x8
	.byte	0x8
	.long	0x1ed
	.uleb128 0x21
	.byte	0x1
	.long	.LASF981
	.byte	0xb
	.byte	0x5b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1131
	.uleb128 0xc
	.long	0xfc0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF982
	.byte	0xb
	.byte	0x63
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x114b
	.uleb128 0xc
	.long	0xfc0
	.uleb128 0xc
	.long	0x205
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF983
	.byte	0x9
	.byte	0x2c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1160
	.uleb128 0xc
	.long	0xecd
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF984
	.byte	0x9
	.byte	0x7e
	.byte	0x6
	.long	0x7f
	.byte	0x1
	.long	0x1174
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF985
	.byte	0x9
	.byte	0x60
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1189
	.uleb128 0xc
	.long	0xecd
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF987
	.byte	0x8
	.byte	0x74
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.byte	0x1
	.long	0x11a2
	.uleb128 0xc
	.long	0x11a2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x252
	.uleb128 0x23
	.byte	0x1
	.long	.LASF988
	.byte	0x9
	.byte	0x7b
	.byte	0x6
	.byte	0x1
	.long	0x11b8
	.uleb128 0x20
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF989
	.byte	0x15
	.byte	0x5c
	.byte	0x6
	.byte	0x1
	.long	0x11c8
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF990
	.byte	0x8
	.byte	0x8c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x11e2
	.uleb128 0xc
	.long	0x11e2
	.uleb128 0xc
	.long	0x11e2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x246
	.uleb128 0x21
	.byte	0x1
	.long	.LASF991
	.byte	0x8
	.byte	0xa3
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x11fd
	.uleb128 0xc
	.long	0x11e2
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF992
	.byte	0x8
	.byte	0x7c
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.byte	0x1
	.long	0x1216
	.uleb128 0xc
	.long	0x1216
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x241
	.uleb128 0x24
	.byte	0x1
	.long	.LASF993
	.byte	0x7
	.value	0x148
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1232
	.uleb128 0xc
	.long	0x1232
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1238
	.uleb128 0x8
	.byte	0x8
	.long	0xcab
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF994
	.byte	0x1c
	.byte	0xb
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.byte	0x1
	.long	0x1257
	.uleb128 0xc
	.long	0x59
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF995
	.byte	0x7
	.value	0x12f
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x126d
	.uleb128 0xc
	.long	0x1238
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF996
	.byte	0x7
	.value	0x13a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1283
	.uleb128 0xc
	.long	0x1238
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF997
	.byte	0x7
	.value	0x11a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1299
	.uleb128 0xc
	.long	0x1238
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF998
	.byte	0x6
	.byte	0x33
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x12ae
	.uleb128 0xc
	.long	0x1116
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF999
	.byte	0x1d
	.byte	0x40
	.byte	0x7
	.byte	0x1
	.long	0x205
	.byte	0x1
	.long	0x12d1
	.uleb128 0xc
	.long	0x205
	.uleb128 0xc
	.long	0x878
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF1000
	.byte	0x8
	.byte	0x9c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x12eb
	.uleb128 0xc
	.long	0x12eb
	.uleb128 0xc
	.long	0x11e2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x235
	.uleb128 0x21
	.byte	0x1
	.long	.LASF1001
	.byte	0x9
	.byte	0x6e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1306
	.uleb128 0xc
	.long	0xecd
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF1002
	.byte	0x16
	.byte	0x50
	.byte	0x9
	.long	0xe79
	.byte	0x1
	.long	0x131a
	.uleb128 0x20
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1003
	.byte	0x1a
	.byte	0x4d
	.byte	0x7
	.byte	0x1
	.long	0x205
	.byte	0x1
	.long	0x1333
	.uleb128 0xc
	.long	0x102e
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF1004
	.byte	0x4
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1349
	.uleb128 0xc
	.long	0x761
	.uleb128 0x20
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1005
	.byte	0x4
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0x78c
	.byte	0x1
	.long	0x1362
	.uleb128 0xc
	.long	0x86
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1006
	.byte	0x1d
	.byte	0x48
	.byte	0x7
	.byte	0x1
	.long	0x761
	.byte	0x1
	.long	0x1385
	.uleb128 0xc
	.long	0x761
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1007
	.byte	0x1b
	.byte	0x42
	.byte	0x5
	.byte	0x1
	.long	0x59
	.byte	0x1
	.long	0x13a9
	.uleb128 0xc
	.long	0x761
	.uleb128 0xc
	.long	0xa5
	.uleb128 0xc
	.long	0x78c
	.uleb128 0x20
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF1067
	.byte	0x14
	.byte	0x2b
	.byte	0xa
	.byte	0x1
	.long	0x13b8
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xdd3
	.uleb128 0x22
	.byte	0x1
	.long	.LASF1008
	.byte	0x16
	.byte	0x4a
	.byte	0x9
	.long	0xe79
	.byte	0x1
	.long	0x13d2
	.uleb128 0x20
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1009
	.byte	0x1d
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.long	0x205
	.byte	0x1
	.long	0x13f5
	.uleb128 0xc
	.long	0x205
	.uleb128 0xc
	.long	0x59
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF1010
	.byte	0x8
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x140a
	.uleb128 0xc
	.long	0x11e2
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF1011
	.byte	0x8
	.byte	0x6c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x141f
	.uleb128 0xc
	.long	0x12eb
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF1012
	.byte	0x4
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x1445
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0x59
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0x78c
	.uleb128 0x20
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF1013
	.byte	0x1a
	.byte	0x3c
	.byte	0x13
	.byte	0x1
	.long	0x102e
	.byte	0x1
	.long	0x1463
	.uleb128 0xc
	.long	0x78c
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF1018
	.byte	0x1
	.value	0x269
	.byte	0x8
	.byte	0x1
	.long	0xa5
	.quad	.LFB28
	.quad	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1586
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x269
	.byte	0x23
	.long	0x878
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x269
	.byte	0x2e
	.long	0x761
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF1014
	.byte	0x1
	.value	0x269
	.byte	0x3a
	.long	0xa5
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF1015
	.byte	0x1
	.value	0x26b
	.byte	0xc
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x1596
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x2c
	.quad	.LBB20
	.quad	.LBE20
	.long	0x155e
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x277
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1016
	.byte	0x1
	.value	0x277
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x2a
	.long	.LASF1017
	.byte	0x1
	.value	0x279
	.byte	0xe
	.long	0x159b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.quad	.LVL122
	.long	0x1385
	.uleb128 0x2f
	.quad	.LVL123
	.long	0x1385
	.uleb128 0x2f
	.quad	.LVL124
	.long	0x1072
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL119
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL120
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL121
	.long	0x1072
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x1596
	.uleb128 0x10
	.long	0x92
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.long	0x1586
	.uleb128 0xf
	.long	0x1f9
	.long	0x15ab
	.uleb128 0x10
	.long	0x92
	.byte	0x3f
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF1019
	.byte	0x1
	.value	0x22d
	.byte	0x8
	.byte	0x1
	.long	0xa5
	.quad	.LFB27
	.quad	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1714
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x22d
	.byte	0x1e
	.long	0x878
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x22d
	.byte	0x29
	.long	0x761
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF1014
	.byte	0x1
	.value	0x22d
	.byte	0x35
	.long	0xa5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x22f
	.byte	0x13
	.long	0x1714
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1015
	.byte	0x1
	.value	0x230
	.byte	0xc
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1021
	.byte	0x1
	.value	0x231
	.byte	0xd
	.long	0xfac
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x172a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19
	.long	0x1684
	.uleb128 0x2a
	.long	.LASF1021
	.byte	0x1
	.value	0x24a
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1022
	.byte	0x1
	.value	0x24a
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LVL116
	.long	0x1072
	.byte	0
	.uleb128 0x2f
	.quad	.LVL107
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL108
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL109
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL110
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL111
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL112
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL113
	.long	0x11fd
	.uleb128 0x2f
	.quad	.LVL114
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL115
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL117
	.long	0x1072
	.uleb128 0x2f
	.quad	.LVL118
	.long	0x1072
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf7d
	.uleb128 0xf
	.long	0x200
	.long	0x172a
	.uleb128 0x10
	.long	0x92
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	0x171a
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1031
	.byte	0x1
	.value	0x221
	.byte	0x6
	.byte	0x1
	.quad	.LFB26
	.quad	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x17d1
	.uleb128 0x29
	.long	.LASF1023
	.byte	0x1
	.value	0x221
	.byte	0x13
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x17e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x2f
	.quad	.LVL100
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL101
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL102
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL103
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL104
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL105
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL106
	.long	0x10a2
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x17e1
	.uleb128 0x10
	.long	0x92
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x17d1
	.uleb128 0x27
	.byte	0x1
	.long	.LASF1024
	.byte	0x1
	.value	0x1df
	.byte	0x7
	.byte	0x1
	.long	0xc9
	.quad	.LFB25
	.quad	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1914
	.uleb128 0x28
	.string	"pid"
	.byte	0x1
	.value	0x1df
	.byte	0x18
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF1023
	.byte	0x1
	.value	0x1df
	.byte	0x22
	.long	0x1914
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF1025
	.byte	0x1
	.value	0x1df
	.byte	0x2e
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF920
	.byte	0x1
	.value	0x1e8
	.byte	0xd
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF1026
	.byte	0x1
	.value	0x20a
	.byte	0x1
	.quad	.L133
	.uleb128 0x32
	.long	.LASF1027
	.byte	0x1
	.value	0x206
	.byte	0x5
	.quad	.L134
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x192a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16
	.long	0x18df
	.uleb128 0x2a
	.long	.LASF1028
	.byte	0x1
	.value	0x1eb
	.byte	0xe
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.long	0x18d1
	.uleb128 0x2a
	.long	.LASF1029
	.byte	0x1
	.value	0x1ec
	.byte	0x9
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1030
	.byte	0x1
	.value	0x1ec
	.byte	0x9
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.quad	.LVL95
	.long	0x10b7
	.byte	0
	.uleb128 0x2f
	.quad	.LVL96
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL97
	.long	0x11e8
	.uleb128 0x2f
	.quad	.LVL98
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL99
	.long	0x192f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x59
	.uleb128 0xf
	.long	0x200
	.long	0x192a
	.uleb128 0x10
	.long	0x92
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x191a
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1032
	.byte	0x1
	.value	0x1a1
	.byte	0x6
	.byte	0x1
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1a7a
	.uleb128 0x29
	.long	.LASF920
	.byte	0x1
	.value	0x1a1
	.byte	0x1b
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x1a8a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.4
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14
	.long	0x19b8
	.uleb128 0x2d
	.string	"thr"
	.byte	0x1
	.value	0x1a5
	.byte	0x5
	.long	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1033
	.byte	0x1
	.value	0x1a5
	.byte	0x5
	.long	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LVL83
	.long	0x111c
	.byte	0
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15
	.long	0x19ea
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x1ab
	.byte	0xe
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.quad	.LVL84
	.long	0x10fb
	.byte	0
	.uleb128 0x2f
	.quad	.LVL82
	.long	0x11e8
	.uleb128 0x2f
	.quad	.LVL85
	.long	0x121c
	.uleb128 0x2f
	.quad	.LVL86
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL87
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL88
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL89
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL90
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL91
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL92
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL93
	.long	0x10e6
	.uleb128 0x2f
	.quad	.LVL94
	.long	0x10cc
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x1a8a
	.uleb128 0x10
	.long	0x92
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x1a7a
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1034
	.byte	0x1
	.value	0x18a
	.byte	0x6
	.byte	0x1
	.quad	.LFB23
	.quad	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1b02
	.uleb128 0x2c
	.quad	.LBB13
	.quad	.LBE13
	.long	0x1af4
	.uleb128 0x2a
	.long	.LASF920
	.byte	0x1
	.value	0x18d
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1035
	.byte	0x1
	.value	0x18d
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LVL80
	.long	0x1b02
	.byte	0
	.uleb128 0x2f
	.quad	.LVL81
	.long	0x172f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1036
	.byte	0x1
	.value	0x174
	.byte	0x6
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1ba9
	.uleb128 0x29
	.long	.LASF920
	.byte	0x1
	.value	0x174
	.byte	0x18
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF1023
	.byte	0x1
	.value	0x174
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x172a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.5
	.uleb128 0x2c
	.quad	.LBB12
	.quad	.LBE12
	.long	0x1b9b
	.uleb128 0x2d
	.string	"thr"
	.byte	0x1
	.value	0x179
	.byte	0x5
	.long	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1033
	.byte	0x1
	.value	0x179
	.byte	0x5
	.long	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LVL79
	.long	0x1131
	.byte	0
	.uleb128 0x2f
	.quad	.LVL78
	.long	0x141f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1037
	.byte	0x1
	.value	0x152
	.byte	0x6
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1d10
	.uleb128 0x29
	.long	.LASF1038
	.byte	0x1
	.value	0x152
	.byte	0x20
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x1d20
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.6
	.uleb128 0x2c
	.quad	.LBB11
	.quad	.LBE11
	.long	0x1c73
	.uleb128 0x2a
	.long	.LASF1039
	.byte	0x1
	.value	0x159
	.byte	0x5
	.long	0x1d25
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1040
	.byte	0x1
	.value	0x159
	.byte	0x5
	.long	0x1d25
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LVL62
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL63
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL64
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL65
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL66
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL67
	.long	0x1333
	.byte	0
	.uleb128 0x2f
	.quad	.LVL60
	.long	0x11a8
	.uleb128 0x2f
	.quad	.LVL61
	.long	0x1d2b
	.uleb128 0x2f
	.quad	.LVL68
	.long	0x11fd
	.uleb128 0x2f
	.quad	.LVL69
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL70
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL71
	.long	0x1189
	.uleb128 0x2f
	.quad	.LVL72
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL73
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL74
	.long	0x1174
	.uleb128 0x2f
	.quad	.LVL75
	.long	0x1160
	.uleb128 0x2f
	.quad	.LVL76
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL77
	.long	0x114b
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x1d20
	.uleb128 0x10
	.long	0x92
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	0x1d10
	.uleb128 0x8
	.byte	0x8
	.long	0x370
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1041
	.byte	0x1
	.value	0x115
	.byte	0x6
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1e5c
	.uleb128 0x29
	.long	.LASF1023
	.byte	0x1
	.value	0x115
	.byte	0x18
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x1a8a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.7
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9
	.long	0x1da3
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x11c
	.byte	0xe
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.quad	.LVL51
	.long	0x123e
	.byte	0
	.uleb128 0x2c
	.quad	.LBB10
	.quad	.LBE10
	.long	0x1e00
	.uleb128 0x2a
	.long	.LASF1021
	.byte	0x1
	.value	0x12e
	.byte	0x9
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF1022
	.byte	0x1
	.value	0x12e
	.byte	0x9
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LVL55
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL56
	.long	0x11e8
	.uleb128 0x2f
	.quad	.LVL57
	.long	0x11c8
	.byte	0
	.uleb128 0x2f
	.quad	.LVL49
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL50
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL52
	.long	0x121c
	.uleb128 0x2f
	.quad	.LVL53
	.long	0x11fd
	.uleb128 0x2f
	.quad	.LVL54
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL58
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL59
	.long	0x11b8
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF1042
	.byte	0x1
	.byte	0xad
	.byte	0x9
	.byte	0x1
	.long	0xfac
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x206c
	.uleb128 0x35
	.long	.LASF1043
	.byte	0x1
	.byte	0xad
	.byte	0x21
	.long	0x78c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"pid"
	.byte	0x1
	.byte	0xb0
	.byte	0xb
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x207c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.8
	.uleb128 0x1e
	.long	.LASF920
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB8
	.quad	.LBE8
	.long	0x1ef2
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.byte	0x11
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LVL39
	.long	0x1299
	.byte	0
	.uleb128 0x2f
	.quad	.LVL19
	.long	0x20e4
	.uleb128 0x2f
	.quad	.LVL20
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL21
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL22
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL23
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL24
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL25
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL26
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL27
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL28
	.long	0x131a
	.uleb128 0x2f
	.quad	.LVL29
	.long	0x1306
	.uleb128 0x2f
	.quad	.LVL30
	.long	0x192f
	.uleb128 0x2f
	.quad	.LVL31
	.long	0x140a
	.uleb128 0x2f
	.quad	.LVL32
	.long	0x140a
	.uleb128 0x2f
	.quad	.LVL33
	.long	0x12f1
	.uleb128 0x2f
	.quad	.LVL34
	.long	0x12d1
	.uleb128 0x2f
	.quad	.LVL35
	.long	0x12d1
	.uleb128 0x2f
	.quad	.LVL36
	.long	0x141f
	.uleb128 0x2f
	.quad	.LVL37
	.long	0x1362
	.uleb128 0x2f
	.quad	.LVL38
	.long	0x12ae
	.uleb128 0x2f
	.quad	.LVL40
	.long	0x1283
	.uleb128 0x2f
	.quad	.LVL41
	.long	0x126d
	.uleb128 0x2f
	.quad	.LVL42
	.long	0x1257
	.uleb128 0x2f
	.quad	.LVL43
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL44
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL45
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL46
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL47
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL48
	.long	0x1333
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x207c
	.uleb128 0x10
	.long	0x92
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.long	0x206c
	.uleb128 0x34
	.byte	0x1
	.long	.LASF1044
	.byte	0x1
	.byte	0x87
	.byte	0x9
	.byte	0x1
	.long	0xfac
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x20e4
	.uleb128 0x37
	.string	"pid"
	.byte	0x1
	.byte	0x87
	.byte	0x1b
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.byte	0x8d
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF1016
	.byte	0x1
	.byte	0x8d
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1056
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.long	0xc9
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x217a
	.uleb128 0x36
	.string	"pid"
	.byte	0x1
	.byte	0x6d
	.byte	0xb
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF1045
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.quad	.L41
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x207c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.9
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6
	.long	0x216c
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF1016
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.quad	.LVL18
	.long	0x141f
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF1068
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x229d
	.uleb128 0x1e
	.long	.LASF920
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.long	0xfac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF1043
	.byte	0x1
	.byte	0x59
	.byte	0xa
	.long	0x229d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x22bd
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.10
	.uleb128 0x2f
	.quad	.LVL2
	.long	0x140a
	.uleb128 0x2f
	.quad	.LVL3
	.long	0x140a
	.uleb128 0x2f
	.quad	.LVL4
	.long	0x13f5
	.uleb128 0x2f
	.quad	.LVL5
	.long	0x13f5
	.uleb128 0x2f
	.quad	.LVL6
	.long	0x13d2
	.uleb128 0x2f
	.quad	.LVL7
	.long	0x13be
	.uleb128 0x2f
	.quad	.LVL8
	.long	0x13a9
	.uleb128 0x2f
	.quad	.LVL9
	.long	0x13d2
	.uleb128 0x2f
	.quad	.LVL10
	.long	0x1385
	.uleb128 0x2f
	.quad	.LVL11
	.long	0x1362
	.uleb128 0x2f
	.quad	.LVL12
	.long	0x1349
	.uleb128 0x2f
	.quad	.LVL13
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL14
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL15
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL16
	.long	0x1333
	.uleb128 0x2f
	.quad	.LVL17
	.long	0x1333
	.byte	0
	.uleb128 0xf
	.long	0x1f9
	.long	0x22ad
	.uleb128 0x10
	.long	0x92
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.long	0x200
	.long	0x22bd
	.uleb128 0x10
	.long	0x92
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.long	0x22ad
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF1046
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2312
	.uleb128 0x2b
	.long	.LASF1020
	.long	0x172a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11
	.uleb128 0x2f
	.quad	.LVL0
	.long	0x1445
	.uleb128 0x2f
	.quad	.LVL1
	.long	0x141f
	.byte	0
	.uleb128 0x3c
	.long	.LASF1047
	.byte	0x4
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2354
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x124
	.byte	0x20
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x124
	.byte	0x28
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1048
	.byte	0x4
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2396
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x122
	.byte	0x1d
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x122
	.byte	0x25
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1049
	.byte	0x4
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x23d8
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x120
	.byte	0x1e
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x120
	.byte	0x26
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1050
	.byte	0x4
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x241a
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x11e
	.byte	0x1b
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x11e
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1051
	.byte	0x4
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x245c
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x11c
	.byte	0x1c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x11c
	.byte	0x24
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	.LASF1052
	.byte	0x4
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x249e
	.uleb128 0x28
	.string	"l"
	.byte	0x4
	.value	0x117
	.byte	0x19
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"r"
	.byte	0x4
	.value	0x117
	.byte	0x21
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3d
	.long	.LASF1053
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF1054
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF1055
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x38
	.long	.LASF1057
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x86
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2522
	.uleb128 0x1e
	.long	.LASF1058
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF1059
	.byte	0x2
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.long	0x59
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2595
	.uleb128 0x37
	.string	"a"
	.byte	0x2
	.byte	0x1a
	.byte	0x31
	.long	0x2595
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3f
	.long	0x2636
	.quad	.LBB4
	.quad	.LBE4
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.uleb128 0x40
	.long	0x265c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x40
	.long	0x2652
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x40
	.long	0x2648
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.long	0x2666
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x41
	.long	0x2670
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4b3
	.uleb128 0x3e
	.long	.LASF1060
	.byte	0x2
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.long	0x59
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x25cd
	.uleb128 0x37
	.string	"a"
	.byte	0x2
	.byte	0x15
	.byte	0x31
	.long	0x2595
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	.LASF1061
	.byte	0x2
	.byte	0x13
	.byte	0x14
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x25fb
	.uleb128 0x37
	.string	"a"
	.byte	0x2
	.byte	0x13
	.byte	0x29
	.long	0x2595
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	.LASF1062
	.byte	0x2
	.byte	0x11
	.byte	0x14
	.byte	0x1
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2636
	.uleb128 0x37
	.string	"a"
	.byte	0x2
	.byte	0x11
	.byte	0x29
	.long	0x2595
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"i"
	.byte	0x2
	.byte	0x11
	.byte	0x30
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x43
	.long	.LASF1069
	.byte	0x2
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.long	0x59
	.byte	0x1
	.long	0x267d
	.uleb128 0x44
	.string	"a"
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.long	0x2595
	.uleb128 0x44
	.string	"v"
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.long	0x59
	.uleb128 0x44
	.string	"u"
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.long	0x59
	.uleb128 0x45
	.string	"c"
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.long	0x59
	.uleb128 0x45
	.string	"old"
	.byte	0x2
	.byte	0xa
	.byte	0xc
	.long	0x59
	.byte	0
	.uleb128 0x46
	.long	0x2636
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x40
	.long	0x2648
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	0x2652
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x40
	.long	0x265c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x41
	.long	0x2666
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x41
	.long	0x2670
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 30 "include/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 31 "include/errno.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.file 32 "include/fs/open.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x20
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.file 33 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x8
	.long	.LASF526
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.file 34 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x22
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF546
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF547
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x10
	.file 35 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x23
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.file 36 "include/mm/page.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF603
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x19
	.file 37 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x25
	.file 38 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x26
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF642
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF647
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.file 39 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x10
	.long	.LASF663
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1b
	.file 40 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x28
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x4
	.file 41 "include/util/time.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x29
	.byte	0x4
	.file 42 "include/drivers/screen.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2a
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x19
	.long	.LASF746
	.byte	0x4
	.file 43 "include/fs/pipe.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x2b
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.6073a741a3dcccaa002c74a6289e336b,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF0
	.byte	0x5
	.uleb128 0
	.long	.LASF1
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0x5
	.uleb128 0
	.long	.LASF239
	.byte	0x5
	.uleb128 0
	.long	.LASF240
	.byte	0x5
	.uleb128 0
	.long	.LASF241
	.byte	0x5
	.uleb128 0
	.long	.LASF242
	.byte	0x5
	.uleb128 0
	.long	.LASF243
	.byte	0x5
	.uleb128 0
	.long	.LASF244
	.byte	0x5
	.uleb128 0
	.long	.LASF245
	.byte	0x5
	.uleb128 0
	.long	.LASF246
	.byte	0x5
	.uleb128 0
	.long	.LASF247
	.byte	0x5
	.uleb128 0
	.long	.LASF248
	.byte	0x5
	.uleb128 0
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0x5
	.uleb128 0
	.long	.LASF251
	.byte	0x5
	.uleb128 0
	.long	.LASF252
	.byte	0x5
	.uleb128 0
	.long	.LASF253
	.byte	0x5
	.uleb128 0
	.long	.LASF254
	.byte	0x5
	.uleb128 0
	.long	.LASF255
	.byte	0x5
	.uleb128 0
	.long	.LASF256
	.byte	0x5
	.uleb128 0
	.long	.LASF257
	.byte	0x5
	.uleb128 0
	.long	.LASF258
	.byte	0x5
	.uleb128 0
	.long	.LASF259
	.byte	0x5
	.uleb128 0
	.long	.LASF260
	.byte	0x5
	.uleb128 0
	.long	.LASF261
	.byte	0x5
	.uleb128 0
	.long	.LASF262
	.byte	0x5
	.uleb128 0
	.long	.LASF263
	.byte	0x5
	.uleb128 0
	.long	.LASF264
	.byte	0x5
	.uleb128 0
	.long	.LASF265
	.byte	0x5
	.uleb128 0
	.long	.LASF266
	.byte	0x5
	.uleb128 0
	.long	.LASF267
	.byte	0x5
	.uleb128 0
	.long	.LASF268
	.byte	0x5
	.uleb128 0
	.long	.LASF269
	.byte	0x5
	.uleb128 0
	.long	.LASF270
	.byte	0x5
	.uleb128 0
	.long	.LASF271
	.byte	0x5
	.uleb128 0
	.long	.LASF272
	.byte	0x5
	.uleb128 0
	.long	.LASF273
	.byte	0x5
	.uleb128 0
	.long	.LASF274
	.byte	0x5
	.uleb128 0
	.long	.LASF275
	.byte	0x5
	.uleb128 0
	.long	.LASF276
	.byte	0x5
	.uleb128 0
	.long	.LASF277
	.byte	0x5
	.uleb128 0
	.long	.LASF278
	.byte	0x5
	.uleb128 0
	.long	.LASF279
	.byte	0x5
	.uleb128 0
	.long	.LASF280
	.byte	0x5
	.uleb128 0
	.long	.LASF281
	.byte	0x5
	.uleb128 0
	.long	.LASF282
	.byte	0x5
	.uleb128 0
	.long	.LASF283
	.byte	0x5
	.uleb128 0
	.long	.LASF284
	.byte	0x5
	.uleb128 0
	.long	.LASF285
	.byte	0x5
	.uleb128 0
	.long	.LASF286
	.byte	0x5
	.uleb128 0
	.long	.LASF287
	.byte	0x5
	.uleb128 0
	.long	.LASF288
	.byte	0x5
	.uleb128 0
	.long	.LASF289
	.byte	0x5
	.uleb128 0
	.long	.LASF290
	.byte	0x5
	.uleb128 0
	.long	.LASF291
	.byte	0x5
	.uleb128 0
	.long	.LASF292
	.byte	0x5
	.uleb128 0
	.long	.LASF293
	.byte	0x5
	.uleb128 0
	.long	.LASF294
	.byte	0x5
	.uleb128 0
	.long	.LASF295
	.byte	0x5
	.uleb128 0
	.long	.LASF296
	.byte	0x5
	.uleb128 0
	.long	.LASF297
	.byte	0x5
	.uleb128 0
	.long	.LASF298
	.byte	0x5
	.uleb128 0
	.long	.LASF299
	.byte	0x5
	.uleb128 0
	.long	.LASF300
	.byte	0x5
	.uleb128 0
	.long	.LASF301
	.byte	0x5
	.uleb128 0
	.long	.LASF302
	.byte	0x5
	.uleb128 0
	.long	.LASF303
	.byte	0x5
	.uleb128 0
	.long	.LASF304
	.byte	0x5
	.uleb128 0
	.long	.LASF305
	.byte	0x5
	.uleb128 0
	.long	.LASF306
	.byte	0x5
	.uleb128 0
	.long	.LASF307
	.byte	0x5
	.uleb128 0
	.long	.LASF308
	.byte	0x5
	.uleb128 0
	.long	.LASF309
	.byte	0x5
	.uleb128 0
	.long	.LASF310
	.byte	0x5
	.uleb128 0
	.long	.LASF311
	.byte	0x5
	.uleb128 0
	.long	.LASF312
	.byte	0x5
	.uleb128 0
	.long	.LASF313
	.byte	0x5
	.uleb128 0
	.long	.LASF314
	.byte	0x5
	.uleb128 0
	.long	.LASF315
	.byte	0x5
	.uleb128 0
	.long	.LASF316
	.byte	0x5
	.uleb128 0
	.long	.LASF317
	.byte	0x5
	.uleb128 0
	.long	.LASF318
	.byte	0x5
	.uleb128 0
	.long	.LASF319
	.byte	0x5
	.uleb128 0
	.long	.LASF320
	.byte	0x5
	.uleb128 0
	.long	.LASF321
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF323
	.byte	0x5
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF325
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF327
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF329
	.byte	0x5
	.uleb128 0
	.long	.LASF330
	.byte	0x5
	.uleb128 0
	.long	.LASF331
	.byte	0x5
	.uleb128 0
	.long	.LASF332
	.byte	0x5
	.uleb128 0
	.long	.LASF333
	.byte	0x5
	.uleb128 0
	.long	.LASF334
	.byte	0x5
	.uleb128 0
	.long	.LASF335
	.byte	0x5
	.uleb128 0
	.long	.LASF336
	.byte	0x5
	.uleb128 0
	.long	.LASF337
	.byte	0x5
	.uleb128 0
	.long	.LASF338
	.byte	0x5
	.uleb128 0
	.long	.LASF339
	.byte	0x5
	.uleb128 0
	.long	.LASF340
	.byte	0x5
	.uleb128 0
	.long	.LASF341
	.byte	0x5
	.uleb128 0
	.long	.LASF342
	.byte	0x5
	.uleb128 0
	.long	.LASF343
	.byte	0x5
	.uleb128 0
	.long	.LASF344
	.byte	0x5
	.uleb128 0
	.long	.LASF345
	.byte	0x5
	.uleb128 0
	.long	.LASF346
	.byte	0x5
	.uleb128 0
	.long	.LASF347
	.byte	0x5
	.uleb128 0
	.long	.LASF348
	.byte	0x5
	.uleb128 0
	.long	.LASF349
	.byte	0x5
	.uleb128 0
	.long	.LASF350
	.byte	0x5
	.uleb128 0
	.long	.LASF351
	.byte	0x5
	.uleb128 0
	.long	.LASF352
	.byte	0x5
	.uleb128 0
	.long	.LASF353
	.byte	0x5
	.uleb128 0
	.long	.LASF354
	.byte	0x5
	.uleb128 0
	.long	.LASF355
	.byte	0x5
	.uleb128 0
	.long	.LASF356
	.byte	0x5
	.uleb128 0
	.long	.LASF357
	.byte	0x5
	.uleb128 0
	.long	.LASF358
	.byte	0x5
	.uleb128 0
	.long	.LASF359
	.byte	0x5
	.uleb128 0
	.long	.LASF360
	.byte	0x5
	.uleb128 0
	.long	.LASF361
	.byte	0x5
	.uleb128 0
	.long	.LASF362
	.byte	0x5
	.uleb128 0
	.long	.LASF363
	.byte	0x5
	.uleb128 0
	.long	.LASF364
	.byte	0x5
	.uleb128 0
	.long	.LASF365
	.byte	0x5
	.uleb128 0
	.long	.LASF366
	.byte	0x5
	.uleb128 0
	.long	.LASF367
	.byte	0x5
	.uleb128 0
	.long	.LASF368
	.byte	0x5
	.uleb128 0
	.long	.LASF369
	.byte	0x5
	.uleb128 0
	.long	.LASF370
	.byte	0x5
	.uleb128 0
	.long	.LASF371
	.byte	0x5
	.uleb128 0
	.long	.LASF372
	.byte	0x5
	.uleb128 0
	.long	.LASF373
	.byte	0x5
	.uleb128 0
	.long	.LASF374
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF375
	.byte	0x5
	.uleb128 0xf
	.long	.LASF376
	.byte	0x5
	.uleb128 0x10
	.long	.LASF377
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF379
	.byte	0x5
	.uleb128 0x23
	.long	.LASF380
	.byte	0x5
	.uleb128 0x24
	.long	.LASF381
	.byte	0x5
	.uleb128 0x25
	.long	.LASF382
	.byte	0x5
	.uleb128 0x26
	.long	.LASF383
	.byte	0x5
	.uleb128 0x27
	.long	.LASF384
	.byte	0x5
	.uleb128 0x28
	.long	.LASF385
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF386
	.byte	0x5
	.uleb128 0x31
	.long	.LASF387
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF388
	.byte	0x5
	.uleb128 0xd
	.long	.LASF389
	.byte	0x5
	.uleb128 0xe
	.long	.LASF390
	.byte	0x5
	.uleb128 0xf
	.long	.LASF391
	.byte	0x5
	.uleb128 0x10
	.long	.LASF392
	.byte	0x5
	.uleb128 0x11
	.long	.LASF393
	.byte	0x5
	.uleb128 0x12
	.long	.LASF394
	.byte	0x5
	.uleb128 0x13
	.long	.LASF395
	.byte	0x5
	.uleb128 0x14
	.long	.LASF396
	.byte	0x5
	.uleb128 0x15
	.long	.LASF397
	.byte	0x5
	.uleb128 0x16
	.long	.LASF398
	.byte	0x5
	.uleb128 0x17
	.long	.LASF399
	.byte	0x5
	.uleb128 0x18
	.long	.LASF400
	.byte	0x5
	.uleb128 0x19
	.long	.LASF401
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF402
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF404
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF405
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF406
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF407
	.byte	0x5
	.uleb128 0x20
	.long	.LASF408
	.byte	0x5
	.uleb128 0x21
	.long	.LASF409
	.byte	0x5
	.uleb128 0x22
	.long	.LASF410
	.byte	0x5
	.uleb128 0x23
	.long	.LASF411
	.byte	0x5
	.uleb128 0x24
	.long	.LASF412
	.byte	0x5
	.uleb128 0x25
	.long	.LASF413
	.byte	0x5
	.uleb128 0x26
	.long	.LASF414
	.byte	0x5
	.uleb128 0x27
	.long	.LASF415
	.byte	0x5
	.uleb128 0x28
	.long	.LASF416
	.byte	0x5
	.uleb128 0x29
	.long	.LASF417
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF418
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF419
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF420
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF421
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x5
	.uleb128 0x30
	.long	.LASF423
	.byte	0x5
	.uleb128 0x31
	.long	.LASF424
	.byte	0x5
	.uleb128 0x32
	.long	.LASF425
	.byte	0x5
	.uleb128 0x33
	.long	.LASF426
	.byte	0x5
	.uleb128 0x34
	.long	.LASF427
	.byte	0x5
	.uleb128 0x35
	.long	.LASF428
	.byte	0x5
	.uleb128 0x36
	.long	.LASF429
	.byte	0x5
	.uleb128 0x37
	.long	.LASF430
	.byte	0x5
	.uleb128 0x38
	.long	.LASF431
	.byte	0x5
	.uleb128 0x39
	.long	.LASF432
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF433
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF434
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF435
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF436
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF437
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF438
	.byte	0x5
	.uleb128 0x40
	.long	.LASF439
	.byte	0x5
	.uleb128 0x41
	.long	.LASF440
	.byte	0x5
	.uleb128 0x42
	.long	.LASF441
	.byte	0x5
	.uleb128 0x43
	.long	.LASF442
	.byte	0x5
	.uleb128 0x44
	.long	.LASF443
	.byte	0x5
	.uleb128 0x45
	.long	.LASF444
	.byte	0x5
	.uleb128 0x47
	.long	.LASF445
	.byte	0x5
	.uleb128 0x49
	.long	.LASF446
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF447
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF448
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF449
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF450
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF451
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF452
	.byte	0x5
	.uleb128 0x50
	.long	.LASF453
	.byte	0x5
	.uleb128 0x51
	.long	.LASF454
	.byte	0x5
	.uleb128 0x52
	.long	.LASF455
	.byte	0x5
	.uleb128 0x53
	.long	.LASF456
	.byte	0x5
	.uleb128 0x54
	.long	.LASF457
	.byte	0x5
	.uleb128 0x55
	.long	.LASF458
	.byte	0x5
	.uleb128 0x56
	.long	.LASF459
	.byte	0x5
	.uleb128 0x57
	.long	.LASF460
	.byte	0x5
	.uleb128 0x58
	.long	.LASF461
	.byte	0x5
	.uleb128 0x59
	.long	.LASF462
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF463
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF465
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF466
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF467
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF468
	.byte	0x5
	.uleb128 0x60
	.long	.LASF469
	.byte	0x5
	.uleb128 0x61
	.long	.LASF470
	.byte	0x5
	.uleb128 0x62
	.long	.LASF471
	.byte	0x5
	.uleb128 0x63
	.long	.LASF472
	.byte	0x5
	.uleb128 0x64
	.long	.LASF473
	.byte	0x5
	.uleb128 0x65
	.long	.LASF474
	.byte	0x5
	.uleb128 0x66
	.long	.LASF475
	.byte	0x5
	.uleb128 0x67
	.long	.LASF476
	.byte	0x5
	.uleb128 0x68
	.long	.LASF477
	.byte	0x5
	.uleb128 0x69
	.long	.LASF478
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF479
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF480
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF481
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF482
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF483
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF484
	.byte	0x5
	.uleb128 0x70
	.long	.LASF485
	.byte	0x5
	.uleb128 0x71
	.long	.LASF486
	.byte	0x5
	.uleb128 0x72
	.long	.LASF487
	.byte	0x5
	.uleb128 0x73
	.long	.LASF488
	.byte	0x5
	.uleb128 0x74
	.long	.LASF489
	.byte	0x5
	.uleb128 0x75
	.long	.LASF490
	.byte	0x5
	.uleb128 0x76
	.long	.LASF491
	.byte	0x5
	.uleb128 0x77
	.long	.LASF492
	.byte	0x5
	.uleb128 0x78
	.long	.LASF493
	.byte	0x5
	.uleb128 0x79
	.long	.LASF494
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF495
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF496
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF497
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF498
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF499
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF500
	.byte	0x5
	.uleb128 0x80
	.long	.LASF501
	.byte	0x5
	.uleb128 0x81
	.long	.LASF502
	.byte	0x5
	.uleb128 0x82
	.long	.LASF503
	.byte	0x5
	.uleb128 0x83
	.long	.LASF504
	.byte	0x5
	.uleb128 0x84
	.long	.LASF505
	.byte	0x5
	.uleb128 0x85
	.long	.LASF506
	.byte	0x5
	.uleb128 0x86
	.long	.LASF507
	.byte	0x5
	.uleb128 0x87
	.long	.LASF508
	.byte	0x5
	.uleb128 0x88
	.long	.LASF509
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF510
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF511
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF512
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF513
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF514
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF515
	.byte	0x5
	.uleb128 0x90
	.long	.LASF516
	.byte	0x5
	.uleb128 0x93
	.long	.LASF517
	.byte	0x5
	.uleb128 0x94
	.long	.LASF518
	.byte	0x5
	.uleb128 0x97
	.long	.LASF519
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.5.ce5cf6e0f5e04c88197477365e766aac,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF520
	.byte	0x5
	.uleb128 0x7
	.long	.LASF521
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.file.h.5.c8585a9e608af61a0b5da8f20e5b49fb,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF522
	.byte	0x5
	.uleb128 0x6
	.long	.LASF523
	.byte	0x5
	.uleb128 0x7
	.long	.LASF524
	.byte	0x5
	.uleb128 0x8
	.long	.LASF525
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF527
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF528
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x5
	.uleb128 0x21
	.long	.LASF530
	.byte	0x5
	.uleb128 0x26
	.long	.LASF531
	.byte	0x5
	.uleb128 0x29
	.long	.LASF532
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF533
	.byte	0x5
	.uleb128 0x37
	.long	.LASF534
	.byte	0x5
	.uleb128 0x38
	.long	.LASF535
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF536
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF537
	.byte	0x5
	.uleb128 0x59
	.long	.LASF538
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF539
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF540
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF541
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF542
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF543
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF544
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF545
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vfs.h.16.cddd221c8fce8abc96b253372c8dc337,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF548
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF549
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF550
	.byte	0x5
	.uleb128 0x23
	.long	.LASF551
	.byte	0x5
	.uleb128 0x24
	.long	.LASF552
	.byte	0x5
	.uleb128 0x25
	.long	.LASF553
	.byte	0x5
	.uleb128 0x26
	.long	.LASF554
	.byte	0x5
	.uleb128 0x29
	.long	.LASF555
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF557
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF558
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF559
	.byte	0x5
	.uleb128 0x30
	.long	.LASF560
	.byte	0x5
	.uleb128 0x31
	.long	.LASF561
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atomic.h.2.72172410bc17d188b39a3ef968b1c0a6,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF562
	.byte	0x5
	.uleb128 0x6
	.long	.LASF563
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.btree.h.21.672c46ec88ac5af8e0e0b3d80372ebac,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF564
	.byte	0x5
	.uleb128 0x16
	.long	.LASF565
	.byte	0x5
	.uleb128 0x17
	.long	.LASF566
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF567
	.byte	0x5
	.uleb128 0x11
	.long	.LASF568
	.byte	0x5
	.uleb128 0x12
	.long	.LASF569
	.byte	0x5
	.uleb128 0x14
	.long	.LASF570
	.byte	0x5
	.uleb128 0x15
	.long	.LASF571
	.byte	0x5
	.uleb128 0x18
	.long	.LASF572
	.byte	0x5
	.uleb128 0x19
	.long	.LASF573
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF574
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF575
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF576
	.byte	0x5
	.uleb128 0x20
	.long	.LASF577
	.byte	0x5
	.uleb128 0x22
	.long	.LASF578
	.byte	0x5
	.uleb128 0x23
	.long	.LASF579
	.byte	0x5
	.uleb128 0x25
	.long	.LASF580
	.byte	0x5
	.uleb128 0x26
	.long	.LASF581
	.byte	0x5
	.uleb128 0x27
	.long	.LASF582
	.byte	0x5
	.uleb128 0x28
	.long	.LASF583
	.byte	0x5
	.uleb128 0x29
	.long	.LASF584
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF585
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF586
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF587
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF588
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF589
	.byte	0x5
	.uleb128 0x30
	.long	.LASF590
	.byte	0x5
	.uleb128 0x31
	.long	.LASF591
	.byte	0x5
	.uleb128 0x32
	.long	.LASF592
	.byte	0x5
	.uleb128 0x33
	.long	.LASF593
	.byte	0x5
	.uleb128 0x34
	.long	.LASF594
	.byte	0x5
	.uleb128 0x35
	.long	.LASF595
	.byte	0x5
	.uleb128 0x37
	.long	.LASF596
	.byte	0x5
	.uleb128 0x38
	.long	.LASF597
	.byte	0x5
	.uleb128 0x39
	.long	.LASF598
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF599
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF600
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF601
	.byte	0x5
	.uleb128 0x40
	.long	.LASF602
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vnode.h.26.72bdf34e718f60f64c3467d6030617ec,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF604
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF605
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF606
	.byte	0x5
	.uleb128 0x5
	.long	.LASF607
	.byte	0x5
	.uleb128 0x6
	.long	.LASF608
	.byte	0x5
	.uleb128 0x7
	.long	.LASF609
	.byte	0x5
	.uleb128 0xa
	.long	.LASF610
	.byte	0x5
	.uleb128 0xc
	.long	.LASF611
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF612
	.byte	0x5
	.uleb128 0x8
	.long	.LASF613
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF614
	.byte	0x5
	.uleb128 0x7
	.long	.LASF615
	.byte	0x5
	.uleb128 0x8
	.long	.LASF616
	.byte	0x5
	.uleb128 0x9
	.long	.LASF617
	.byte	0x5
	.uleb128 0xa
	.long	.LASF618
	.byte	0x5
	.uleb128 0xb
	.long	.LASF619
	.byte	0x5
	.uleb128 0xc
	.long	.LASF620
	.byte	0x5
	.uleb128 0xd
	.long	.LASF621
	.byte	0x5
	.uleb128 0xe
	.long	.LASF622
	.byte	0x5
	.uleb128 0x10
	.long	.LASF623
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF624
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF625
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF626
	.byte	0x5
	.uleb128 0x20
	.long	.LASF627
	.byte	0x5
	.uleb128 0x21
	.long	.LASF628
	.byte	0x5
	.uleb128 0x23
	.long	.LASF623
	.byte	0x5
	.uleb128 0x24
	.long	.LASF629
	.byte	0x5
	.uleb128 0x25
	.long	.LASF630
	.byte	0x5
	.uleb128 0x26
	.long	.LASF631
	.byte	0x5
	.uleb128 0x28
	.long	.LASF632
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF633
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF634
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF635
	.byte	0x5
	.uleb128 0x30
	.long	.LASF636
	.byte	0x5
	.uleb128 0x31
	.long	.LASF637
	.byte	0x5
	.uleb128 0x32
	.long	.LASF638
	.byte	0x5
	.uleb128 0x33
	.long	.LASF639
	.byte	0x5
	.uleb128 0x35
	.long	.LASF640
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF641
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF643
	.byte	0x5
	.uleb128 0x11
	.long	.LASF644
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF645
	.byte	0x5
	.uleb128 0xab
	.long	.LASF646
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.slab.h.6.8470dc308bec9d4f2bece37a0e7db0fd,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF648
	.byte	0x5
	.uleb128 0xa
	.long	.LASF649
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF650
	.byte	0x5
	.uleb128 0x9
	.long	.LASF651
	.byte	0x5
	.uleb128 0xa
	.long	.LASF652
	.byte	0x5
	.uleb128 0xb
	.long	.LASF653
	.byte	0x5
	.uleb128 0xd
	.long	.LASF654
	.byte	0x5
	.uleb128 0xe
	.long	.LASF655
	.byte	0x5
	.uleb128 0x10
	.long	.LASF656
	.byte	0x5
	.uleb128 0x11
	.long	.LASF657
	.byte	0x5
	.uleb128 0x12
	.long	.LASF658
	.byte	0x5
	.uleb128 0x13
	.long	.LASF659
	.byte	0x5
	.uleb128 0x19
	.long	.LASF660
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF661
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF662
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF664
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF665
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF666
	.byte	0x5
	.uleb128 0x20
	.long	.LASF667
	.byte	0x5
	.uleb128 0x21
	.long	.LASF668
	.byte	0x5
	.uleb128 0x22
	.long	.LASF669
	.byte	0x5
	.uleb128 0x23
	.long	.LASF670
	.byte	0x5
	.uleb128 0x24
	.long	.LASF671
	.byte	0x5
	.uleb128 0x25
	.long	.LASF672
	.byte	0x5
	.uleb128 0x27
	.long	.LASF673
	.byte	0x5
	.uleb128 0x28
	.long	.LASF674
	.byte	0x5
	.uleb128 0x29
	.long	.LASF675
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF677
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF678
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF679
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF680
	.byte	0x5
	.uleb128 0x34
	.long	.LASF681
	.byte	0x5
	.uleb128 0x35
	.long	.LASF682
	.byte	0x5
	.uleb128 0x36
	.long	.LASF683
	.byte	0x5
	.uleb128 0x37
	.long	.LASF684
	.byte	0x5
	.uleb128 0x38
	.long	.LASF685
	.byte	0x5
	.uleb128 0x39
	.long	.LASF686
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF687
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF688
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF689
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF690
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF691
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF692
	.byte	0x5
	.uleb128 0x40
	.long	.LASF693
	.byte	0x5
	.uleb128 0x41
	.long	.LASF694
	.byte	0x5
	.uleb128 0x42
	.long	.LASF695
	.byte	0x5
	.uleb128 0x43
	.long	.LASF696
	.byte	0x5
	.uleb128 0x44
	.long	.LASF697
	.byte	0x5
	.uleb128 0x45
	.long	.LASF698
	.byte	0x5
	.uleb128 0x46
	.long	.LASF699
	.byte	0x5
	.uleb128 0x47
	.long	.LASF700
	.byte	0x5
	.uleb128 0x48
	.long	.LASF701
	.byte	0x5
	.uleb128 0x49
	.long	.LASF702
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF703
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF704
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF705
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF706
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF707
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF708
	.byte	0x5
	.uleb128 0x50
	.long	.LASF709
	.byte	0x5
	.uleb128 0x51
	.long	.LASF710
	.byte	0x5
	.uleb128 0x52
	.long	.LASF711
	.byte	0x5
	.uleb128 0x54
	.long	.LASF712
	.byte	0x5
	.uleb128 0x55
	.long	.LASF713
	.byte	0x5
	.uleb128 0x56
	.long	.LASF714
	.byte	0x5
	.uleb128 0x57
	.long	.LASF715
	.byte	0x5
	.uleb128 0x58
	.long	.LASF716
	.byte	0x5
	.uleb128 0x59
	.long	.LASF717
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF718
	.byte	0x5
	.uleb128 0x64
	.long	.LASF719
	.byte	0x5
	.uleb128 0x97
	.long	.LASF720
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF721
	.byte	0x5
	.uleb128 0xac
	.long	.LASF722
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF723
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF724
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF725
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF726
	.byte	0x5
	.uleb128 0xee
	.long	.LASF727
	.byte	0x5
	.uleb128 0x101
	.long	.LASF728
	.byte	0x5
	.uleb128 0x104
	.long	.LASF729
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF730
	.byte	0x5
	.uleb128 0x126
	.long	.LASF731
	.byte	0x5
	.uleb128 0x127
	.long	.LASF732
	.byte	0x5
	.uleb128 0x128
	.long	.LASF733
	.byte	0x5
	.uleb128 0x129
	.long	.LASF734
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF735
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF736
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF737
	.byte	0x5
	.uleb128 0x6
	.long	.LASF738
	.byte	0x5
	.uleb128 0x7
	.long	.LASF739
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.screen.h.51.6629e140a1f99b39f2df4938dfb36814,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF740
	.byte	0x5
	.uleb128 0x34
	.long	.LASF741
	.byte	0x5
	.uleb128 0x35
	.long	.LASF742
	.byte	0x5
	.uleb128 0x36
	.long	.LASF743
	.byte	0x5
	.uleb128 0x37
	.long	.LASF744
	.byte	0x5
	.uleb128 0x38
	.long	.LASF745
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stat.h.31.78d5edcdb301ca55aecd74fda105c139,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF747
	.byte	0x5
	.uleb128 0x20
	.long	.LASF748
	.byte	0x5
	.uleb128 0x21
	.long	.LASF749
	.byte	0x5
	.uleb128 0x22
	.long	.LASF750
	.byte	0x5
	.uleb128 0x23
	.long	.LASF751
	.byte	0x5
	.uleb128 0x24
	.long	.LASF752
	.byte	0x5
	.uleb128 0x26
	.long	.LASF753
	.byte	0x5
	.uleb128 0x27
	.long	.LASF754
	.byte	0x5
	.uleb128 0x28
	.long	.LASF755
	.byte	0x5
	.uleb128 0x29
	.long	.LASF756
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF758
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF759
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF585:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF708:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF772:
	.string	"size_t"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF890:
	.string	"unlink"
.LASF407:
	.string	"ENOTDIR 20"
.LASF1001:
	.string	"sched_queue_init"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF520:
	.string	"NULL 0"
.LASF950:
	.string	"kc_ctx"
.LASF714:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF683:
	.string	"DBG_MM DBG_MODE(1)"
.LASF570:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF958:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF696:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF914:
	.string	"st_blksize"
.LASF915:
	.string	"st_blocks"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF779:
	.string	"f_pos"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF745:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF506:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF653:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF877:
	.string	"chardev"
.LASF544:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF588:
	.string	"PAGE_SHIFT_1GB 30"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF534:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF414:
	.string	"EFBIG 27"
.LASF567:
	.string	"PAGE_SHIFT 12"
.LASF1042:
	.string	"proc_create"
.LASF764:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF1004:
	.string	"dbg_print"
.LASF618:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF564:
	.string	"BRANCHING_FACTOR 2"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF1020:
	.string	"__func__"
.LASF594:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF831:
	.string	"fs_dev"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF944:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF510:
	.string	"ENOMEDIUM 123"
.LASF698:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF658:
	.string	"INTR_APICERR 0xff"
.LASF980:
	.string	"fput"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF901:
	.string	"d_off"
.LASF883:
	.string	"write"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF709:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF1036:
	.string	"proc_kill"
.LASF820:
	.string	"kt_state"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF566:
	.string	"MAX_CHILDREN 2*BRANCHING_FACTOR"
.LASF654:
	.string	"INTR_APICTIMER 0xf0"
.LASF609:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF545:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF985:
	.string	"sched_broadcast_on"
.LASF502:
	.string	"EINPROGRESS 115"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF483:
	.string	"EPFNOSUPPORT 96"
.LASF365:
	.string	"__linux__ 1"
.LASF397:
	.string	"ECHILD 10"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF649:
	.string	"SLAB_CHECK_FREE "
.LASF436:
	.string	"EUNATCH 49"
.LASF515:
	.string	"EKEYREVOKED 128"
.LASF344:
	.string	"__x86_64 1"
.LASF1028:
	.string	"found"
.LASF1000:
	.string	"list_insert_tail"
.LASF881:
	.string	"chardev_ops"
.LASF896:
	.string	"acquire"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF842:
	.string	"n_keys"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF793:
	.string	"vn_state"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF941:
	.string	"c_rip"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF727:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF549:
	.string	"STR_MAX 32"
.LASF895:
	.string	"stat"
.LASF408:
	.string	"EISDIR 21"
.LASF554:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF377:
	.string	"TICK_MSECS 10"
.LASF955:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF387:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF975:
	.string	"next_pid"
.LASF571:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF395:
	.string	"ENOEXEC 8"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF632:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF415:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF1048:
	.string	"lessthaneq"
.LASF829:
	.string	"umount"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF498:
	.string	"ECONNREFUSED 111"
.LASF809:
	.string	"km_waitq"
.LASF933:
	.string	"p_cwd"
.LASF773:
	.string	"ssize_t"
.LASF731:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF755:
	.string	"S_ISDIR(m) (_S_TYPE(m) == S_IFDIR)"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF742:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF847:
	.string	"children"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF717:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF430:
	.string	"EIDRM 43"
.LASF1044:
	.string	"proc_lookup"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF646:
	.string	"PID_INIT 1"
.LASF1064:
	.string	"proc/proc.c"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF863:
	.string	"mo_type"
.LASF581:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF404:
	.string	"EEXIST 17"
.LASF542:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF700:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF824:
	.string	"kt_preemption_count"
.LASF869:
	.string	"blockdev"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF575:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF477:
	.string	"EMSGSIZE 90"
.LASF949:
	.string	"kc_id"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF689:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF811:
	.string	"km_link"
.LASF728:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF602:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF858:
	.string	"get_pframe"
.LASF413:
	.string	"ETXTBSY 26"
.LASF481:
	.string	"ESOCKTNOSUPPORT 94"
.LASF768:
	.string	"long int"
.LASF910:
	.string	"st_size"
.LASF634:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF827:
	.string	"read_vnode"
.LASF663:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF531:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF900:
	.string	"d_ino"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF631:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF967:
	.string	"curcore"
.LASF1051:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF388:
	.string	"EPERM 1"
.LASF468:
	.string	"ELIBSCN 81"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF763:
	.string	"short unsigned int"
.LASF693:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF650:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF1005:
	.string	"dbg_color"
.LASF699:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF357:
	.string	"__FXSR__ 1"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF423:
	.string	"ENAMETOOLONG 36"
.LASF444:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF561:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF932:
	.string	"p_files"
.LASF833:
	.string	"fs_root"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF737:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF778:
	.string	"devid_t"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF411:
	.string	"EMFILE 24"
.LASF1018:
	.string	"proc_list_info"
.LASF681:
	.string	"DBG_ALL (~0ULL)"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF519:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF489:
	.string	"ENETRESET 102"
.LASF954:
	.string	"KT_NO_STATE"
.LASF443:
	.string	"EBADRQC 56"
.LASF760:
	.string	"signed char"
.LASF583:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF666:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF684:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF908:
	.string	"st_uid"
.LASF412:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF462:
	.string	"EOVERFLOW 75"
.LASF715:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF940:
	.string	"context"
.LASF492:
	.string	"ENOBUFS 105"
.LASF821:
	.string	"kt_plink"
.LASF484:
	.string	"EAFNOSUPPORT 97"
.LASF416:
	.string	"ESPIPE 29"
.LASF749:
	.string	"S_IFBLK 0x0400"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF826:
	.string	"fs_ops"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF761:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF948:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF906:
	.string	"st_rdev"
.LASF472:
	.string	"ERESTART 85"
.LASF968:
	.string	"curproc"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF705:
	.string	"DBG_THR DBG_MODE(23)"
.LASF621:
	.string	"PT_SIZE 0x080"
.LASF1024:
	.string	"do_waitpid"
.LASF435:
	.string	"ELNRNG 48"
.LASF832:
	.string	"fs_type"
.LASF624:
	.string	"INDEX_MASK 0b111111111"
.LASF807:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF722:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF661:
	.string	"IPL_HIGH 0xe0"
.LASF856:
	.string	"pframe_t"
.LASF837:
	.string	"vnode_list_mutex"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF418:
	.string	"EMLINK 31"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF744:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF680:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF461:
	.string	"EBADMSG 74"
.LASF488:
	.string	"ENETUNREACH 101"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF994:
	.string	"do_close"
.LASF739:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF446:
	.string	"EBFONT 59"
.LASF665:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF1026:
	.string	"deadchild"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF776:
	.string	"blocknum_t"
.LASF721:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF579:
	.string	"USE_1GB_PAGES 1"
.LASF798:
	.string	"char"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF538:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF921:
	.string	"p_pid"
.LASF939:
	.string	"pml4_t"
.LASF482:
	.string	"EOPNOTSUPP 95"
.LASF539:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF782:
	.string	"f_vnode"
.LASF874:
	.string	"read_block"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF804:
	.string	"ktqueue"
.LASF480:
	.string	"EPROTONOSUPPORT 93"
.LASF509:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF723:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF662:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF1012:
	.string	"dbg_panic"
.LASF521:
	.string	"packed __attribute__((packed))"
.LASF754:
	.string	"S_ISCHR(m) (_S_TYPE(m) == S_IFCHR)"
.LASF815:
	.string	"kt_retval"
.LASF425:
	.string	"ENOSYS 38"
.LASF1054:
	.string	"intr_disable"
.LASF902:
	.string	"d_name"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF673:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF551:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF437:
	.string	"ENOCSI 50"
.LASF552:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF946:
	.string	"c_kstacksz"
.LASF610:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF740:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF596:
	.string	"PAGE_SHIFT_512GB 39"
.LASF741:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF361:
	.string	"__SEG_FS 1"
.LASF920:
	.string	"proc"
.LASF1058:
	.string	"flags"
.LASF1035:
	.string	"__next_proc"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF490:
	.string	"ECONNABORTED 103"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF835:
	.string	"fs_vnode_allocator"
.LASF427:
	.string	"ELOOP 40"
.LASF523:
	.string	"FMODE_WRITE 2"
.LASF924:
	.string	"p_children"
.LASF556:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF1053:
	.string	"intr_wait"
.LASF599:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF1055:
	.string	"intr_enable"
.LASF692:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF854:
	.string	"pf_mutex"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF617:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF440:
	.string	"EBADR 53"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF884:
	.string	"mmap"
.LASF996:
	.string	"vref"
.LASF712:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF1060:
	.string	"atomic_dec_and_test"
.LASF886:
	.string	"vnode_ops"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF1056:
	.string	"_proc_getid"
.LASF1067:
	.string	"vmmap_create"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF913:
	.string	"st_ctime"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF635:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF783:
	.string	"file"
.LASF467:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF785:
	.string	"vn_ops"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF458:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF607:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF930:
	.string	"p_pml4"
.LASF960:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF384:
	.string	"NAME_LEN 28"
.LASF1027:
	.string	"sleep"
.LASF1065:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF1031:
	.string	"do_exit"
.LASF557:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF1047:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF447:
	.string	"ENOSTR 60"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF759:
	.string	"S_ISFIFO(m) (_S_TYPE(m) == S_IFIFO)"
.LASF1063:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF959:
	.string	"KT_EXITED"
.LASF499:
	.string	"EHOSTDOWN 112"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF800:
	.string	"l_next"
.LASF382:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF678:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF620:
	.string	"PT_DIRTY 0x040"
.LASF1014:
	.string	"osize"
.LASF1002:
	.string	"pt_create"
.LASF398:
	.string	"EAGAIN 11"
.LASF791:
	.string	"vn_i"
.LASF801:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF500:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF790:
	.string	"vn_len"
.LASF966:
	.string	"idleproc"
.LASF702:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF421:
	.string	"ERANGE 34"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF386:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF752:
	.string	"S_IFIFO 0x2000"
.LASF813:
	.string	"kt_ctx"
.LASF429:
	.string	"ENOMSG 42"
.LASF1045:
	.string	"restart"
.LASF675:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF878:
	.string	"cd_id"
.LASF892:
	.string	"mkdir"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF525:
	.string	"FMODE_MAX_VALUE (FMODE_READ | FMODE_WRITE | FMODE_APPEND)"
.LASF1059:
	.string	"atomic_inc_not_zero"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF1010:
	.string	"list_link_init"
.LASF606:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF909:
	.string	"st_gid"
.LASF962:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF638:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF396:
	.string	"EBADF 9"
.LASF734:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF718:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF726:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF931:
	.string	"p_wait"
.LASF839:
	.string	"fs_ops_t"
.LASF894:
	.string	"readdir"
.LASF945:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF707:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF750:
	.string	"S_IFREG 0x0800"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF1032:
	.string	"proc_destroy"
.LASF983:
	.string	"sched_switch"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF777:
	.string	"ino_t"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF770:
	.string	"long unsigned int"
.LASF672:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF376:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF703:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF471:
	.string	"EILSEQ 84"
.LASF1023:
	.string	"status"
.LASF495:
	.string	"ESHUTDOWN 108"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF648:
	.string	"SLAB_REDZONE 0xdeadbeefdeadbeef"
.LASF419:
	.string	"EPIPE 32"
.LASF402:
	.string	"ENOTBLK 15"
.LASF753:
	.string	"_S_TYPE(m) ((m)&0xFF00)"
.LASF572:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF593:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF873:
	.string	"blockdev_ops"
.LASF979:
	.string	"pt_destroy"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF375:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF927:
	.string	"p_child_link"
.LASF889:
	.string	"link"
.LASF655:
	.string	"INTR_KEYBOARD 0xe0"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF973:
	.string	"proc_allocator"
.LASF456:
	.string	"ESRMNT 69"
.LASF478:
	.string	"EPROTOTYPE 91"
.LASF923:
	.string	"p_threads"
.LASF987:
	.string	"list_link_is_linked"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF816:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF993:
	.string	"vput"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF630:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF548:
	.string	"name_match(fname,name,namelen) (strlen(fname) == namelen && !strncmp((fname), (name), (namelen)))"
.LASF563:
	.string	"ATOMIC_INIT(i) (i)"
.LASF512:
	.string	"ECANCELED 125"
.LASF586:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF943:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF540:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF1033:
	.string	"__next_thr"
.LASF453:
	.string	"EREMOTE 66"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF644:
	.string	"PROC_NAME_LEN 256"
.LASF645:
	.string	"PID_IDLE 0"
.LASF1038:
	.string	"retval"
.LASF875:
	.string	"write_block"
.LASF355:
	.string	"__SSE__ 1"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF485:
	.string	"EADDRINUSE 98"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF1034:
	.string	"proc_kill_all"
.LASF794:
	.string	"vn_waitq"
.LASF399:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF965:
	.string	"proc_t"
.LASF558:
	.string	"DISK_MAJOR 1"
.LASF978:
	.string	"slab_obj_free"
.LASF464:
	.string	"EBADFD 77"
.LASF417:
	.string	"EROFS 30"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF686:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF475:
	.string	"ENOTSOCK 88"
.LASF845:
	.string	"keys"
.LASF434:
	.string	"EL3RST 47"
.LASF394:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF888:
	.string	"lookup"
.LASF724:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF812:
	.string	"kthread"
.LASF657:
	.string	"INTR_SPURIOUS 0xfe"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF1016:
	.string	"__next_p"
.LASF491:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF706:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF608:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF479:
	.string	"ENOPROTOOPT 92"
.LASF445:
	.string	"EDEADLOCK EDEADLK"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF720:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF995:
	.string	"vunlock"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF449:
	.string	"ETIME 62"
.LASF808:
	.string	"kmutex"
.LASF562:
	.string	"ATOMIC_H "
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF830:
	.string	"sync"
.LASF494:
	.string	"ENOTCONN 107"
.LASF1021:
	.string	"child"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF406:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF668:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF818:
	.string	"kt_cancelled"
.LASF1049:
	.string	"greaterthan"
.LASF559:
	.string	"MEM_MAJOR 1"
.LASF604:
	.string	"VNODE_LOADING 0"
.LASF613:
	.string	"VMMAP_DIR_HILO 2"
.LASF1017:
	.string	"parent"
.LASF507:
	.string	"EISNAM 120"
.LASF508:
	.string	"EREMOTEIO 121"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF614:
	.string	"PT_PRESENT 0x001"
.LASF756:
	.string	"S_ISBLK(m) (_S_TYPE(m) == S_IFBLK)"
.LASF814:
	.string	"kt_kstack"
.LASF677:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF669:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF870:
	.string	"bd_id"
.LASF802:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF951:
	.string	"kc_queue"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF855:
	.string	"pf_link"
.LASF529:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF1040:
	.string	"__next_held"
.LASF400:
	.string	"EACCES 13"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF442:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF541:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF803:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF882:
	.string	"read"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF766:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF553:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF991:
	.string	"list_remove"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF928:
	.string	"p_status"
.LASF659:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF636:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF516:
	.string	"EKEYREJECTED 129"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF953:
	.string	"core_t"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF736:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF1022:
	.string	"__next_child"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF598:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF674:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF775:
	.string	"pid_t"
.LASF379:
	.string	"PF_HASH_SIZE 17"
.LASF1013:
	.string	"slab_allocator_create"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF989:
	.string	"initproc_finish"
.LASF1057:
	.string	"intr_enabled"
.LASF576:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF704:
	.string	"DBG_KB DBG_MODE(22)"
.LASF409:
	.string	"EINVAL 22"
.LASF633:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF1041:
	.string	"proc_cleanup"
.LASF887:
	.string	"mknod"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF992:
	.string	"list_empty"
.LASF851:
	.string	"pf_loc"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF751:
	.string	"S_IFLNK 0x1000"
.LASF354:
	.string	"__MMX__ 1"
.LASF497:
	.string	"ETIMEDOUT 110"
.LASF891:
	.string	"rename"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF1066:
	.string	"slab_allocator"
.LASF652:
	.string	"INTR_GPF 0x0d"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF580:
	.string	"PAGE_SHIFT_2MB 21"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF799:
	.string	"list"
.LASF899:
	.string	"dirent"
.LASF919:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF822:
	.string	"kt_qlink"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF952:
	.string	"kc_csdpaddr"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF603:
	.string	"BLOCK_SIZE PAGE_SIZE"
.LASF990:
	.string	"list_insert_before"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF977:
	.string	"sched_sleep_on"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF938:
	.string	"phys"
.LASF907:
	.string	"st_nlink"
.LASF774:
	.string	"off_t"
.LASF866:
	.string	"mo_pframes"
.LASF859:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF806:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF697:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF796:
	.string	"vn_link"
.LASF626:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF601:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF1011:
	.string	"list_init"
.LASF871:
	.string	"bd_ops"
.LASF679:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF569:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF797:
	.string	"file_t"
.LASF651:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF819:
	.string	"kt_wchan"
.LASF623:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF911:
	.string	"st_atime"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF518:
	.string	"ENOTRECOVERABLE 131"
.LASF982:
	.string	"kthread_cancel"
.LASF676:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF342:
	.string	"__amd64 1"
.LASF868:
	.string	"mo_btree"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF405:
	.string	"EXDEV 18"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF865:
	.string	"mo_refcount"
.LASF590:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF876:
	.string	"blockdev_t"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF403:
	.string	"EBUSY 16"
.LASF905:
	.string	"st_dev"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF656:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF378:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF789:
	.string	"vn_mode"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF843:
	.string	"n_children"
.LASF864:
	.string	"mo_ops"
.LASF380:
	.string	"MAXPATHLEN 1024"
.LASF628:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF971:
	.string	"dbg_modes"
.LASF788:
	.string	"vn_vno"
.LASF503:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1015:
	.string	"size"
.LASF465:
	.string	"EREMCHG 78"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF547:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF641:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF1008:
	.string	"pt_get"
.LASF517:
	.string	"EOWNERDEAD 130"
.LASF757:
	.string	"S_ISREG(m) (_S_TYPE(m) == S_IFREG)"
.LASF792:
	.string	"vn_devid"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF925:
	.string	"p_pproc"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF536:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF860:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF828:
	.string	"delete_vnode"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF957:
	.string	"KT_SLEEP"
.LASF543:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF713:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF746:
	.string	"d_fileno d_ino"
.LASF885:
	.string	"chardev_t"
.LASF537:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF786:
	.string	"vn_fs"
.LASF937:
	.string	"vmmap_t"
.LASF823:
	.string	"kt_mutexes"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF589:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF729:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF964:
	.string	"proc_state_t"
.LASF1069:
	.string	"__atomic_add_unless"
.LASF647:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF664:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF528:
	.string	"noreturn __attribute__((noreturn))"
.LASF747:
	.string	"S_IFCHR 0x0100"
.LASF857:
	.string	"mobj_ops"
.LASF533:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF501:
	.string	"EALREADY 114"
.LASF401:
	.string	"EFAULT 14"
.LASF390:
	.string	"ESRCH 3"
.LASF947:
	.string	"context_t"
.LASF825:
	.string	"kmutex_t"
.LASF1009:
	.string	"memset"
.LASF942:
	.string	"c_rsp"
.LASF527:
	.string	"inline __attribute__((always_inline, used))"
.LASF597:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF853:
	.string	"pf_dirty"
.LASF934:
	.string	"p_brk"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF1006:
	.string	"strncpy"
.LASF381:
	.string	"MAX_FILES 1024"
.LASF963:
	.string	"PROC_DEAD"
.LASF640:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF457:
	.string	"ECOMM 70"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF530:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF439:
	.string	"EBADE 52"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF862:
	.string	"mobj"
.LASF486:
	.string	"EADDRNOTAVAIL 99"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF1062:
	.string	"atomic_set"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF476:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF795:
	.string	"vn_dev"
.LASF695:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF591:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF984:
	.string	"preemption_enabled"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF550:
	.string	"MINOR_BITS 8"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF577:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF615:
	.string	"PT_WRITE 0x002"
.LASF592:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF879:
	.string	"cd_ops"
.LASF389:
	.string	"ENOENT 2"
.LASF852:
	.string	"pf_addr"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF710:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF690:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF524:
	.string	"FMODE_APPEND 4"
.LASF974:
	.string	"proc_initproc"
.LASF981:
	.string	"kthread_destroy"
.LASF426:
	.string	"ENOTEMPTY 39"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF637:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF912:
	.string	"st_mtime"
.LASF898:
	.string	"truncate_file"
.LASF616:
	.string	"PT_USER 0x004"
.LASF487:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF682:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF972:
	.string	"proc_list"
.LASF936:
	.string	"p_vmmap"
.LASF730:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF1043:
	.string	"name"
.LASF451:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF667:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF694:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF496:
	.string	"ETOOMANYREFS 109"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF701:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF916:
	.string	"vnode_t"
.LASF474:
	.string	"EUSERS 87"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF762:
	.string	"short int"
.LASF850:
	.string	"pf_pagenum"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF769:
	.string	"uint64_t"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF432:
	.string	"EL2NSYNC 45"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF578:
	.string	"USE_2MB_PAGES 1"
.LASF670:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF392:
	.string	"EIO 5"
.LASF532:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF410:
	.string	"ENFILE 23"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF997:
	.string	"vlock"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF391:
	.string	"EINTR 4"
.LASF719:
	.ascii	"DBG_TAB {\"error\", DBG_ERROR, _BWHITE_}, {\"temp\", DBG_TEM"
	.ascii	"P, _NORMAL_}, {\"print\", DBG_PRINT, _NORMAL_}, {\"test\", D"
	.ascii	"BG_TEST, _RED_}, {\"testpass\", DBG_TESTPASS, _GREEN_}, {\"t"
	.ascii	"estfail\", DBG_TESTFAIL, _RED_}, {\"proc\", DBG_PROC, _BLUE_"
	.ascii	"}, {\"thr\", DBG_THR, _CYAN_}, {\"sched\", DBG_SCHED, _GREEN"
	.ascii	"_}, {\"init\", DBG_INIT, _NORMAL_}, {\"term\", DBG_TERM, _BM"
	.ascii	"AGENTA_}, {\"disk\", DBG_DISK, _YELLOW_}, {\"memdev\", DBG_M"
	.ascii	"EMDEV, _BBLUE_}, {\"vfs\", DBG_VFS, _WHITE_}, {\"fref\", DBG"
	.ascii	"_FREF, _MAGENTA_}, {\"vnref\", DBG_VNREF, _CYAN_}, {\"s5fs\""
	.ascii	", DBG_S5FS, _BRED_}, {\"pframe\", DBG_PFRAME, _BMAGENTA_}, {"
	.ascii	"\"anon\", DBG_ANON, _WHITE_}, {\"vmmap\", DBG_VMMAP, _BGREEN"
	.ascii	"_}, {\"fork\", DBG_FORK, _BYELLOW_}, {\"brk\", DBG_BRK, _YEL"
	.ascii	"LOW_}, {\"exec\", DBG_EXEC, _BRED_}, {\"elf\", DBG_ELF, _BGR"
	.ascii	"EEN_}, {\"pgtbl\", DBG_PGTBL, _BBLUE_}, {\"osyscall\", DBG_O"
	.ascii	"SYSCALL, _BMAGENTA_}, {\"vm\", DBG_VM, _RED_}, {\"btree\", D"
	.ascii	"BG_BTREE, _NORMAL_}, {\"syscall\", DBG_SYSCALL, _RED_}, "
	.string	"{\"intr\", DBG_INTR, _BRED_}, {\"kmalloc\", DBG_KMALLOC, _MAGENTA_}, {\"pagealloc\", DBG_PAGEALLOC, _WHITE_}, {\"kb\", DBG_KB, _BLUE_}, {\"core\", DBG_CORE, _GREEN_}, {\"mm\", DBG_MM, _RED_}, {\"user\", DBG_USER, _BYELLOW_}, {\"all\", DBG_ALL, _NORMAL_}, { NULL, 0, NULL }"
.LASF1037:
	.string	"proc_thread_exiting"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF470:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF454:
	.string	"ENOLINK 67"
.LASF473:
	.string	"ESTRPIPE 86"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF810:
	.string	"km_holder"
.LASF573:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF781:
	.string	"f_refcount"
.LASF574:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF420:
	.string	"EDOM 33"
.LASF1029:
	.string	"candidate"
.LASF642:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF587:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF393:
	.string	"ENXIO 6"
.LASF526:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF639:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF595:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF1007:
	.string	"snprintf"
.LASF872:
	.string	"bd_link"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF452:
	.string	"ENOPKG 65"
.LASF1019:
	.string	"proc_info"
.LASF612:
	.string	"VMMAP_DIR_LOHI 1"
.LASF1061:
	.string	"atomic_inc"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF511:
	.string	"EMEDIUMTYPE 124"
.LASF780:
	.string	"f_mode"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF805:
	.string	"tq_list"
.LASF450:
	.string	"ENOSR 63"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF0:
	.string	"__STDC__ 1"
.LASF513:
	.string	"ENOKEY 126"
.LASF917:
	.string	"vmmap"
.LASF738:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF784:
	.string	"vnode"
.LASF976:
	.string	"kthread_exit"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF844:
	.string	"is_leaf"
.LASF422:
	.string	"EDEADLK 35"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF999:
	.string	"memcpy"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF1030:
	.string	"__next_candidate"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF903:
	.string	"st_mode"
.LASF687:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF441:
	.string	"EXFULL 54"
.LASF935:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF431:
	.string	"ECHRNG 44"
.LASF841:
	.string	"btree_node"
.LASF926:
	.string	"p_list_link"
.LASF733:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF838:
	.string	"vnode_rename_mutex"
.LASF685:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF459:
	.string	"EMULTIHOP 72"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF716:
	.string	"DBG_USER DBG_MODE(38)"
.LASF732:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF735:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF861:
	.string	"destructor"
.LASF535:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF560:
	.string	"MEM_NULL_MINOR 0"
.LASF765:
	.string	"uint32_t"
.LASF582:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF836:
	.string	"vnode_list"
.LASF1039:
	.string	"held"
.LASF867:
	.string	"mo_mutex"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF880:
	.string	"cd_link"
.LASF505:
	.string	"ENOTNAM 118"
.LASF849:
	.string	"pframe"
.LASF725:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF643:
	.string	"PROC_MAX_COUNT 65536"
.LASF469:
	.string	"ELIBMAX 82"
.LASF424:
	.string	"ENOLCK 37"
.LASF918:
	.string	"vmm_list"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF897:
	.string	"release"
.LASF956:
	.string	"KT_RUNNABLE"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF970:
	.string	"slab_allocator_t"
.LASF385:
	.string	"NFILES 32"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF998:
	.string	"fref"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF622:
	.string	"PT_GLOBAL 0x100"
.LASF834:
	.string	"fs_i"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF840:
	.string	"atomic_t"
.LASF428:
	.string	"EWOULDBLOCK EAGAIN"
.LASF1068:
	.string	"proc_idleproc_init"
.LASF555:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF688:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF893:
	.string	"rmdir"
.LASF546:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF600:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF711:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF584:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF619:
	.string	"PT_ACCESSED 0x020"
.LASF787:
	.string	"vn_mobj"
.LASF1052:
	.string	"equals"
.LASF460:
	.string	"EDOTDOT 73"
.LASF767:
	.string	"int64_t"
.LASF986:
	.string	"iprintf"
.LASF1025:
	.string	"options"
.LASF605:
	.string	"VNODE_LOADED 1"
.LASF969:
	.string	"curthr"
.LASF455:
	.string	"EADV 68"
.LASF1046:
	.string	"proc_init"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF817:
	.string	"kt_proc"
.LASF904:
	.string	"st_ino"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF383:
	.string	"MAX_VNODES 1024"
.LASF433:
	.string	"EL3HLT 46"
.LASF493:
	.string	"EISCONN 106"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF565:
	.string	"MAX_KEYS (2*BRANCHING_FACTOR) - 1"
.LASF660:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF771:
	.string	"uintptr_t"
.LASF514:
	.string	"EKEYEXPIRED 127"
.LASF629:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF748:
	.string	"S_IFDIR 0x0200"
.LASF758:
	.string	"S_ISLNK(m) (_S_TYPE(m) == S_IFLNK)"
.LASF691:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF504:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF922:
	.string	"p_name"
.LASF438:
	.string	"EL2HLT 51"
.LASF364:
	.string	"__linux 1"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF846:
	.string	"data"
.LASF848:
	.string	"btree_node_t"
.LASF522:
	.string	"FMODE_READ 1"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF466:
	.string	"ELIBACC 79"
.LASF611:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF625:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF1003:
	.string	"slab_obj_alloc"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF568:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF988:
	.string	"preemption_disable"
.LASF743:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF1050:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF463:
	.string	"ENOTUNIQ 76"
.LASF448:
	.string	"ENODATA 61"
.LASF627:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF671:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF961:
	.string	"kthread_t"
.LASF929:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
