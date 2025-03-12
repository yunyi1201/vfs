	.file	"blockdev.c"
	.text
.Ltext0:
	.file 1 "drivers/blockdev.c"
	.type	intr_enabled, @function
intr_enabled:
.LFB0:
	.file 2 "include/main/interrupt.h"
	.loc 2 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 84 5
#APP
# 84 "include/main/interrupt.h" 1
	pushf; pop %rax; and $0x200, %rax;
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	.loc 2 86 12
	movq	-8(%rbp), %rax
	.loc 2 87 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB1:
	.loc 2 89 34
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 89 36
#APP
# 89 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 2 89 61
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB2:
	.loc 2 91 35
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 91 37
#APP
# 91 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 2 91 62
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB3:
	.loc 2 98 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 105 5
#APP
# 105 "include/main/interrupt.h" 1
	sti; hlt
# 0 "" 2
	.loc 2 106 1
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	intr_wait, .-intr_wait
	.type	equals, @function
equals:
.LFB4:
	.file 3 "include/util/debug.h"
	.loc 3 280 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 281 14
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	.loc 3 282 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB5:
	.loc 3 284 39
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 284 50
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	.loc 3 284 56
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB6:
	.loc 3 286 38
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 286 49
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setl	%al
	movzbl	%al, %eax
	.loc 3 286 54
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB7:
	.loc 3 288 41
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 288 52
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setg	%al
	movzbl	%al, %eax
	.loc 3 288 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB8:
	.loc 3 290 40
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 290 51
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setle	%al
	movzbl	%al, %eax
	.loc 3 290 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB9:
	.loc 3 292 43
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 292 54
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setge	%al
	movzbl	%al, %eax
	.loc 3 292 60
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	greaterthaneq, .-greaterthaneq
	.type	__atomic_add_unless, @function
__atomic_add_unless:
.LFB10:
	.file 4 "include/util/atomic.h"
	.loc 4 9 1
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
	.loc 4 11 9
	movq	-24(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 4 11 7
	movl	%edx, -4(%rbp)
	.loc 4 12 11
	jmp	.L19
.L21:
	.loc 4 13 11
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L19:
	.loc 4 12 19
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L20
	.loc 4 12 65 discriminator 1
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 4 12 29 discriminator 1
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 4 12 27 discriminator 1
	movl	%eax, -8(%rbp)
	.loc 4 12 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L21
.L20:
	.loc 4 14 12
	movl	-4(%rbp), %eax
	.loc 4 15 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	__atomic_add_unless, .-__atomic_add_unless
	.type	atomic_set, @function
atomic_set:
.LFB11:
	.loc 4 17 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 4 17 56
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 4 17 61
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	atomic_set, .-atomic_set
	.type	atomic_inc, @function
atomic_inc:
.LFB12:
	.loc 4 19 44
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 19 46
	movq	-8(%rbp), %rax
	lock addl	$1, (%rax)
	.loc 4 19 74
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	atomic_inc, .-atomic_inc
	.type	atomic_dec_and_test, @function
atomic_dec_and_test:
.LFB13:
	.loc 4 22 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 23 12
	movq	-8(%rbp), %rdx
	movl	$1, %eax
	negl	%eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	lock xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	.loc 4 23 39
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 4 24 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	atomic_dec_and_test, .-atomic_dec_and_test
	.type	atomic_inc_not_zero, @function
atomic_inc_not_zero:
.LFB14:
	.loc 4 27 1
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
	.loc 4 11 9
	movq	-8(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 4 11 7
	movl	%edx, -20(%rbp)
	.loc 4 12 11
	jmp	.L28
.L30:
	.loc 4 13 11
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L28:
	.loc 4 12 19
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L29
	.loc 4 12 65
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 4 12 29
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 4 12 27
	movl	%eax, -24(%rbp)
	.loc 4 12 19
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L30
.L29:
	.loc 4 14 12
	movl	-20(%rbp), %eax
.LBE5:
.LBE4:
	.loc 4 29 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	atomic_inc_not_zero, .-atomic_inc_not_zero
	.data
	.type	px_interrupt_status_clear, @object
	.size	px_interrupt_status_clear, 4
px_interrupt_status_clear:
	.long	-1
	.type	px_interrupt_enable_all_enabled, @object
	.size	px_interrupt_enable_all_enabled, 4
px_interrupt_enable_all_enabled:
	.long	-1
	.align 16
	.type	blockdevs, @object
	.size	blockdevs, 16
blockdevs:
	.quad	blockdevs
	.quad	blockdevs
	.text
	.globl	blockdev_init
	.type	blockdev_init, @function
blockdev_init:
.LFB15:
	.loc 1 12 22
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 12 24
	movl	$0, %eax
	movabsq	$sata_init, %rdx
	call	*%rdx
.LVL0:
	.loc 1 12 37
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	blockdev_init, .-blockdev_init
	.globl	blockdev_register
	.type	blockdev_register, @function
blockdev_register:
.LFB16:
	.loc 1 15 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 16 8
	cmpq	$0, -24(%rbp)
	je	.L35
	.loc 1 16 20 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 16 14 discriminator 1
	testl	%eax, %eax
	je	.L35
	.loc 1 16 49 discriminator 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 16 42 discriminator 2
	testq	%rax, %rax
	jne	.L36
.L35:
	.loc 1 18 16
	movq	$-1, %rax
	jmp	.L37
.L36:
.LBB6:
	.loc 1 21 5
	movabsq	$blockdevs, %rax
	movq	(%rax), %rax
	subq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.L38
.L40:
	.loc 1 23 16
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 23 29
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 23 12
	cmpl	%eax, %edx
	jne	.L39
	.loc 1 25 20
	movq	$-1, %rax
	jmp	.L37
.L39:
	.loc 1 21 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
.L38:
	.loc 1 21 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movabsq	$blockdevs, %rax
	cmpq	%rax, %rdx
	jne	.L40
.LBE6:
	.loc 1 29 5 is_stmt 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movabsq	$blockdevs, %rax
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL1:
	.loc 1 30 12
	movl	$0, %eax
.L37:
	.loc 1 31 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	blockdev_register, .-blockdev_register
	.globl	blockdev_lookup
	.type	blockdev_lookup, @function
blockdev_lookup:
.LFB17:
	.loc 1 34 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
.LBB7:
	.loc 1 35 5
	movabsq	$blockdevs, %rax
	movq	(%rax), %rax
	subq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.L42
.L45:
	.loc 1 37 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 37 12
	cmpl	%eax, -20(%rbp)
	jne	.L43
	.loc 1 39 20
	movq	-8(%rbp), %rax
	jmp	.L44
.L43:
	.loc 1 35 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
.L42:
	.loc 1 35 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movabsq	$blockdevs, %rax
	cmpq	%rax, %rdx
	jne	.L45
.LBE7:
	.loc 1 42 12 is_stmt 1
	movl	$0, %eax
.L44:
	.loc 1 43 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	blockdev_lookup, .-blockdev_lookup
	.section	.rodata
.LC0:
	.string	"mobj && pf"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/blockdev.c"
	.align 8
.LC3:
	.string	"pf->pf_pagenum <= (1UL << (8 * sizeof(blocknum_t)))"
	.text
	.globl	blockdev_fill_pframe
	.type	blockdev_fill_pframe, @function
blockdev_fill_pframe:
.LFB18:
	.loc 1 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 47 5
	cmpq	$0, -24(%rbp)
	je	.L47
	.loc 1 47 5 is_stmt 0 discriminator 2
	cmpq	$0, -32(%rbp)
	jne	.L48
.L47:
	.loc 1 47 5 discriminator 3
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$47, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL2:
.L48:
	.loc 1 48 5 is_stmt 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$4294967296, %rdx
	cmpq	%rax, %rdx
	jnb	.L49
	.loc 1 48 5 is_stmt 0 discriminator 1
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$48, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL3:
.L49:
	.loc 1 49 22 is_stmt 1
	movq	-24(%rbp), %rax
	subq	$208, %rax
	.loc 1 49 17
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 50 14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 50 22
	movq	(%rax), %r8
	.loc 1 50 66
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 50 12
	movl	%eax, %edx
	.loc 1 50 41
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	.loc 1 50 12
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r8
.LVL4:
	.loc 1 51 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	blockdev_fill_pframe, .-blockdev_fill_pframe
	.section	.rodata
.LC4:
	.string	"%s"
.LC5:
	.string	"C%ld P%ld "
.LC6:
	.string	"%s:%d %s(): "
.LC7:
	.string	"writing disk block %lu\n"
.LC8:
	.string	"\033[0m"
	.text
	.globl	blockdev_flush_pframe
	.type	blockdev_flush_pframe, @function
blockdev_flush_pframe:
.LFB19:
	.loc 1 54 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 55 5
	cmpq	$0, -24(%rbp)
	je	.L52
	.loc 1 55 5 is_stmt 0 discriminator 2
	cmpq	$0, -32(%rbp)
	jne	.L53
.L52:
	.loc 1 55 5 discriminator 3
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$55, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL5:
.L53:
	.loc 1 56 5 is_stmt 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$4294967296, %rdx
	cmpq	%rax, %rdx
	jnb	.L54
	.loc 1 56 5 is_stmt 0 discriminator 1
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$56, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL6:
.L54:
	.loc 1 57 5 is_stmt 1
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L55
	.loc 1 57 5 is_stmt 0 discriminator 1
	movl	$2097152, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL7:
	movq	%rax, %rsi
	movabsq	$.LC4, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL8:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L56
	.loc 1 57 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L57
.L56:
	.loc 1 57 5 discriminator 3
	movq	$-1, %rax
.L57:
	.loc 1 57 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL9:
	movabsq	$__func__.0, %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL10:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL11:
	movabsq	$.LC8, %rax
	movq	%rax, %rsi
	movabsq	$.LC4, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL12:
.L55:
	.loc 1 58 22 is_stmt 1
	movq	-24(%rbp), %rax
	subq	$208, %rax
	.loc 1 58 17
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 59 14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 59 22
	movq	8(%rax), %r8
	.loc 1 59 67
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 59 12
	movl	%eax, %edx
	.loc 1 59 42
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	.loc 1 59 12
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r8
.LVL13:
	.loc 1 60 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	blockdev_flush_pframe, .-blockdev_flush_pframe
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"blockdev_fill_pframe"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"blockdev_flush_pframe"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/util/list.h"
	.file 7 "include/vm/vmmap.h"
	.file 8 "include/proc/proc.h"
	.file 9 "include/mm/mobj.h"
	.file 10 "include/mm/pagetable.h"
	.file 11 "include/proc/context.h"
	.file 12 "include/proc/sched.h"
	.file 13 "include/proc/core.h"
	.file 14 "include/proc/kthread.h"
	.file 15 "include/fs/vnode.h"
	.file 16 "include/globals.h"
	.file 17 "include/proc/kmutex.h"
	.file 18 "include/util/btree.h"
	.file 19 "include/mm/pframe.h"
	.file 20 "include/drivers/blockdev.h"
	.file 21 "include/drivers/disk/ahci.h"
	.file 22 "include/fs/vfs.h"
	.file 23 "include/drivers/chardev.h"
	.file 24 "include/fs/s5fs/s5fs.h"
	.file 25 "include/drivers/disk/sata.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16e0
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF889
	.byte	0xc
	.long	.LASF890
	.long	.LASF891
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF649
	.uleb128 0x3
	.long	.LASF653
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF650
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF651
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF652
	.uleb128 0x3
	.long	.LASF654
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF655
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF656
	.uleb128 0x3
	.long	.LASF657
	.byte	0x5
	.byte	0x10
	.byte	0x15
	.long	0x8b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF658
	.uleb128 0x3
	.long	.LASF659
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x9e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF660
	.uleb128 0x3
	.long	.LASF661
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x9e
	.uleb128 0x3
	.long	.LASF662
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x92
	.uleb128 0x3
	.long	.LASF663
	.byte	0x5
	.byte	0x15
	.byte	0x11
	.long	0x7f
	.uleb128 0x3
	.long	.LASF664
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x59
	.uleb128 0x3
	.long	.LASF665
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.long	0x6c
	.uleb128 0x3
	.long	.LASF666
	.byte	0x5
	.byte	0x1b
	.byte	0x12
	.long	0x6c
	.uleb128 0x3
	.long	.LASF667
	.byte	0x5
	.byte	0x1c
	.byte	0x12
	.long	0x6c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF672
	.byte	0x10
	.byte	0x6
	.byte	0x5e
	.byte	0x10
	.long	0x123
	.uleb128 0x7
	.long	.LASF668
	.byte	0x6
	.byte	0x60
	.byte	0x12
	.long	0x123
	.byte	0
	.uleb128 0x7
	.long	.LASF669
	.byte	0x6
	.byte	0x61
	.byte	0x12
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xfb
	.uleb128 0x3
	.long	.LASF670
	.byte	0x6
	.byte	0x62
	.byte	0x3
	.long	0xfb
	.uleb128 0x3
	.long	.LASF671
	.byte	0x6
	.byte	0x62
	.byte	0xb
	.long	0xfb
	.uleb128 0x6
	.long	.LASF673
	.byte	0x18
	.byte	0x7
	.byte	0xe
	.byte	0x10
	.long	0x169
	.uleb128 0x7
	.long	.LASF674
	.byte	0x7
	.byte	0x10
	.byte	0xc
	.long	0x129
	.byte	0
	.uleb128 0x7
	.long	.LASF675
	.byte	0x7
	.byte	0x11
	.byte	0x12
	.long	0x256
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF676
	.value	0x2a0
	.byte	0x8
	.byte	0x1b
	.byte	0x10
	.long	0x256
	.uleb128 0x7
	.long	.LASF677
	.byte	0x8
	.byte	0x1d
	.byte	0xb
	.long	0xc9
	.byte	0
	.uleb128 0x7
	.long	.LASF678
	.byte	0x8
	.byte	0x1e
	.byte	0xa
	.long	0x514
	.byte	0x4
	.uleb128 0xa
	.long	.LASF679
	.byte	0x8
	.byte	0x20
	.byte	0xc
	.long	0x129
	.value	0x108
	.uleb128 0xa
	.long	.LASF680
	.byte	0x8
	.byte	0x21
	.byte	0xc
	.long	0x129
	.value	0x118
	.uleb128 0xa
	.long	.LASF681
	.byte	0x8
	.byte	0x22
	.byte	0x12
	.long	0x256
	.value	0x128
	.uleb128 0xa
	.long	.LASF682
	.byte	0x8
	.byte	0x24
	.byte	0x11
	.long	0x135
	.value	0x130
	.uleb128 0xa
	.long	.LASF683
	.byte	0x8
	.byte	0x25
	.byte	0x11
	.long	0x135
	.value	0x140
	.uleb128 0xa
	.long	.LASF684
	.byte	0x8
	.byte	0x27
	.byte	0xa
	.long	0x8b
	.value	0x150
	.uleb128 0xa
	.long	.LASF685
	.byte	0x8
	.byte	0x28
	.byte	0x12
	.long	0x508
	.value	0x158
	.uleb128 0xa
	.long	.LASF686
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.long	0x358
	.value	0x160
	.uleb128 0xa
	.long	.LASF687
	.byte	0x8
	.byte	0x31
	.byte	0xf
	.long	0x39e
	.value	0x168
	.uleb128 0xa
	.long	.LASF688
	.byte	0x8
	.byte	0x34
	.byte	0x12
	.long	0x524
	.value	0x180
	.uleb128 0xa
	.long	.LASF689
	.byte	0x8
	.byte	0x35
	.byte	0x13
	.long	0x5ec
	.value	0x280
	.uleb128 0xa
	.long	.LASF690
	.byte	0x8
	.byte	0x45
	.byte	0xb
	.long	0xf9
	.value	0x288
	.uleb128 0xa
	.long	.LASF691
	.byte	0x8
	.byte	0x46
	.byte	0xb
	.long	0xf9
	.value	0x290
	.uleb128 0xa
	.long	.LASF692
	.byte	0x8
	.byte	0x47
	.byte	0x13
	.long	0x25c
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x169
	.uleb128 0x8
	.byte	0x8
	.long	0x141
	.uleb128 0x6
	.long	.LASF693
	.byte	0x78
	.byte	0x9
	.byte	0x21
	.byte	0x10
	.long	0x2be
	.uleb128 0x7
	.long	.LASF694
	.byte	0x9
	.byte	0x23
	.byte	0xa
	.long	0x8b
	.byte	0
	.uleb128 0x7
	.long	.LASF695
	.byte	0x9
	.byte	0x24
	.byte	0x15
	.long	0x78e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF696
	.byte	0x9
	.byte	0x25
	.byte	0xe
	.long	0x67c
	.byte	0x28
	.uleb128 0x7
	.long	.LASF697
	.byte	0x9
	.byte	0x26
	.byte	0xc
	.long	0x129
	.byte	0x30
	.uleb128 0x7
	.long	.LASF698
	.byte	0x9
	.byte	0x27
	.byte	0xe
	.long	0x670
	.byte	0x40
	.uleb128 0x7
	.long	.LASF699
	.byte	0x9
	.byte	0x28
	.byte	0x13
	.long	0x82e
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x262
	.uleb128 0xb
	.string	"pt"
	.value	0x1000
	.byte	0xa
	.byte	0x18
	.byte	0x10
	.long	0x2df
	.uleb128 0x7
	.long	.LASF700
	.byte	0xa
	.byte	0x1a
	.byte	0xf
	.long	0x2df
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xa5
	.long	0x2f0
	.uleb128 0xd
	.long	0x9e
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF701
	.byte	0xa
	.byte	0x1b
	.byte	0x16
	.long	0x2c4
	.uleb128 0x6
	.long	.LASF702
	.byte	0x30
	.byte	0xb
	.byte	0xd
	.byte	0x10
	.long	0x358
	.uleb128 0x7
	.long	.LASF703
	.byte	0xb
	.byte	0xf
	.byte	0xf
	.long	0xa5
	.byte	0
	.uleb128 0x7
	.long	.LASF704
	.byte	0xb
	.byte	0x10
	.byte	0xf
	.long	0xa5
	.byte	0x8
	.uleb128 0x7
	.long	.LASF705
	.byte	0xb
	.byte	0x11
	.byte	0xf
	.long	0xa5
	.byte	0x10
	.uleb128 0x7
	.long	.LASF706
	.byte	0xb
	.byte	0x14
	.byte	0xa
	.long	0x358
	.byte	0x18
	.uleb128 0x7
	.long	.LASF707
	.byte	0xb
	.byte	0x18
	.byte	0xf
	.long	0xa5
	.byte	0x20
	.uleb128 0x7
	.long	.LASF708
	.byte	0xb
	.byte	0x19
	.byte	0xc
	.long	0xb1
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2f0
	.uleb128 0x3
	.long	.LASF709
	.byte	0xb
	.byte	0x1a
	.byte	0x3
	.long	0x2fc
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF710
	.uleb128 0xe
	.long	0x36a
	.uleb128 0x6
	.long	.LASF711
	.byte	0x18
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.long	0x39e
	.uleb128 0x7
	.long	.LASF712
	.byte	0xc
	.byte	0x11
	.byte	0xc
	.long	0x129
	.byte	0
	.uleb128 0x7
	.long	.LASF713
	.byte	0xc
	.byte	0x12
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF714
	.byte	0xc
	.byte	0x13
	.byte	0x3
	.long	0x376
	.uleb128 0x6
	.long	.LASF715
	.byte	0x48
	.byte	0xd
	.byte	0x7
	.byte	0x10
	.long	0x3ec
	.uleb128 0x7
	.long	.LASF716
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.long	0x8b
	.byte	0
	.uleb128 0x7
	.long	.LASF717
	.byte	0xd
	.byte	0xa
	.byte	0xf
	.long	0x35e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF718
	.byte	0xd
	.byte	0xc
	.byte	0x10
	.long	0x3ec
	.byte	0x38
	.uleb128 0x7
	.long	.LASF719
	.byte	0xd
	.byte	0xe
	.byte	0xf
	.long	0xa5
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x39e
	.uleb128 0x3
	.long	.LASF720
	.byte	0xd
	.byte	0xf
	.byte	0x3
	.long	0x3aa
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.long	0x431
	.uleb128 0x10
	.long	.LASF721
	.byte	0
	.uleb128 0x10
	.long	.LASF722
	.byte	0x1
	.uleb128 0x10
	.long	.LASF723
	.byte	0x2
	.uleb128 0x10
	.long	.LASF724
	.byte	0x3
	.uleb128 0x10
	.long	.LASF725
	.byte	0x4
	.uleb128 0x10
	.long	.LASF726
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF727
	.byte	0xe
	.byte	0x1c
	.byte	0x3
	.long	0x3fe
	.uleb128 0x6
	.long	.LASF728
	.byte	0xa0
	.byte	0xe
	.byte	0x21
	.byte	0x10
	.long	0x4e7
	.uleb128 0x7
	.long	.LASF729
	.byte	0xe
	.byte	0x23
	.byte	0xf
	.long	0x35e
	.byte	0
	.uleb128 0x7
	.long	.LASF730
	.byte	0xe
	.byte	0x24
	.byte	0xb
	.long	0x4e7
	.byte	0x30
	.uleb128 0x7
	.long	.LASF731
	.byte	0xe
	.byte	0x25
	.byte	0xb
	.long	0xf9
	.byte	0x38
	.uleb128 0x7
	.long	.LASF732
	.byte	0xe
	.byte	0x26
	.byte	0xa
	.long	0x8b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF733
	.byte	0xe
	.byte	0x27
	.byte	0x12
	.long	0x256
	.byte	0x48
	.uleb128 0x7
	.long	.LASF734
	.byte	0xe
	.byte	0x29
	.byte	0xa
	.long	0x8b
	.byte	0x50
	.uleb128 0x7
	.long	.LASF735
	.byte	0xe
	.byte	0x2a
	.byte	0x10
	.long	0x3ec
	.byte	0x58
	.uleb128 0x7
	.long	.LASF736
	.byte	0xe
	.byte	0x2b
	.byte	0x15
	.long	0x431
	.byte	0x60
	.uleb128 0x7
	.long	.LASF737
	.byte	0xe
	.byte	0x2d
	.byte	0x11
	.long	0x135
	.byte	0x68
	.uleb128 0x7
	.long	.LASF738
	.byte	0xe
	.byte	0x2f
	.byte	0x9
	.long	0x135
	.byte	0x78
	.uleb128 0x7
	.long	.LASF739
	.byte	0xe
	.byte	0x31
	.byte	0xc
	.long	0x129
	.byte	0x88
	.uleb128 0x7
	.long	.LASF740
	.byte	0xe
	.byte	0x34
	.byte	0xe
	.long	0x92
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x36a
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.long	0x508
	.uleb128 0x10
	.long	.LASF741
	.byte	0
	.uleb128 0x10
	.long	.LASF742
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF743
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.long	0x4ed
	.uleb128 0xc
	.long	0x36a
	.long	0x524
	.uleb128 0x11
	.long	0x9e
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x534
	.long	0x534
	.uleb128 0x11
	.long	0x9e
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x53a
	.uleb128 0x12
	.long	.LASF821
	.byte	0x1
	.uleb128 0x6
	.long	.LASF744
	.byte	0xd8
	.byte	0xf
	.byte	0xb1
	.byte	0x10
	.long	0x5ec
	.uleb128 0x7
	.long	.LASF745
	.byte	0xf
	.byte	0xb7
	.byte	0x17
	.long	0xf26
	.byte	0
	.uleb128 0x7
	.long	.LASF746
	.byte	0xf
	.byte	0xbe
	.byte	0x10
	.long	0xa16
	.byte	0x8
	.uleb128 0x7
	.long	.LASF747
	.byte	0xf
	.byte	0xce
	.byte	0x11
	.long	0x262
	.byte	0x10
	.uleb128 0x7
	.long	.LASF748
	.byte	0xf
	.byte	0xd5
	.byte	0xb
	.long	0xe1
	.byte	0x88
	.uleb128 0x7
	.long	.LASF749
	.byte	0xf
	.byte	0xda
	.byte	0x9
	.long	0x65
	.byte	0x8c
	.uleb128 0x7
	.long	.LASF750
	.byte	0xf
	.byte	0xe2
	.byte	0xc
	.long	0xb1
	.byte	0x90
	.uleb128 0x7
	.long	.LASF751
	.byte	0xf
	.byte	0xe8
	.byte	0xb
	.long	0xf9
	.byte	0x98
	.uleb128 0x7
	.long	.LASF752
	.byte	0xf
	.byte	0xee
	.byte	0xd
	.long	0xed
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF753
	.byte	0xf
	.byte	0xf6
	.byte	0x9
	.long	0x65
	.byte	0xa4
	.uleb128 0x7
	.long	.LASF754
	.byte	0xf
	.byte	0xfb
	.byte	0xf
	.long	0x39e
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF755
	.byte	0xf
	.value	0x100
	.byte	0x7
	.long	0xf04
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF756
	.byte	0xf
	.value	0x103
	.byte	0x11
	.long	0x135
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x540
	.uleb128 0x3
	.long	.LASF757
	.byte	0x8
	.byte	0x49
	.byte	0x3
	.long	0x169
	.uleb128 0x14
	.long	.LASF758
	.byte	0x10
	.byte	0x9
	.byte	0xf
	.long	0x3f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF759
	.byte	0x10
	.byte	0xa
	.byte	0x10
	.long	0x61a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x5f2
	.uleb128 0x14
	.long	.LASF760
	.byte	0x3
	.byte	0x8c
	.byte	0x11
	.long	0x92
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x634
	.uleb128 0x15
	.uleb128 0x6
	.long	.LASF761
	.byte	0x30
	.byte	0x11
	.byte	0xa
	.byte	0x10
	.long	0x66a
	.uleb128 0x7
	.long	.LASF762
	.byte	0x11
	.byte	0xc
	.byte	0xf
	.long	0x39e
	.byte	0
	.uleb128 0x7
	.long	.LASF763
	.byte	0x11
	.byte	0xd
	.byte	0x15
	.long	0x66a
	.byte	0x18
	.uleb128 0x7
	.long	.LASF764
	.byte	0x11
	.byte	0xe
	.byte	0x11
	.long	0x135
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x43d
	.uleb128 0x3
	.long	.LASF765
	.byte	0x11
	.byte	0xf
	.byte	0x3
	.long	0x635
	.uleb128 0x3
	.long	.LASF766
	.byte	0x4
	.byte	0x4
	.byte	0xd
	.long	0x65
	.uleb128 0x6
	.long	.LASF767
	.byte	0x60
	.byte	0x12
	.byte	0x26
	.byte	0x10
	.long	0x6e4
	.uleb128 0x7
	.long	.LASF768
	.byte	0x12
	.byte	0x28
	.byte	0x12
	.long	0x78
	.byte	0
	.uleb128 0x7
	.long	.LASF769
	.byte	0x12
	.byte	0x29
	.byte	0x12
	.long	0x78
	.byte	0x4
	.uleb128 0x7
	.long	.LASF770
	.byte	0x12
	.byte	0x2a
	.byte	0x9
	.long	0x65
	.byte	0x8
	.uleb128 0x7
	.long	.LASF771
	.byte	0x12
	.byte	0x2b
	.byte	0xe
	.long	0x6e4
	.byte	0x10
	.uleb128 0x7
	.long	.LASF772
	.byte	0x12
	.byte	0x2c
	.byte	0xb
	.long	0x6f4
	.byte	0x28
	.uleb128 0x7
	.long	.LASF773
	.byte	0x12
	.byte	0x2d
	.byte	0x18
	.long	0x704
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x92
	.long	0x6f4
	.uleb128 0x11
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xf9
	.long	0x704
	.uleb128 0x11
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0x714
	.long	0x714
	.uleb128 0x11
	.long	0x9e
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x688
	.uleb128 0x3
	.long	.LASF774
	.byte	0x12
	.byte	0x2e
	.byte	0x3
	.long	0x688
	.uleb128 0x6
	.long	.LASF775
	.byte	0x60
	.byte	0x13
	.byte	0x7
	.byte	0x10
	.long	0x782
	.uleb128 0x7
	.long	.LASF776
	.byte	0x13
	.byte	0x9
	.byte	0xc
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.long	.LASF777
	.byte	0x13
	.byte	0xa
	.byte	0xc
	.long	0xb1
	.byte	0x8
	.uleb128 0x7
	.long	.LASF778
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.long	0xf9
	.byte	0x10
	.uleb128 0x7
	.long	.LASF779
	.byte	0x13
	.byte	0xc
	.byte	0xa
	.long	0x8b
	.byte	0x18
	.uleb128 0x7
	.long	.LASF780
	.byte	0x13
	.byte	0xd
	.byte	0xe
	.long	0x670
	.byte	0x20
	.uleb128 0x7
	.long	.LASF781
	.byte	0x13
	.byte	0xe
	.byte	0x11
	.long	0x135
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.long	.LASF782
	.byte	0x13
	.byte	0xf
	.byte	0x3
	.long	0x726
	.uleb128 0x6
	.long	.LASF783
	.byte	0x20
	.byte	0x9
	.byte	0x15
	.byte	0x10
	.long	0x7d0
	.uleb128 0x7
	.long	.LASF784
	.byte	0x9
	.byte	0x17
	.byte	0xc
	.long	0x7fb
	.byte	0
	.uleb128 0x7
	.long	.LASF785
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x816
	.byte	0x8
	.uleb128 0x7
	.long	.LASF786
	.byte	0x9
	.byte	0x1c
	.byte	0xc
	.long	0x816
	.byte	0x10
	.uleb128 0x7
	.long	.LASF787
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x828
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0x7ef
	.uleb128 0x17
	.long	0x2be
	.uleb128 0x17
	.long	0x92
	.uleb128 0x17
	.long	0x8b
	.uleb128 0x17
	.long	0x7ef
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x7f5
	.uleb128 0x8
	.byte	0x8
	.long	0x726
	.uleb128 0x8
	.byte	0x8
	.long	0x7d0
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0x816
	.uleb128 0x17
	.long	0x2be
	.uleb128 0x17
	.long	0x7f5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x801
	.uleb128 0x18
	.byte	0x1
	.long	0x828
	.uleb128 0x17
	.long	0x2be
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x81c
	.uleb128 0x8
	.byte	0x8
	.long	0x71a
	.uleb128 0x3
	.long	.LASF788
	.byte	0x9
	.byte	0x29
	.byte	0x3
	.long	0x262
	.uleb128 0x6
	.long	.LASF789
	.byte	0x20
	.byte	0x14
	.byte	0x17
	.byte	0x10
	.long	0x875
	.uleb128 0x7
	.long	.LASF790
	.byte	0x14
	.byte	0x1a
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x7
	.long	.LASF791
	.byte	0x14
	.byte	0x1c
	.byte	0x1a
	.long	0x89d
	.byte	0x8
	.uleb128 0x7
	.long	.LASF792
	.byte	0x14
	.byte	0x1f
	.byte	0x11
	.long	0x135
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF793
	.byte	0x10
	.byte	0x14
	.byte	0x22
	.byte	0x10
	.long	0x89d
	.uleb128 0x7
	.long	.LASF794
	.byte	0x14
	.byte	0x2e
	.byte	0xc
	.long	0x8d4
	.byte	0
	.uleb128 0x7
	.long	.LASF795
	.byte	0x14
	.byte	0x3b
	.byte	0xc
	.long	0x8ff
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x875
	.uleb128 0x3
	.long	.LASF796
	.byte	0x14
	.byte	0x20
	.byte	0x3
	.long	0x840
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0x8ce
	.uleb128 0x17
	.long	0x8ce
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x17
	.long	0xd5
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8a3
	.uleb128 0x8
	.byte	0x8
	.long	0x8af
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0x8f9
	.uleb128 0x17
	.long	0x8ce
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xd5
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x371
	.uleb128 0x8
	.byte	0x8
	.long	0x8da
	.uleb128 0x19
	.byte	0x4
	.byte	0x15
	.byte	0xcc
	.byte	0x5
	.long	0x93f
	.uleb128 0x1a
	.long	.LASF797
	.byte	0x15
	.byte	0xce
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.long	.LASF798
	.byte	0x15
	.byte	0xd3
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.string	"dps"
	.byte	0x15
	.byte	0xd6
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF802
	.byte	0x4
	.byte	0x15
	.byte	0xcb
	.byte	0xf
	.long	0x965
	.uleb128 0x1d
	.long	.LASF799
	.byte	0x15
	.byte	0xda
	.byte	0x7
	.long	0x905
	.uleb128 0x1d
	.long	.LASF800
	.byte	0x15
	.byte	0xdb
	.byte	0xe
	.long	0x6c
	.byte	0
	.uleb128 0x3
	.long	.LASF801
	.byte	0x15
	.byte	0xdc
	.byte	0xa
	.long	0x93f
	.uleb128 0x1e
	.long	.LASF805
	.byte	0x15
	.byte	0xdf
	.byte	0x1e
	.long	0x965
	.byte	0x9
	.byte	0x3
	.quad	px_interrupt_status_clear
	.uleb128 0x1c
	.long	.LASF803
	.byte	0x4
	.byte	0x15
	.byte	0xe4
	.byte	0xf
	.long	0x9a1
	.uleb128 0x1d
	.long	.LASF800
	.byte	0x15
	.byte	0xe5
	.byte	0xe
	.long	0x6c
	.byte	0
	.uleb128 0x3
	.long	.LASF804
	.byte	0x15
	.byte	0xe6
	.byte	0xa
	.long	0x987
	.uleb128 0x1e
	.long	.LASF806
	.byte	0x15
	.byte	0xea
	.byte	0x1e
	.long	0x9a1
	.byte	0x9
	.byte	0x3
	.quad	px_interrupt_enable_all_enabled
	.uleb128 0x6
	.long	.LASF807
	.byte	0x20
	.byte	0x16
	.byte	0x13
	.byte	0x10
	.long	0xa05
	.uleb128 0x7
	.long	.LASF808
	.byte	0x16
	.byte	0x19
	.byte	0xc
	.long	0xa9e
	.byte	0
	.uleb128 0x7
	.long	.LASF809
	.byte	0x16
	.byte	0x1f
	.byte	0xc
	.long	0xa9e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF810
	.byte	0x16
	.byte	0x27
	.byte	0xc
	.long	0xab4
	.byte	0x10
	.uleb128 0x7
	.long	.LASF811
	.byte	0x16
	.byte	0x29
	.byte	0xc
	.long	0xac6
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	0xa16
	.uleb128 0x17
	.long	0xa16
	.uleb128 0x17
	.long	0x5ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa1c
	.uleb128 0x1f
	.string	"fs"
	.byte	0xd0
	.byte	0x16
	.byte	0x31
	.byte	0x10
	.long	0xa9e
	.uleb128 0x7
	.long	.LASF812
	.byte	0x16
	.byte	0x38
	.byte	0xa
	.long	0xad8
	.byte	0
	.uleb128 0x7
	.long	.LASF813
	.byte	0x16
	.byte	0x3f
	.byte	0xa
	.long	0xad8
	.byte	0x20
	.uleb128 0x7
	.long	.LASF807
	.byte	0x16
	.byte	0x59
	.byte	0xf
	.long	0xae8
	.byte	0x40
	.uleb128 0x7
	.long	.LASF814
	.byte	0x16
	.byte	0x60
	.byte	0x13
	.long	0x5ec
	.byte	0x48
	.uleb128 0x7
	.long	.LASF815
	.byte	0x16
	.byte	0x63
	.byte	0xb
	.long	0xf9
	.byte	0x50
	.uleb128 0x7
	.long	.LASF816
	.byte	0x16
	.byte	0x65
	.byte	0x1c
	.long	0xaf4
	.byte	0x58
	.uleb128 0x7
	.long	.LASF817
	.byte	0x16
	.byte	0x66
	.byte	0xc
	.long	0x129
	.byte	0x60
	.uleb128 0x7
	.long	.LASF818
	.byte	0x16
	.byte	0x67
	.byte	0xe
	.long	0x670
	.byte	0x70
	.uleb128 0x7
	.long	.LASF819
	.byte	0x16
	.byte	0x68
	.byte	0xe
	.long	0x670
	.byte	0xa0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa05
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xab4
	.uleb128 0x17
	.long	0xa16
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaa4
	.uleb128 0x18
	.byte	0x1
	.long	0xac6
	.uleb128 0x17
	.long	0xa16
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaba
	.uleb128 0x3
	.long	.LASF820
	.byte	0x16
	.byte	0x2a
	.byte	0x3
	.long	0x9c3
	.uleb128 0xc
	.long	0x36a
	.long	0xae8
	.uleb128 0x11
	.long	0x9e
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xacc
	.uleb128 0x12
	.long	.LASF822
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xaee
	.uleb128 0x3
	.long	.LASF823
	.byte	0x16
	.byte	0x6a
	.byte	0x3
	.long	0xa1c
	.uleb128 0x6
	.long	.LASF824
	.byte	0x20
	.byte	0x17
	.byte	0xc
	.byte	0x10
	.long	0xb3b
	.uleb128 0x7
	.long	.LASF825
	.byte	0x17
	.byte	0xe
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x7
	.long	.LASF826
	.byte	0x17
	.byte	0xf
	.byte	0x19
	.long	0xb8a
	.byte	0x8
	.uleb128 0x7
	.long	.LASF827
	.byte	0x17
	.byte	0x10
	.byte	0x11
	.long	0x135
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF828
	.byte	0x28
	.byte	0x17
	.byte	0x13
	.byte	0x10
	.long	0xb8a
	.uleb128 0x7
	.long	.LASF829
	.byte	0x17
	.byte	0x15
	.byte	0xf
	.long	0xbc1
	.byte	0
	.uleb128 0x7
	.long	.LASF830
	.byte	0x17
	.byte	0x17
	.byte	0xf
	.long	0xbe6
	.byte	0x8
	.uleb128 0x7
	.long	.LASF831
	.byte	0x17
	.byte	0x19
	.byte	0xc
	.long	0xc07
	.byte	0x10
	.uleb128 0x7
	.long	.LASF785
	.byte	0x17
	.byte	0x1b
	.byte	0xc
	.long	0xc22
	.byte	0x18
	.uleb128 0x7
	.long	.LASF786
	.byte	0x17
	.byte	0x1d
	.byte	0xc
	.long	0xc22
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb3b
	.uleb128 0x3
	.long	.LASF832
	.byte	0x17
	.byte	0x11
	.byte	0x3
	.long	0xb06
	.uleb128 0x16
	.byte	0x1
	.long	0xbd
	.long	0xbbb
	.uleb128 0x17
	.long	0xbbb
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0xf9
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb90
	.uleb128 0x8
	.byte	0x8
	.long	0xb9c
	.uleb128 0x16
	.byte	0x1
	.long	0xbd
	.long	0xbe6
	.uleb128 0x17
	.long	0xbbb
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x62e
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbc7
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xc01
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xc01
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2be
	.uleb128 0x8
	.byte	0x8
	.long	0xbec
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xc22
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x7f5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc0d
	.uleb128 0x6
	.long	.LASF833
	.byte	0x90
	.byte	0xf
	.byte	0x1d
	.byte	0x10
	.long	0xd20
	.uleb128 0x7
	.long	.LASF829
	.byte	0xf
	.byte	0x2b
	.byte	0xf
	.long	0xd3f
	.byte	0
	.uleb128 0x7
	.long	.LASF830
	.byte	0xf
	.byte	0x35
	.byte	0xf
	.long	0xd64
	.byte	0x8
	.uleb128 0x7
	.long	.LASF831
	.byte	0xf
	.byte	0x3e
	.byte	0xc
	.long	0xc07
	.byte	0x10
	.uleb128 0x7
	.long	.LASF834
	.byte	0xf
	.byte	0x48
	.byte	0xc
	.long	0xd99
	.byte	0x18
	.uleb128 0x7
	.long	.LASF835
	.byte	0xf
	.byte	0x51
	.byte	0xc
	.long	0xdbe
	.byte	0x20
	.uleb128 0x7
	.long	.LASF836
	.byte	0xf
	.byte	0x58
	.byte	0xc
	.long	0xde3
	.byte	0x28
	.uleb128 0x7
	.long	.LASF837
	.byte	0xf
	.byte	0x5f
	.byte	0xc
	.long	0xe03
	.byte	0x30
	.uleb128 0x7
	.long	.LASF838
	.byte	0xf
	.byte	0x64
	.byte	0xc
	.long	0xe32
	.byte	0x38
	.uleb128 0x7
	.long	.LASF839
	.byte	0xf
	.byte	0x6f
	.byte	0xc
	.long	0xdbe
	.byte	0x40
	.uleb128 0x7
	.long	.LASF840
	.byte	0xf
	.byte	0x77
	.byte	0xc
	.long	0xe03
	.byte	0x48
	.uleb128 0x7
	.long	.LASF841
	.byte	0xf
	.byte	0x81
	.byte	0xf
	.long	0xe5e
	.byte	0x50
	.uleb128 0x7
	.long	.LASF842
	.byte	0xf
	.byte	0x89
	.byte	0xc
	.long	0xe85
	.byte	0x58
	.uleb128 0x7
	.long	.LASF843
	.byte	0xf
	.byte	0x8f
	.byte	0xc
	.long	0xea0
	.byte	0x60
	.uleb128 0x7
	.long	.LASF844
	.byte	0xf
	.byte	0x97
	.byte	0xc
	.long	0xea0
	.byte	0x68
	.uleb128 0x7
	.long	.LASF784
	.byte	0xf
	.byte	0x99
	.byte	0xc
	.long	0xed1
	.byte	0x70
	.uleb128 0x7
	.long	.LASF785
	.byte	0xf
	.byte	0xa1
	.byte	0xc
	.long	0xeec
	.byte	0x78
	.uleb128 0x7
	.long	.LASF786
	.byte	0xf
	.byte	0xa8
	.byte	0xc
	.long	0xeec
	.byte	0x80
	.uleb128 0x7
	.long	.LASF845
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0xefe
	.byte	0x88
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	0xbd
	.long	0xd3f
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0xf9
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd20
	.uleb128 0x16
	.byte	0x1
	.long	0xbd
	.long	0xd64
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x62e
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd45
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xd93
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x65
	.uleb128 0x17
	.long	0xed
	.uleb128 0x17
	.long	0xd93
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5ec
	.uleb128 0x8
	.byte	0x8
	.long	0xd6a
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xdbe
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0xd93
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd9f
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xde3
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x5ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdc4
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xe03
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xde9
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xe32
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe09
	.uleb128 0x16
	.byte	0x1
	.long	0xbd
	.long	0xe52
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0xe52
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe58
	.uleb128 0x12
	.long	.LASF846
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xe38
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xe79
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xe79
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe7f
	.uleb128 0x12
	.long	.LASF842
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xe64
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xea0
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x534
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe8b
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xec5
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xb1
	.uleb128 0x17
	.long	0x8b
	.uleb128 0x17
	.long	0xec5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xecb
	.uleb128 0x8
	.byte	0x8
	.long	0x782
	.uleb128 0x8
	.byte	0x8
	.long	0xea6
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0xeec
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xecb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xed7
	.uleb128 0x18
	.byte	0x1
	.long	0xefe
	.uleb128 0x17
	.long	0x5ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xef2
	.uleb128 0x20
	.byte	0x8
	.byte	0xf
	.byte	0xfd
	.byte	0x5
	.long	0xf26
	.uleb128 0x1d
	.long	.LASF824
	.byte	0xf
	.byte	0xfe
	.byte	0x14
	.long	0xbbb
	.uleb128 0x1d
	.long	.LASF789
	.byte	0xf
	.byte	0xff
	.byte	0x15
	.long	0x8ce
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc28
	.uleb128 0x6
	.long	.LASF847
	.byte	0x90
	.byte	0x18
	.byte	0x4e
	.byte	0x10
	.long	0xf95
	.uleb128 0x7
	.long	.LASF848
	.byte	0x18
	.byte	0x50
	.byte	0xe
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.long	.LASF849
	.byte	0x18
	.byte	0x51
	.byte	0xe
	.long	0x6c
	.byte	0x4
	.uleb128 0x7
	.long	.LASF850
	.byte	0x18
	.byte	0x52
	.byte	0xe
	.long	0x6c
	.byte	0x8
	.uleb128 0x7
	.long	.LASF851
	.byte	0x18
	.byte	0x55
	.byte	0xe
	.long	0xf95
	.byte	0xc
	.uleb128 0x7
	.long	.LASF852
	.byte	0x18
	.byte	0x57
	.byte	0xe
	.long	0x6c
	.byte	0x84
	.uleb128 0x7
	.long	.LASF853
	.byte	0x18
	.byte	0x58
	.byte	0xe
	.long	0x6c
	.byte	0x88
	.uleb128 0x7
	.long	.LASF854
	.byte	0x18
	.byte	0x59
	.byte	0xe
	.long	0x6c
	.byte	0x8c
	.byte	0
	.uleb128 0xc
	.long	0x6c
	.long	0xfa5
	.uleb128 0x11
	.long	0x9e
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.long	.LASF855
	.byte	0x18
	.byte	0x5a
	.byte	0x3
	.long	0xf2c
	.uleb128 0x9
	.long	.LASF856
	.value	0x148
	.byte	0x18
	.byte	0x7c
	.byte	0x10
	.long	0x1001
	.uleb128 0x7
	.long	.LASF857
	.byte	0x18
	.byte	0x7e
	.byte	0x11
	.long	0x8ce
	.byte	0
	.uleb128 0x7
	.long	.LASF858
	.byte	0x18
	.byte	0x7f
	.byte	0x10
	.long	0xfa5
	.byte	0x8
	.uleb128 0x7
	.long	.LASF859
	.byte	0x18
	.byte	0x80
	.byte	0xe
	.long	0x670
	.byte	0x98
	.uleb128 0x7
	.long	.LASF860
	.byte	0x18
	.byte	0x81
	.byte	0xb
	.long	0x1001
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF861
	.byte	0x18
	.byte	0x82
	.byte	0xc
	.long	0x834
	.byte	0xd0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xafa
	.uleb128 0x3
	.long	.LASF862
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.long	0xfb1
	.uleb128 0x1e
	.long	.LASF863
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.long	0x129
	.byte	0x9
	.byte	0x3
	.quad	blockdevs
	.uleb128 0x21
	.byte	0x1
	.long	.LASF866
	.byte	0x3
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x103f
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF864
	.byte	0x3
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0x8f9
	.byte	0x1
	.long	0x1058
	.uleb128 0x17
	.long	0x92
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF865
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x107e
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0x65
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x17
	.long	0x8f9
	.uleb128 0x22
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF867
	.byte	0x6
	.byte	0x9c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1098
	.uleb128 0x17
	.long	0x1098
	.uleb128 0x17
	.long	0x109e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x129
	.uleb128 0x8
	.byte	0x8
	.long	0x135
	.uleb128 0x25
	.byte	0x1
	.long	.LASF892
	.byte	0x19
	.byte	0x8
	.byte	0x6
	.byte	0x1
	.long	0x10b4
	.uleb128 0x22
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF868
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.byte	0x1
	.long	0x8b
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1181
	.uleb128 0x27
	.long	.LASF693
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.long	0x1181
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"pf"
	.byte	0x1
	.byte	0x35
	.byte	0x34
	.long	0xecb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF870
	.long	0x1197
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x2a
	.string	"bd"
	.byte	0x1
	.byte	0x3a
	.byte	0x11
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LVL5
	.long	0x1058
	.uleb128 0x2b
	.quad	.LVL6
	.long	0x1058
	.uleb128 0x2b
	.quad	.LVL7
	.long	0x103f
	.uleb128 0x2b
	.quad	.LVL8
	.long	0x1029
	.uleb128 0x2b
	.quad	.LVL9
	.long	0x1029
	.uleb128 0x2b
	.quad	.LVL10
	.long	0x1029
	.uleb128 0x2b
	.quad	.LVL11
	.long	0x1029
	.uleb128 0x2b
	.quad	.LVL12
	.long	0x1029
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x834
	.uleb128 0xc
	.long	0x371
	.long	0x1197
	.uleb128 0x11
	.long	0x9e
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.long	0x1187
	.uleb128 0x26
	.byte	0x1
	.long	.LASF869
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.byte	0x1
	.long	0x8b
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x121b
	.uleb128 0x27
	.long	.LASF693
	.byte	0x1
	.byte	0x2d
	.byte	0x23
	.long	0x1181
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"pf"
	.byte	0x1
	.byte	0x2d
	.byte	0x33
	.long	0xecb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF870
	.long	0x122b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x2a
	.string	"bd"
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LVL2
	.long	0x1058
	.uleb128 0x2b
	.quad	.LVL3
	.long	0x1058
	.byte	0
	.uleb128 0xc
	.long	0x371
	.long	0x122b
	.uleb128 0x11
	.long	0x9e
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.long	0x121b
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF871
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.byte	0x1
	.long	0x8ce
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1293
	.uleb128 0x28
	.string	"id"
	.byte	0x1
	.byte	0x21
	.byte	0x25
	.long	0xed
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2a
	.string	"bd"
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF872
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF873
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.byte	0x1
	.long	0x8b
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1308
	.uleb128 0x28
	.string	"dev"
	.byte	0x1
	.byte	0xe
	.byte	0x24
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6
	.long	0x12fa
	.uleb128 0x2a
	.string	"bd"
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF872
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.long	0x8ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.quad	.LVL1
	.long	0x107e
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF893
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1337
	.uleb128 0x2b
	.quad	.LVL0
	.long	0x10a4
	.byte	0
	.uleb128 0x30
	.long	.LASF874
	.byte	0x4
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.long	0x65
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x13aa
	.uleb128 0x28
	.string	"a"
	.byte	0x4
	.byte	0x1a
	.byte	0x31
	.long	0x13aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	0x144b
	.quad	.LBB4
	.quad	.LBE4
	.byte	0x4
	.byte	0x1c
	.byte	0xc
	.uleb128 0x32
	.long	0x1471
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x1467
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	0x145d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x147b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x1485
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x67c
	.uleb128 0x30
	.long	.LASF875
	.byte	0x4
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.long	0x65
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x13e2
	.uleb128 0x28
	.string	"a"
	.byte	0x4
	.byte	0x15
	.byte	0x31
	.long	0x13aa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF876
	.byte	0x4
	.byte	0x13
	.byte	0x14
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1410
	.uleb128 0x28
	.string	"a"
	.byte	0x4
	.byte	0x13
	.byte	0x29
	.long	0x13aa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF877
	.byte	0x4
	.byte	0x11
	.byte	0x14
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x144b
	.uleb128 0x28
	.string	"a"
	.byte	0x4
	.byte	0x11
	.byte	0x29
	.long	0x13aa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x4
	.byte	0x11
	.byte	0x30
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF894
	.byte	0x4
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.long	0x65
	.byte	0x1
	.long	0x1492
	.uleb128 0x36
	.string	"a"
	.byte	0x4
	.byte	0x8
	.byte	0x31
	.long	0x13aa
	.uleb128 0x36
	.string	"v"
	.byte	0x4
	.byte	0x8
	.byte	0x38
	.long	0x65
	.uleb128 0x36
	.string	"u"
	.byte	0x4
	.byte	0x8
	.byte	0x3f
	.long	0x65
	.uleb128 0x37
	.string	"c"
	.byte	0x4
	.byte	0xa
	.byte	0x9
	.long	0x65
	.uleb128 0x37
	.string	"old"
	.byte	0x4
	.byte	0xa
	.byte	0xc
	.long	0x65
	.byte	0
	.uleb128 0x38
	.long	.LASF878
	.byte	0x3
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x14d4
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF879
	.byte	0x3
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1516
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF880
	.byte	0x3
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1558
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF881
	.byte	0x3
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x159a
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF882
	.byte	0x3
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x15dc
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF883
	.byte	0x3
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x161e
	.uleb128 0x39
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF884
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF885
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF886
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF887
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x92
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x16a2
	.uleb128 0x1e
	.long	.LASF888
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	0x144b
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x32
	.long	0x145d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	0x1467
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	0x1471
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0x147b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	0x1485
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.file 26 "include/kernel.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.file 27 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1b
	.file 28 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1c
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 29 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.file 30 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x8
	.long	.LASF468
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF469
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF470
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
	.file 31 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF488
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.file 32 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x10
	.long	.LASF502
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x3
	.long	.LASF576
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x14
	.file 33 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x11
	.long	.LASF589
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF595
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x16
	.file 34 "include/fs/open.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x22
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
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
	.section	.debug_macro,"G",@progbits,wm4.types.h.5.ce5cf6e0f5e04c88197477365e766aac,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF375
	.byte	0x5
	.uleb128 0x7
	.long	.LASF376
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF377
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x5
	.uleb128 0x21
	.long	.LASF380
	.byte	0x5
	.uleb128 0x26
	.long	.LASF381
	.byte	0x5
	.uleb128 0x29
	.long	.LASF382
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF383
	.byte	0x5
	.uleb128 0x37
	.long	.LASF384
	.byte	0x5
	.uleb128 0x38
	.long	.LASF385
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF386
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF387
	.byte	0x5
	.uleb128 0x5
	.long	.LASF388
	.byte	0x5
	.uleb128 0x6
	.long	.LASF389
	.byte	0x5
	.uleb128 0x7
	.long	.LASF390
	.byte	0x5
	.uleb128 0xa
	.long	.LASF391
	.byte	0x5
	.uleb128 0xc
	.long	.LASF392
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF393
	.byte	0x5
	.uleb128 0x11
	.long	.LASF394
	.byte	0x5
	.uleb128 0x12
	.long	.LASF395
	.byte	0x5
	.uleb128 0x14
	.long	.LASF396
	.byte	0x5
	.uleb128 0x15
	.long	.LASF397
	.byte	0x5
	.uleb128 0x18
	.long	.LASF398
	.byte	0x5
	.uleb128 0x19
	.long	.LASF399
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF401
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF402
	.byte	0x5
	.uleb128 0x20
	.long	.LASF403
	.byte	0x5
	.uleb128 0x22
	.long	.LASF404
	.byte	0x5
	.uleb128 0x23
	.long	.LASF405
	.byte	0x5
	.uleb128 0x25
	.long	.LASF406
	.byte	0x5
	.uleb128 0x26
	.long	.LASF407
	.byte	0x5
	.uleb128 0x27
	.long	.LASF408
	.byte	0x5
	.uleb128 0x28
	.long	.LASF409
	.byte	0x5
	.uleb128 0x29
	.long	.LASF410
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF411
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF412
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF414
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x5
	.uleb128 0x30
	.long	.LASF416
	.byte	0x5
	.uleb128 0x31
	.long	.LASF417
	.byte	0x5
	.uleb128 0x32
	.long	.LASF418
	.byte	0x5
	.uleb128 0x33
	.long	.LASF419
	.byte	0x5
	.uleb128 0x34
	.long	.LASF420
	.byte	0x5
	.uleb128 0x35
	.long	.LASF421
	.byte	0x5
	.uleb128 0x37
	.long	.LASF422
	.byte	0x5
	.uleb128 0x38
	.long	.LASF423
	.byte	0x5
	.uleb128 0x39
	.long	.LASF424
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF425
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF426
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF427
	.byte	0x5
	.uleb128 0x40
	.long	.LASF428
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF429
	.byte	0x5
	.uleb128 0x59
	.long	.LASF430
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF431
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF432
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF433
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF434
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF435
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF436
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF437
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF438
	.byte	0x5
	.uleb128 0x8
	.long	.LASF439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF440
	.byte	0x5
	.uleb128 0x7
	.long	.LASF441
	.byte	0x5
	.uleb128 0x8
	.long	.LASF442
	.byte	0x5
	.uleb128 0x9
	.long	.LASF443
	.byte	0x5
	.uleb128 0xa
	.long	.LASF444
	.byte	0x5
	.uleb128 0xb
	.long	.LASF445
	.byte	0x5
	.uleb128 0xc
	.long	.LASF446
	.byte	0x5
	.uleb128 0xd
	.long	.LASF447
	.byte	0x5
	.uleb128 0xe
	.long	.LASF448
	.byte	0x5
	.uleb128 0x10
	.long	.LASF449
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF450
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF452
	.byte	0x5
	.uleb128 0x20
	.long	.LASF453
	.byte	0x5
	.uleb128 0x21
	.long	.LASF454
	.byte	0x5
	.uleb128 0x23
	.long	.LASF449
	.byte	0x5
	.uleb128 0x24
	.long	.LASF455
	.byte	0x5
	.uleb128 0x25
	.long	.LASF456
	.byte	0x5
	.uleb128 0x26
	.long	.LASF457
	.byte	0x5
	.uleb128 0x28
	.long	.LASF458
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF459
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF461
	.byte	0x5
	.uleb128 0x30
	.long	.LASF462
	.byte	0x5
	.uleb128 0x31
	.long	.LASF463
	.byte	0x5
	.uleb128 0x32
	.long	.LASF464
	.byte	0x5
	.uleb128 0x33
	.long	.LASF465
	.byte	0x5
	.uleb128 0x35
	.long	.LASF466
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF467
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF471
	.byte	0x5
	.uleb128 0xf
	.long	.LASF472
	.byte	0x5
	.uleb128 0x10
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF475
	.byte	0x5
	.uleb128 0x23
	.long	.LASF476
	.byte	0x5
	.uleb128 0x24
	.long	.LASF477
	.byte	0x5
	.uleb128 0x25
	.long	.LASF478
	.byte	0x5
	.uleb128 0x26
	.long	.LASF479
	.byte	0x5
	.uleb128 0x27
	.long	.LASF480
	.byte	0x5
	.uleb128 0x28
	.long	.LASF481
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x5
	.uleb128 0x31
	.long	.LASF483
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF484
	.byte	0x5
	.uleb128 0x11
	.long	.LASF485
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF486
	.byte	0x5
	.uleb128 0xab
	.long	.LASF487
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF489
	.byte	0x5
	.uleb128 0x9
	.long	.LASF490
	.byte	0x5
	.uleb128 0xa
	.long	.LASF491
	.byte	0x5
	.uleb128 0xb
	.long	.LASF492
	.byte	0x5
	.uleb128 0xd
	.long	.LASF493
	.byte	0x5
	.uleb128 0xe
	.long	.LASF494
	.byte	0x5
	.uleb128 0x10
	.long	.LASF495
	.byte	0x5
	.uleb128 0x11
	.long	.LASF496
	.byte	0x5
	.uleb128 0x12
	.long	.LASF497
	.byte	0x5
	.uleb128 0x13
	.long	.LASF498
	.byte	0x5
	.uleb128 0x19
	.long	.LASF499
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF500
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF501
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF505
	.byte	0x5
	.uleb128 0x20
	.long	.LASF506
	.byte	0x5
	.uleb128 0x21
	.long	.LASF507
	.byte	0x5
	.uleb128 0x22
	.long	.LASF508
	.byte	0x5
	.uleb128 0x23
	.long	.LASF509
	.byte	0x5
	.uleb128 0x24
	.long	.LASF510
	.byte	0x5
	.uleb128 0x25
	.long	.LASF511
	.byte	0x5
	.uleb128 0x27
	.long	.LASF512
	.byte	0x5
	.uleb128 0x28
	.long	.LASF513
	.byte	0x5
	.uleb128 0x29
	.long	.LASF514
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF515
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF519
	.byte	0x5
	.uleb128 0x34
	.long	.LASF520
	.byte	0x5
	.uleb128 0x35
	.long	.LASF521
	.byte	0x5
	.uleb128 0x36
	.long	.LASF522
	.byte	0x5
	.uleb128 0x37
	.long	.LASF523
	.byte	0x5
	.uleb128 0x38
	.long	.LASF524
	.byte	0x5
	.uleb128 0x39
	.long	.LASF525
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF526
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF527
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF528
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF529
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF530
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF531
	.byte	0x5
	.uleb128 0x40
	.long	.LASF532
	.byte	0x5
	.uleb128 0x41
	.long	.LASF533
	.byte	0x5
	.uleb128 0x42
	.long	.LASF534
	.byte	0x5
	.uleb128 0x43
	.long	.LASF535
	.byte	0x5
	.uleb128 0x44
	.long	.LASF536
	.byte	0x5
	.uleb128 0x45
	.long	.LASF537
	.byte	0x5
	.uleb128 0x46
	.long	.LASF538
	.byte	0x5
	.uleb128 0x47
	.long	.LASF539
	.byte	0x5
	.uleb128 0x48
	.long	.LASF540
	.byte	0x5
	.uleb128 0x49
	.long	.LASF541
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF542
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF543
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF544
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF545
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF546
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF547
	.byte	0x5
	.uleb128 0x50
	.long	.LASF548
	.byte	0x5
	.uleb128 0x51
	.long	.LASF549
	.byte	0x5
	.uleb128 0x52
	.long	.LASF550
	.byte	0x5
	.uleb128 0x54
	.long	.LASF551
	.byte	0x5
	.uleb128 0x55
	.long	.LASF552
	.byte	0x5
	.uleb128 0x56
	.long	.LASF553
	.byte	0x5
	.uleb128 0x57
	.long	.LASF554
	.byte	0x5
	.uleb128 0x58
	.long	.LASF555
	.byte	0x5
	.uleb128 0x59
	.long	.LASF556
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF557
	.byte	0x5
	.uleb128 0x64
	.long	.LASF558
	.byte	0x5
	.uleb128 0x97
	.long	.LASF559
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF560
	.byte	0x5
	.uleb128 0xac
	.long	.LASF561
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF562
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF563
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF564
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF565
	.byte	0x5
	.uleb128 0xee
	.long	.LASF566
	.byte	0x5
	.uleb128 0x101
	.long	.LASF567
	.byte	0x5
	.uleb128 0x104
	.long	.LASF568
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF569
	.byte	0x5
	.uleb128 0x126
	.long	.LASF570
	.byte	0x5
	.uleb128 0x127
	.long	.LASF571
	.byte	0x5
	.uleb128 0x128
	.long	.LASF572
	.byte	0x5
	.uleb128 0x129
	.long	.LASF573
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF574
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF575
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF577
	.byte	0x5
	.uleb128 0x23
	.long	.LASF578
	.byte	0x5
	.uleb128 0x24
	.long	.LASF579
	.byte	0x5
	.uleb128 0x25
	.long	.LASF580
	.byte	0x5
	.uleb128 0x26
	.long	.LASF581
	.byte	0x5
	.uleb128 0x29
	.long	.LASF582
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF583
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF584
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF585
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF586
	.byte	0x5
	.uleb128 0x30
	.long	.LASF587
	.byte	0x5
	.uleb128 0x31
	.long	.LASF588
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atomic.h.2.72172410bc17d188b39a3ef968b1c0a6,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF590
	.byte	0x5
	.uleb128 0x6
	.long	.LASF591
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.btree.h.21.672c46ec88ac5af8e0e0b3d80372ebac,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF592
	.byte	0x5
	.uleb128 0x16
	.long	.LASF593
	.byte	0x5
	.uleb128 0x17
	.long	.LASF594
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ahci.h.15.f00349a0c671563a4811197ab8a9e909,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.long	.LASF596
	.byte	0x5
	.uleb128 0x10
	.long	.LASF597
	.byte	0x5
	.uleb128 0x11
	.long	.LASF598
	.byte	0x5
	.uleb128 0x12
	.long	.LASF599
	.byte	0x5
	.uleb128 0x13
	.long	.LASF600
	.byte	0x5
	.uleb128 0x15
	.long	.LASF601
	.byte	0x5
	.uleb128 0x18
	.long	.LASF602
	.byte	0x5
	.uleb128 0x19
	.long	.LASF603
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF604
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF605
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF606
	.byte	0x5
	.uleb128 0x21
	.long	.LASF607
	.byte	0x5
	.uleb128 0x24
	.long	.LASF608
	.byte	0x5
	.uleb128 0x26
	.long	.LASF609
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF610
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF611
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF612
	.byte	0x5
	.uleb128 0x30
	.long	.LASF613
	.byte	0x5
	.uleb128 0x40
	.long	.LASF614
	.byte	0x5
	.uleb128 0x41
	.long	.LASF615
	.byte	0x5
	.uleb128 0x42
	.long	.LASF616
	.byte	0x5
	.uleb128 0x43
	.long	.LASF617
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF618
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF619
	.byte	0x5
	.uleb128 0x145
	.long	.LASF620
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vfs.h.16.cddd221c8fce8abc96b253372c8dc337,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF621
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF622
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vnode.h.26.72bdf34e718f60f64c3467d6030617ec,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF623
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF624
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.s5fs.h.23.785bd3a7ed42ddb60d0a997a386fe026,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF625
	.byte	0x5
	.uleb128 0x18
	.long	.LASF626
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF627
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF628
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF629
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF630
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF631
	.byte	0x5
	.uleb128 0x20
	.long	.LASF632
	.byte	0x5
	.uleb128 0x21
	.long	.LASF633
	.byte	0x5
	.uleb128 0x22
	.long	.LASF634
	.byte	0x5
	.uleb128 0x24
	.long	.LASF635
	.byte	0x5
	.uleb128 0x25
	.long	.LASF636
	.byte	0x5
	.uleb128 0x26
	.long	.LASF637
	.byte	0x5
	.uleb128 0x27
	.long	.LASF638
	.byte	0x5
	.uleb128 0x28
	.long	.LASF639
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF640
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF641
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF642
	.byte	0x5
	.uleb128 0x31
	.long	.LASF643
	.byte	0x5
	.uleb128 0x34
	.long	.LASF644
	.byte	0x5
	.uleb128 0x37
	.long	.LASF645
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF646
	.byte	0x5
	.uleb128 0x40
	.long	.LASF647
	.byte	0x5
	.uleb128 0x71
	.long	.LASF648
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF609:
	.string	"AHCI_COMMAND_TABLE_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * AHCI_COMMAND_HEADERS_PER_LIST * sizeof(command_table_t))"
.LASF602:
	.string	"AHCI_MAX_NUM_PORTS 32"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF547:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF662:
	.string	"size_t"
.LASF394:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF837:
	.string	"unlink"
.LASF595:
	.string	"BLOCK_SIZE PAGE_SIZE"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF717:
	.string	"kc_ctx"
.LASF553:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF522:
	.string	"DBG_MM DBG_MODE(1)"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF535:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF704:
	.string	"c_rsp"
.LASF444:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF689:
	.string	"p_cwd"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF824:
	.string	"chardev"
.LASF436:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF453:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF393:
	.string	"PAGE_SHIFT 12"
.LASF654:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF866:
	.string	"dbg_print"
.LASF592:
	.string	"BRANCHING_FACTOR 2"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF512:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF629:
	.string	"S5_NDIRECT_BLOCKS 28"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF706:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF870:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF830:
	.string	"write"
.LASF828:
	.string	"chardev_ops"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF548:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF736:
	.string	"kt_state"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF594:
	.string	"MAX_CHILDREN 2*BRANCHING_FACTOR"
.LASF493:
	.string	"INTR_APICTIMER 0xf0"
.LASF614:
	.string	"ATA_READ_DMA_EXT_COMMAND 0x25"
.LASF390:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF375:
	.string	"NULL 0"
.LASF872:
	.string	"__next_bd"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF365:
	.string	"__linux__ 1"
.LASF784:
	.string	"get_pframe"
.LASF858:
	.string	"s5f_super"
.LASF428:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF344:
	.string	"__x86_64 1"
.LASF699:
	.string	"mo_btree"
.LASF867:
	.string	"list_insert_tail"
.LASF868:
	.string	"blockdev_flush_pframe"
.LASF843:
	.string	"acquire"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF847:
	.string	"s5_super"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF753:
	.string	"vn_state"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF703:
	.string	"c_rip"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF566:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF622:
	.string	"STR_MAX 32"
.LASF842:
	.string	"stat"
.LASF581:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF443:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF722:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF483:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF805:
	.string	"px_interrupt_status_clear"
.LASF397:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF420:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF458:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF879:
	.string	"lessthaneq"
.LASF810:
	.string	"umount"
.LASF725:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF561:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF762:
	.string	"km_waitq"
.LASF463:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF663:
	.string	"ssize_t"
.LASF570:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF861:
	.string	"s5f_mobj"
.LASF768:
	.string	"n_keys"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF773:
	.string	"children"
.LASF454:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF556:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF487:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF620:
	.string	"PORT_INDEX(hba,port) ((port) - (hba)->ports)"
.LASF694:
	.string	"mo_type"
.LASF407:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF396:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF539:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF740:
	.string	"kt_preemption_count"
.LASF789:
	.string	"blockdev"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF401:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF616:
	.string	"ATA_READ_FPDMA_QUEUED_COMMAND 0x60"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF528:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF764:
	.string	"km_link"
.LASF567:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF849:
	.string	"s5s_free_inode"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF770:
	.string	"is_leaf"
.LASF658:
	.string	"long int"
.LASF460:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF610:
	.string	"AHCI_SIZE (AHCI_COMMAND_LIST_ARRAY_SIZE + AHCI_RECEIVED_FIS_ARRAY_SIZE + AHCI_COMMAND_TABLE_ARRAY_SIZE)"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF502:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF381:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF457:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF486:
	.string	"PID_IDLE 0"
.LASF882:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF404:
	.string	"USE_2MB_PAGES 1"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF611:
	.string	"AHCI_SIZE_PAGES ((uintptr_t)PAGE_ALIGN_UP(AHCI_SIZE) / PAGE_SIZE)"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF491:
	.string	"INTR_GPF 0x0d"
.LASF532:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF489:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF538:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF892:
	.string	"sata_init"
.LASF406:
	.string	"PAGE_SHIFT_2MB 21"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF643:
	.string	"S5_DATA_BLOCK(seekptr) ((seekptr) / S5_BLOCK_SIZE)"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF588:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF688:
	.string	"p_files"
.LASF814:
	.string	"fs_root"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF667:
	.string	"devid_t"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF510:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF379:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF434:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF721:
	.string	"KT_NO_STATE"
.LASF649:
	.string	"signed char"
.LASF653:
	.string	"uint8_t"
.LASF409:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF505:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF523:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF554:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF624:
	.string	"VNODE_LOADED 1"
.LASF737:
	.string	"kt_plink"
.LASF560:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF626:
	.string	"S5_IS_SUPER(blkno) ((blkno) == S5_SUPER_BLOCK)"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF635:
	.string	"S5_TYPE_FREE 0x0"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF807:
	.string	"fs_ops"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF650:
	.string	"unsigned char"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF715:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF439:
	.string	"VMMAP_DIR_HILO 2"
.LASF382:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF615:
	.string	"ATA_WRITE_DMA_EXT_COMMAND 0x35"
.LASF544:
	.string	"DBG_THR DBG_MODE(23)"
.LASF447:
	.string	"PT_SIZE 0x080"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF813:
	.string	"fs_type"
.LASF450:
	.string	"INDEX_MASK 0b111111111"
.LASF714:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF500:
	.string	"IPL_HIGH 0xe0"
.LASF782:
	.string	"pframe_t"
.LASF818:
	.string	"vnode_list_mutex"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF519:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF446:
	.string	"PT_DIRTY 0x040"
.LASF389:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF540:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF599:
	.string	"AHCI_SECTORS_PER_PRDT (AHCI_MAX_PRDT_SIZE / ATA_SECTOR_SIZE)"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF800:
	.string	"value"
.LASF504:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF864:
	.string	"dbg_color"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF405:
	.string	"USE_1GB_PAGES 1"
.LASF710:
	.string	"char"
.LASF430:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF677:
	.string	"p_pid"
.LASF701:
	.string	"pml4_t"
.LASF459:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF431:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF794:
	.string	"read_block"
.LASF711:
	.string	"ktqueue"
.LASF862:
	.string	"s5fs_t"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF562:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF501:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF865:
	.string	"dbg_panic"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF804:
	.string	"px_interrupt_enable_t"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF445:
	.string	"PT_ACCESSED 0x020"
.LASF758:
	.string	"curcore"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF422:
	.string	"PAGE_SHIFT_512GB 39"
.LASF642:
	.string	"S5_NIDIRECT_BLOCKS (S5_BLOCK_SIZE / sizeof(uint32_t))"
.LASF618:
	.string	"ATA_DEVICE_LBA_MODE 0x40"
.LASF361:
	.string	"__SEG_FS 1"
.LASF676:
	.string	"proc"
.LASF888:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF578:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF816:
	.string	"fs_vnode_allocator"
.LASF391:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF513:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF680:
	.string	"p_children"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF555:
	.string	"DBG_USER DBG_MODE(38)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF884:
	.string	"intr_wait"
.LASF425:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF632:
	.string	"S5_MAX_FILE_BLOCKS (S5_NDIRECT_BLOCKS + S5_NIDIRECT_BLOCKS)"
.LASF886:
	.string	"intr_enable"
.LASF531:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF780:
	.string	"pf_mutex"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF831:
	.string	"mmap"
.LASF848:
	.string	"s5s_magic"
.LASF708:
	.string	"c_kstacksz"
.LASF875:
	.string	"atomic_dec_and_test"
.LASF833:
	.string	"vnode_ops"
.LASF797:
	.string	"dhrs"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF386:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF461:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF821:
	.string	"file"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF745:
	.string	"vn_ops"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF388:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF686:
	.string	"p_pml4"
.LASF727:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF480:
	.string	"NAME_LEN 28"
.LASF891:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF584:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF761:
	.string	"kmutex"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF878:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF889:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF726:
	.string	"KT_EXITED"
.LASF587:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF668:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF478:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF517:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF751:
	.string	"vn_i"
.LASF669:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF750:
	.string	"vn_len"
.LASF541:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF665:
	.string	"blocknum_t"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF873:
	.string	"blockdev_register"
.LASF820:
	.string	"fs_ops_t"
.LASF729:
	.string	"kt_ctx"
.LASF514:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF825:
	.string	"cd_id"
.LASF839:
	.string	"mkdir"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF874:
	.string	"atomic_inc_not_zero"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF646:
	.string	"S5_INODE_OFFSET(inum) ((inum) % S5_INODES_PER_BLOCK)"
.LASF741:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF464:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF573:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF557:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF565:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF687:
	.string	"p_wait"
.LASF841:
	.string	"readdir"
.LASF707:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF546:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF596:
	.string	"AHCI_PRDT_DBC_WIDTH 22"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF455:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF647:
	.string	"FS_TO_S5FS(fs) ((s5fs_t *)(fs)->fs_i)"
.LASF666:
	.string	"ino_t"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF617:
	.string	"ATA_WRITE_FPDMA_QUEUED_COMMAND 0x61"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF660:
	.string	"long unsigned int"
.LASF511:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF808:
	.string	"read_vnode"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF542:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF723:
	.string	"KT_RUNNABLE"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF441:
	.string	"PT_WRITE 0x002"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF759:
	.string	"curproc"
.LASF641:
	.string	"S5_CURRENT_VERSION 3"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF398:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF851:
	.string	"s5s_free_blocks"
.LASF419:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF793:
	.string	"blockdev_ops"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF471:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF683:
	.string	"p_child_link"
.LASF836:
	.string	"link"
.LASF802:
	.string	"px_interrupt_status"
.LASF857:
	.string	"s5f_bdev"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF631:
	.string	"S5_DIRENTS_PER_BLOCK (S5_BLOCK_SIZE / sizeof(s5_dirent_t))"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF679:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF732:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF788:
	.string	"mobj_t"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF456:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF621:
	.string	"name_match(fname,name,namelen) (strlen(fname) == namelen && !strncmp((fname), (name), (namelen)))"
.LASF520:
	.string	"DBG_ALL (~0ULL)"
.LASF412:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF705:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF432:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF496:
	.string	"INTR_SPURIOUS 0xfe"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF485:
	.string	"PROC_NAME_LEN 256"
.LASF795:
	.string	"write_block"
.LASF636:
	.string	"S5_TYPE_DATA 0x1"
.LASF355:
	.string	"__SSE__ 1"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF469:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF466:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF754:
	.string	"vn_waitq"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF757:
	.string	"proc_t"
.LASF585:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF525:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF893:
	.string	"blockdev_init"
.LASF771:
	.string	"keys"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF835:
	.string	"lookup"
.LASF563:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF728:
	.string	"kthread"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF545:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF518:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF559:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF734:
	.string	"kt_cancelled"
.LASF590:
	.string	"ATOMIC_H "
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF811:
	.string	"sync"
.LASF812:
	.string	"fs_dev"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF644:
	.string	"S5_DATA_OFFSET(seekptr) ((seekptr) % S5_BLOCK_SIZE)"
.LASF803:
	.string	"px_interrupt_enable"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF507:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF880:
	.string	"greaterthan"
.LASF640:
	.string	"S5_MAGIC 071177"
.LASF586:
	.string	"MEM_MAJOR 1"
.LASF623:
	.string	"VNODE_LOADING 0"
.LASF537:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF580:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF894:
	.string	"__atomic_add_unless"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF440:
	.string	"PT_PRESENT 0x001"
.LASF730:
	.string	"kt_kstack"
.LASF516:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF508:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF790:
	.string	"bd_id"
.LASF670:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF718:
	.string	"kc_queue"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF781:
	.string	"pf_link"
.LASF579:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF433:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF671:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF829:
	.string	"read"
.LASF856:
	.string	"s5fs"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF656:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF684:
	.string	"p_status"
.LASF498:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF462:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF720:
	.string	"core_t"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF575:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF424:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF608:
	.string	"AHCI_COMMAND_TABLE_ARRAY_BASE(ahci_base) (AHCI_RECEIVED_FIS_ARRAY_BASE(ahci_base) + AHCI_RECEIVED_FIS_ARRAY_SIZE)"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF664:
	.string	"pid_t"
.LASF475:
	.string	"PF_HASH_SIZE 17"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF503:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF887:
	.string	"intr_enabled"
.LASF402:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF543:
	.string	"DBG_KB DBG_MODE(22)"
.LASF799:
	.string	"bits"
.LASF0:
	.string	"__STDC__ 1"
.LASF702:
	.string	"context"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF877:
	.string	"atomic_set"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF777:
	.string	"pf_loc"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF576:
	.string	"SATA_BLOCK_SIZE 4096"
.LASF838:
	.string	"rename"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF822:
	.string	"slab_allocator"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF672:
	.string	"list"
.LASF846:
	.string	"dirent"
.LASF675:
	.string	"vmm_proc"
.LASF380:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF738:
	.string	"kt_qlink"
.LASF719:
	.string	"kc_csdpaddr"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF613:
	.string	"ALIGN_UP_POW_2(x,align) (ALIGN_DOWN_POW_2((x)-1, align) + (align))"
.LASF583:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF645:
	.string	"S5_INODE_BLOCK(inum) ((inum) / S5_INODES_PER_BLOCK + 1)"
.LASF700:
	.string	"phys"
.LASF697:
	.string	"mo_pframes"
.LASF785:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF713:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF536:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF756:
	.string	"vn_link"
.LASF452:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF427:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF791:
	.string	"bd_ops"
.LASF357:
	.string	"__FXSR__ 1"
.LASF890:
	.string	"drivers/blockdev.c"
.LASF395:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF716:
	.string	"kc_id"
.LASF490:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF834:
	.string	"mknod"
.LASF735:
	.string	"kt_wchan"
.LASF449:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF515:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF342:
	.string	"__amd64 1"
.LASF482:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF418:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF696:
	.string	"mo_refcount"
.LASF416:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF796:
	.string	"blockdev_t"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF598:
	.string	"ATA_SECTOR_SIZE 512"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF477:
	.string	"MAX_FILES 1024"
.LASF600:
	.string	"AHCI_MAX_SECTORS_PER_COMMAND (1 << 16)"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF495:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF474:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF749:
	.string	"vn_mode"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF769:
	.string	"n_children"
.LASF695:
	.string	"mo_ops"
.LASF476:
	.string	"MAXPATHLEN 1024"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF760:
	.string	"dbg_modes"
.LASF748:
	.string	"vn_vno"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF607:
	.string	"AHCI_RECEIVED_FIS_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * sizeof(received_fis_t))"
.LASF806:
	.string	"px_interrupt_enable_all_enabled"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF589:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF603:
	.string	"AHCI_COMMAND_HEADERS_PER_LIST 32"
.LASF467:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF752:
	.string	"vn_devid"
.LASF633:
	.string	"S5_MAX_FILE_SIZE (S5_MAX_FILE_BLOCKS * S5_BLOCK_SIZE)"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF627:
	.string	"S5_NBLKS_PER_FNODE 30"
.LASF681:
	.string	"p_pproc"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF639:
	.string	"S5_TYPE_BLK 0x8"
.LASF786:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF809:
	.string	"delete_vnode"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF871:
	.string	"blockdev_lookup"
.LASF724:
	.string	"KT_SLEEP"
.LASF435:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF552:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF832:
	.string	"chardev_t"
.LASF429:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF746:
	.string	"vn_fs"
.LASF739:
	.string	"kt_mutexes"
.LASF801:
	.string	"px_interrupt_status_t"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF415:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF568:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF743:
	.string	"proc_state_t"
.LASF885:
	.string	"intr_disable"
.LASF488:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF378:
	.string	"noreturn __attribute__((noreturn))"
.LASF783:
	.string	"mobj_ops"
.LASF383:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF709:
	.string	"context_t"
.LASF765:
	.string	"kmutex_t"
.LASF354:
	.string	"__MMX__ 1"
.LASF377:
	.string	"inline __attribute__((always_inline, used))"
.LASF423:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF779:
	.string	"pf_dirty"
.LASF690:
	.string	"p_brk"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF597:
	.string	"AHCI_MAX_PRDT_SIZE (1 << AHCI_PRDT_DBC_WIDTH)"
.LASF742:
	.string	"PROC_DEAD"
.LASF852:
	.string	"s5s_root_inode"
.LASF569:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF551:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF693:
	.string	"mobj"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF619:
	.string	"SATA_SIG_ATA 0x00000101"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF755:
	.string	"vn_dev"
.LASF534:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF417:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF473:
	.string	"TICK_MSECS 10"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF403:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF826:
	.string	"cd_ops"
.LASF778:
	.string	"pf_addr"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF549:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF529:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF392:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF850:
	.string	"s5s_nfree"
.LASF845:
	.string	"truncate_file"
.LASF442:
	.string	"PT_USER 0x004"
.LASF356:
	.string	"__SSE2__ 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF521:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF692:
	.string	"p_vmmap"
.LASF854:
	.string	"s5s_version"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF506:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF533:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF387:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF384:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF484:
	.string	"PROC_MAX_COUNT 65536"
.LASF651:
	.string	"short int"
.LASF776:
	.string	"pf_pagenum"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF659:
	.string	"uint64_t"
.LASF604:
	.string	"AHCI_COMMAND_LIST_ARRAY_BASE(ahci_base) (ahci_base)"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF509:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF591:
	.string	"ATOMIC_INIT(i) (i)"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF731:
	.string	"kt_retval"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF465:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF558:
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
.LASF853:
	.string	"s5s_num_inodes"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF763:
	.string	"km_holder"
.LASF399:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF400:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF470:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF606:
	.string	"AHCI_RECEIVED_FIS_ARRAY_BASE(ahci_base) ((ahci_base) + AHCI_COMMAND_LIST_ARRAY_SIZE)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF413:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF468:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF494:
	.string	"INTR_KEYBOARD 0xe0"
.LASF421:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF792:
	.string	"bd_link"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF438:
	.string	"VMMAP_DIR_LOHI 1"
.LASF876:
	.string	"atomic_inc"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF712:
	.string	"tq_list"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF637:
	.string	"S5_TYPE_DIR 0x2"
.LASF411:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF673:
	.string	"vmmap"
.LASF744:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF472:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF634:
	.string	"S5_NAME_LEN 28"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF526:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF638:
	.string	"S5_TYPE_CHR 0x4"
.LASF691:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF767:
	.string	"btree_node"
.LASF682:
	.string	"p_list_link"
.LASF628:
	.string	"S5_BLOCK_SIZE 4096"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF572:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF819:
	.string	"vnode_rename_mutex"
.LASF612:
	.string	"ALIGN_DOWN_POW_2(x,align) ((x) & -(align))"
.LASF524:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF571:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF798:
	.string	"sdbs"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF574:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF787:
	.string	"destructor"
.LASF385:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF655:
	.string	"uint32_t"
.LASF408:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF817:
	.string	"vnode_list"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF698:
	.string	"mo_mutex"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF827:
	.string	"cd_link"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF605:
	.string	"AHCI_COMMAND_LIST_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * sizeof(command_list_t))"
.LASF775:
	.string	"pframe"
.LASF564:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF674:
	.string	"vmm_list"
.LASF844:
	.string	"release"
.LASF492:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF625:
	.string	"S5_SUPER_BLOCK 0"
.LASF481:
	.string	"NFILES 32"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF601:
	.string	"ACHI_NUM_PRDTS_PER_COMMAND_TABLE (AHCI_MAX_SECTORS_PER_COMMAND / AHCI_SECTORS_PER_PRDT)"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF448:
	.string	"PT_GLOBAL 0x100"
.LASF815:
	.string	"fs_i"
.LASF652:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF648:
	.string	"VNODE_TO_S5NODE(vn) CONTAINER_OF(vn, s5_node_t, vnode)"
.LASF869:
	.string	"blockdev_fill_pframe"
.LASF766:
	.string	"atomic_t"
.LASF823:
	.string	"fs_t"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF582:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF527:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF840:
	.string	"rmdir"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF426:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF550:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF410:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF577:
	.string	"MINOR_BITS 8"
.LASF747:
	.string	"vn_mobj"
.LASF883:
	.string	"equals"
.LASF863:
	.string	"blockdevs"
.LASF657:
	.string	"int64_t"
.LASF859:
	.string	"s5f_mutex"
.LASF630:
	.string	"S5_INODES_PER_BLOCK (S5_BLOCK_SIZE / sizeof(s5_inode_t))"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF733:
	.string	"kt_proc"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF479:
	.string	"MAX_VNODES 1024"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF593:
	.string	"MAX_KEYS (2*BRANCHING_FACTOR) - 1"
.LASF499:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF661:
	.string	"uintptr_t"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF530:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF678:
	.string	"p_name"
.LASF364:
	.string	"__linux 1"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF772:
	.string	"data"
.LASF774:
	.string	"btree_node_t"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF497:
	.string	"INTR_APICERR 0xff"
.LASF860:
	.string	"s5f_fs"
.LASF855:
	.string	"s5_super_t"
.LASF451:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF414:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF881:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF437:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF685:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
