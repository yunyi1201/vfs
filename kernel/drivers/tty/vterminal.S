	.file	"vterminal.c"
	.text
.Ltext0:
	.file 1 "drivers/tty/vterminal.c"
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
	.globl	vtconsole
	.type	vtconsole, @function
vtconsole:
.LFB10:
	.loc 1 648 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movl	%edx, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -208(%rbp)
	.loc 1 649 16
	movq	-184(%rbp), %rax
	movl	-188(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 650 17
	movq	-184(%rbp), %rax
	movl	-192(%rbp), %edx
	movl	%edx, 4(%rax)
	.loc 1 653 14
	movl	$0, -96(%rbp)
	.loc 1 654 14
	movl	$0, -28(%rbp)
	.loc 1 656 5
	leaq	-96(%rbp), %rax
	addq	$4, %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL0:
	.loc 1 658 21
	movq	-184(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rbx
	movq	%rcx, 20(%rax)
	movq	%rbx, 28(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, 36(%rax)
	movq	%rbx, 44(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 52(%rax)
	movq	%rbx, 60(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 68(%rax)
	movq	%rbx, 76(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 84(%rax)
	.loc 1 660 15
	movq	-184(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-184(%rbp), %rax
	movl	$7, 12(%rax)
	movq	-184(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 662 33
	movl	-188(%rbp), %eax
	imull	-192(%rbp), %eax
	cltq
	.loc 1 662 19
	salq	$4, %rax
	movq	%rax, %rdi
	movabsq	$kmalloc, %rax
	call	*%rax
.LVL1:
	.loc 1 662 17
	movq	-184(%rbp), %rdx
	movq	%rax, 96(%rdx)
	.loc 1 664 17
	movl	$512, %edi
	movabsq	$kmalloc, %rax
	call	*%rax
.LVL2:
	.loc 1 664 15
	movq	-184(%rbp), %rdx
	movq	%rax, 104(%rdx)
	.loc 1 665 20
	movq	-184(%rbp), %rax
	movl	$0, 112(%rax)
	.loc 1 667 17
	movq	-184(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-184(%rbp), %rax
	movl	$0, 120(%rax)
	.loc 1 669 19
	movq	-184(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, 128(%rax)
	.loc 1 670 18
	movq	-184(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 136(%rax)
	.loc 1 672 5
	movl	-192(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-188(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL3:
	.loc 1 674 12
	movq	-184(%rbp), %rax
	.loc 1 675 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	vtconsole, .-vtconsole
	.globl	vtconsole_delete
	.type	vtconsole_delete, @function
vtconsole_delete:
.LFB11:
	.loc 1 679 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 680 14
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 680 5
	movq	%rax, %rdi
	movabsq	$kfree, %rax
	call	*%rax
.LVL4:
	.loc 1 681 14
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	.loc 1 681 5
	movq	%rax, %rdi
	movabsq	$kfree, %rax
	call	*%rax
.LVL5:
	.loc 1 682 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$kfree, %rax
	call	*%rax
.LVL6:
	.loc 1 683 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	vtconsole_delete, .-vtconsole_delete
	.globl	vtconsole_clear
	.type	vtconsole_clear, @function
vtconsole_clear:
.LFB12:
	.loc 1 689 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
.LBB2:
	.loc 1 690 37
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 690 32
	imull	-48(%rbp), %eax
	movl	%eax, %edx
	.loc 1 690 14
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 690 5
	jmp	.L22
.L24:
.LBB3:
	.loc 1 692 30
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 692 38
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 692 19
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 694 20
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$7, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 695 17
	movq	-16(%rbp), %rax
	movb	$32, (%rax)
	.loc 1 697 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	.loc 1 697 12
	testq	%rax, %rax
	je	.L23
	.loc 1 699 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 699 61
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 699 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edi
	.loc 1 699 45
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 699 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	*%r8
.LVL7:
.L23:
.LBE3:
	.loc 1 690 75 discriminator 2
	addl	$1, -4(%rbp)
.L22:
	.loc 1 690 65 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 690 60 discriminator 1
	imull	-56(%rbp), %eax
	movl	%eax, %edx
	.loc 1 690 54 discriminator 1
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	.loc 1 690 48 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L24
.LBE2:
	.loc 1 702 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	vtconsole_clear, .-vtconsole_clear
	.globl	vtconsole_scroll
	.type	vtconsole_scroll, @function
vtconsole_scroll:
.LFB13:
	.loc 1 706 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 1 707 8
	cmpl	$0, -44(%rbp)
	je	.L35
	.loc 1 710 24
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 710 11
	movl	-44(%rbp), %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -44(%rbp)
.LBB4:
	.loc 1 713 14
	movl	$0, -4(%rbp)
	.loc 1 713 5
	jmp	.L28
.L30:
	.loc 1 716 29
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	.loc 1 716 46
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 716 54
	imull	-44(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 716 40
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	cltq
	.loc 1 716 37
	salq	$4, %rax
	addq	%rax, %rdx
	.loc 1 716 12
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 716 20
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rax, %rcx
	.loc 1 716 24
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 1 718 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	.loc 1 718 12
	testq	%rax, %rax
	je	.L29
	.loc 1 720 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 720 72
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	.loc 1 720 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %r9d
	.loc 1 720 56
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 720 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %edi
	.loc 1 720 36
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 720 44
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 720 13
	leaq	(%rax,%rdx), %rsi
	movq	-40(%rbp), %rax
	movl	%r9d, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
.LVL8:
.L29:
	.loc 1 714 11
	addl	$1, -4(%rbp)
.L28:
	.loc 1 713 30 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 713 43 discriminator 1
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 713 38 discriminator 1
	imull	%eax, %edx
	.loc 1 713 59 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 713 67 discriminator 1
	imull	-44(%rbp), %eax
	.loc 1 713 53 discriminator 1
	subl	%eax, %edx
	.loc 1 713 23 discriminator 1
	cmpl	%edx, -4(%rbp)
	jl	.L30
.LBE4:
.LBB5:
	.loc 1 725 23
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 725 36
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 725 31
	imull	%eax, %edx
	.loc 1 725 52
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 725 60
	imull	-44(%rbp), %eax
	.loc 1 725 14
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	.loc 1 725 5
	jmp	.L31
.L33:
.LBB6:
	.loc 1 728 30
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 728 38
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 728 19
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 729 20
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$7, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 730 17
	movq	-16(%rbp), %rax
	movb	$32, (%rax)
	.loc 1 732 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	.loc 1 732 12
	testq	%rax, %rax
	je	.L32
	.loc 1 734 16
	movq	-40(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 734 72
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	.loc 1 734 13
	movl	-8(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %r9d
	.loc 1 734 56
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 734 13
	movl	-8(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %edi
	.loc 1 734 36
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 734 44
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 734 13
	leaq	(%rax,%rdx), %rsi
	movq	-40(%rbp), %rax
	movl	%r9d, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
.LVL9:
.L32:
.LBE6:
	.loc 1 726 41
	addl	$1, -8(%rbp)
.L31:
	.loc 1 726 17 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 726 30 discriminator 1
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 726 25 discriminator 1
	imull	%edx, %eax
	.loc 1 726 12 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L33
.LBE5:
	.loc 1 739 20
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 739 8
	testl	%eax, %eax
	jle	.L25
	.loc 1 741 20
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 741 23
	subl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 743 24
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 743 12
	testl	%eax, %eax
	jns	.L34
	.loc 1 744 27
	movq	-40(%rbp), %rax
	movl	$0, 120(%rax)
.L34:
	.loc 1 746 16
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 746 12
	testq	%rax, %rax
	je	.L25
	.loc 1 748 16
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 748 13
	movq	-40(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL10:
	jmp	.L25
.L35:
	.loc 1 708 9
	nop
.L25:
	.loc 1 751 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	vtconsole_scroll, .-vtconsole_scroll
	.globl	vtconsole_newline
	.type	vtconsole_newline, @function
vtconsole_newline:
.LFB14:
	.loc 1 755 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 756 19
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 757 16
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 757 18
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 759 20
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	.loc 1 759 29
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 759 8
	cmpl	%eax, %edx
	jne	.L37
	.loc 1 761 9
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_scroll, %rax
	call	*%rax
.LVL11:
.L37:
	.loc 1 764 12
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 764 8
	testq	%rax, %rax
	je	.L39
	.loc 1 766 12
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 766 9
	movq	-8(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL12:
.L39:
	.loc 1 768 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	vtconsole_newline, .-vtconsole_newline
	.globl	vtconsole_append
	.type	vtconsole_append, @function
vtconsole_append:
.LFB15:
	.loc 1 772 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	.loc 1 773 8
	cmpb	$10, -60(%rbp)
	jne	.L41
	.loc 1 775 9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vtconsole_newline, %rax
	call	*%rax
.LVL13:
	.loc 1 843 1
	jmp	.L53
.L41:
	.loc 1 777 13
	cmpb	$13, -60(%rbp)
	jne	.L43
	.loc 1 779 23
	movq	-56(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 781 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 781 12
	testq	%rax, %rax
	je	.L53
	.loc 1 783 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 783 13
	movq	-56(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL14:
	.loc 1 843 1
	jmp	.L53
.L43:
	.loc 1 786 13
	cmpb	$9, -60(%rbp)
	jne	.L44
.LBB7:
	.loc 1 788 33
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	.loc 1 788 36
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	.loc 1 788 13
	movl	$8, %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	.loc 1 790 12
	movq	-56(%rbp), %rax
	movq	104(%rax), %rcx
	.loc 1 790 22
	movq	-56(%rbp), %rax
	movl	112(%rax), %edx
	.loc 1 790 34
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$25, %eax
	addl	%eax, %edx
	andl	$127, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	.loc 1 790 18
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 1 790 55
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 791 12
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	.loc 1 791 23
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 112(%rax)
.LBB8:
	.loc 1 793 18
	movl	$0, -4(%rbp)
	.loc 1 793 9
	jmp	.L45
.L46:
	.loc 1 795 13 discriminator 3
	movq	-56(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_append, %rax
	call	*%rax
.LVL15:
	.loc 1 793 33 discriminator 3
	addl	$1, -4(%rbp)
.L45:
	.loc 1 793 27 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L46
.LBE8:
.LBE7:
	.loc 1 843 1
	jmp	.L53
.L44:
	.loc 1 798 13
	cmpb	$8, -60(%rbp)
	jne	.L47
.LBB9:
	.loc 1 800 24
	movq	-56(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 800 12
	testl	%eax, %eax
	jle	.L48
	.loc 1 802 24
	movq	-56(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 802 26
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 116(%rax)
	jmp	.L49
.L48:
	.loc 1 806 24
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 806 26
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 807 32
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 807 40
	leal	-1(%rax), %edx
	.loc 1 807 27
	movq	-56(%rbp), %rax
	movl	%edx, 116(%rax)
.L49:
	.loc 1 810 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 810 12
	testq	%rax, %rax
	je	.L50
	.loc 1 812 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 812 13
	movq	-56(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL16:
.L50:
	.loc 1 815 21
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 815 42
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 815 29
	imull	%eax, %edx
	.loc 1 815 59
	movq	-56(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 815 13
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 1 816 30
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 816 38
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 816 19
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 817 20
	movq	-32(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-32(%rbp), %rax
	movl	$7, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 818 17
	movq	-32(%rbp), %rax
	movb	$32, (%rax)
	.loc 1 819 12
	movq	-56(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 819 68
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	.loc 1 819 9
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %r9d
	.loc 1 819 52
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 819 9
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %edi
	.loc 1 819 32
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 819 40
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 819 9
	leaq	(%rax,%rdx), %rsi
	movq	-56(%rbp), %rax
	movl	%r9d, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
.LVL17:
.LBE9:
	.loc 1 843 1
	jmp	.L53
.L47:
.LBB10:
	.loc 1 823 24
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	.loc 1 823 33
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 823 12
	cmpl	%eax, %edx
	jl	.L51
	.loc 1 824 13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vtconsole_newline, %rax
	call	*%rax
.LVL18:
.L51:
	.loc 1 827 17
	movq	-56(%rbp), %rax
	movq	96(%rax), %rcx
	.loc 1 827 37
	movq	-56(%rbp), %rax
	movl	116(%rax), %esi
	.loc 1 827 53
	movq	-56(%rbp), %rax
	movl	120(%rax), %edx
	.loc 1 827 61
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 827 56
	imull	%edx, %eax
	.loc 1 827 40
	addl	%esi, %eax
	cltq
	.loc 1 827 25
	salq	$4, %rax
	.loc 1 826 19
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 828 17
	movq	-16(%rbp), %rax
	movzbl	-60(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 829 20
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	%rcx, 4(%rax)
	movl	16(%rdx), %edx
	movl	%edx, 12(%rax)
	.loc 1 831 16
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	.loc 1 831 12
	testq	%rax, %rax
	je	.L52
	.loc 1 833 16
	movq	-56(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 833 13
	movq	-56(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	116(%rax), %edx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.LVL19:
.L52:
	.loc 1 836 20
	movq	-56(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 836 22
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 116(%rax)
	.loc 1 838 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 838 12
	testq	%rax, %rax
	je	.L53
	.loc 1 840 16
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 840 13
	movq	-56(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL20:
.L53:
.LBE10:
	.loc 1 843 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	vtconsole_append, .-vtconsole_append
	.globl	vtconsole_csi_cuu
	.type	vtconsole_csi_cuu, @function
vtconsole_csi_cuu:
.LFB16:
	.loc 1 847 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 848 8
	cmpl	$1, -36(%rbp)
	jne	.L55
	.loc 1 848 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 848 20 discriminator 1
	testl	%eax, %eax
	jne	.L55
.LBB11:
	.loc 1 850 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 851 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 851 23
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
.L55:
.LBE11:
	.loc 1 854 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 854 8
	testq	%rax, %rax
	je	.L57
	.loc 1 856 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 856 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL21:
.L57:
	.loc 1 858 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	vtconsole_csi_cuu, .-vtconsole_csi_cuu
	.globl	vtconsole_csi_cud
	.type	vtconsole_csi_cud, @function
vtconsole_csi_cud:
.LFB17:
	.loc 1 862 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 863 8
	cmpl	$1, -36(%rbp)
	jne	.L59
	.loc 1 863 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 863 20 discriminator 1
	testl	%eax, %eax
	jne	.L59
.LBB12:
	.loc 1 865 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 866 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	120(%rax), %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 866 23
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
.L59:
.LBE12:
	.loc 1 869 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 869 8
	testq	%rax, %rax
	je	.L61
	.loc 1 871 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 871 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL22:
.L61:
	.loc 1 873 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	vtconsole_csi_cud, .-vtconsole_csi_cud
	.globl	vtconsole_csi_cuf
	.type	vtconsole_csi_cuf, @function
vtconsole_csi_cuf:
.LFB18:
	.loc 1 877 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 878 8
	cmpl	$1, -36(%rbp)
	jne	.L63
	.loc 1 878 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 878 20 discriminator 1
	testl	%eax, %eax
	jne	.L63
.LBB13:
	.loc 1 880 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 881 25
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 881 23
	movq	-24(%rbp), %rax
	movl	%edx, 116(%rax)
.L63:
.LBE13:
	.loc 1 884 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 884 8
	testq	%rax, %rax
	je	.L65
	.loc 1 886 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 886 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL23:
.L65:
	.loc 1 888 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	vtconsole_csi_cuf, .-vtconsole_csi_cuf
	.globl	vtconsole_csi_cub
	.type	vtconsole_csi_cub, @function
vtconsole_csi_cub:
.LFB19:
	.loc 1 892 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 893 8
	cmpl	$1, -36(%rbp)
	jne	.L67
	.loc 1 893 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 893 20 discriminator 1
	testl	%eax, %eax
	jne	.L67
.LBB14:
	.loc 1 895 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 896 25
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	116(%rax), %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 896 23
	movq	-24(%rbp), %rax
	movl	%edx, 116(%rax)
.L67:
.LBE14:
	.loc 1 899 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 899 8
	testq	%rax, %rax
	je	.L69
	.loc 1 901 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 901 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL24:
.L69:
	.loc 1 903 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	vtconsole_csi_cub, .-vtconsole_csi_cub
	.globl	vtconsole_csi_cnl
	.type	vtconsole_csi_cnl, @function
vtconsole_csi_cnl:
.LFB20:
	.loc 1 908 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 909 8
	cmpl	$1, -36(%rbp)
	jne	.L71
	.loc 1 909 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 909 20 discriminator 1
	testl	%eax, %eax
	jne	.L71
.LBB15:
	.loc 1 911 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 912 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	120(%rax), %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 912 23
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 913 23
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
.L71:
.LBE15:
	.loc 1 916 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 916 8
	testq	%rax, %rax
	je	.L73
	.loc 1 918 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 918 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL25:
.L73:
	.loc 1 920 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	vtconsole_csi_cnl, .-vtconsole_csi_cnl
	.globl	vtconsole_csi_cpl
	.type	vtconsole_csi_cpl, @function
vtconsole_csi_cpl:
.LFB21:
	.loc 1 925 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 926 8
	cmpl	$1, -36(%rbp)
	jne	.L75
	.loc 1 926 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 926 20 discriminator 1
	testl	%eax, %eax
	jne	.L75
.LBB16:
	.loc 1 928 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 929 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 929 23
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
	.loc 1 930 23
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
.L75:
.LBE16:
	.loc 1 933 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 933 8
	testq	%rax, %rax
	je	.L77
	.loc 1 935 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 935 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL26:
.L77:
	.loc 1 937 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	vtconsole_csi_cpl, .-vtconsole_csi_cpl
	.globl	vtconsole_csi_cha
	.type	vtconsole_csi_cha, @function
vtconsole_csi_cha:
.LFB22:
	.loc 1 941 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 942 8
	cmpl	$1, -36(%rbp)
	jne	.L79
	.loc 1 942 32 discriminator 1
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 942 20 discriminator 1
	testl	%eax, %eax
	jne	.L79
.LBB17:
	.loc 1 944 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 945 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovg	%eax, %edx
	.loc 1 945 23
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
.L79:
.LBE17:
	.loc 1 948 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 948 8
	testq	%rax, %rax
	je	.L81
	.loc 1 950 12
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 950 9
	movq	-24(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL27:
.L81:
	.loc 1 952 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	vtconsole_csi_cha, .-vtconsole_csi_cha
	.globl	vtconsole_csi_cup
	.type	vtconsole_csi_cup, @function
vtconsole_csi_cup:
.LFB23:
	.loc 1 956 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 957 8
	cmpl	$1, -20(%rbp)
	jne	.L83
	.loc 1 957 31 discriminator 1
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 957 20 discriminator 1
	testl	%eax, %eax
	je	.L83
	.loc 1 959 23
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
	.loc 1 960 23
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	jmp	.L84
.L83:
	.loc 1 962 13
	cmpl	$2, -20(%rbp)
	jne	.L84
	.loc 1 964 21
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 964 12
	testl	%eax, %eax
	je	.L85
	.loc 1 966 27
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	jmp	.L86
.L85:
	.loc 1 970 29
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L87
	.loc 1 970 29 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	jmp	.L88
.L87:
	.loc 1 970 29 discriminator 2
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
.L88:
	.loc 1 970 27 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rdx
	movl	%eax, 120(%rdx)
.L86:
	.loc 1 973 18
	movq	-16(%rbp), %rax
	addq	$8, %rax
	.loc 1 973 21
	movl	4(%rax), %eax
	.loc 1 973 12
	testl	%eax, %eax
	je	.L89
	.loc 1 975 27
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	jmp	.L84
.L89:
	.loc 1 979 29
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L90
	.loc 1 979 29 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	jmp	.L91
.L90:
	.loc 1 979 29 discriminator 2
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
.L91:
	.loc 1 979 27 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rdx
	movl	%eax, 116(%rdx)
.L84:
	.loc 1 983 12
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	.loc 1 983 8
	testq	%rax, %rax
	je	.L93
	.loc 1 985 12
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	.loc 1 985 9
	movq	-8(%rbp), %rax
	leaq	116(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
.LVL28:
.L93:
	.loc 1 987 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	vtconsole_csi_cup, .-vtconsole_csi_cup
	.globl	vtconsole_csi_ed
	.type	vtconsole_csi_ed, @function
vtconsole_csi_ed:
.LFB24:
	.loc 1 991 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 994 16
	movq	-24(%rbp), %rax
	movq	116(%rax), %rax
	movq	%rax, -12(%rbp)
	.loc 1 996 17
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 996 8
	testl	%eax, %eax
	je	.L95
	.loc 1 998 65
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 998 9
	leal	-1(%rax), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL29:
	.loc 1 1012 1
	jmp	.L99
.L95:
.LBB18:
	.loc 1 1002 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 1004 12
	cmpl	$0, -4(%rbp)
	jne	.L97
	.loc 1 1006 32
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1005 13
	leal	-1(%rax), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL30:
.LBE18:
	.loc 1 1012 1
	jmp	.L99
.L97:
.LBB19:
	.loc 1 1007 17
	cmpl	$1, -4(%rbp)
	jne	.L98
	.loc 1 1008 13
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL31:
.LBE19:
	.loc 1 1012 1
	jmp	.L99
.L98:
.LBB20:
	.loc 1 1009 17
	cmpl	$2, -4(%rbp)
	jne	.L99
	.loc 1 1010 55
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1010 13
	leal	-1(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL32:
.L99:
.LBE20:
	.loc 1 1012 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	vtconsole_csi_ed, .-vtconsole_csi_ed
	.globl	vtconsole_csi_el
	.type	vtconsole_csi_el, @function
vtconsole_csi_el:
.LFB25:
	.loc 1 1016 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 1019 16
	movq	-24(%rbp), %rax
	movq	116(%rax), %rax
	movq	%rax, -12(%rbp)
	.loc 1 1021 17
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1021 8
	testl	%eax, %eax
	je	.L101
	.loc 1 1023 9
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL33:
	.loc 1 1036 1
	jmp	.L105
.L101:
.LBB21:
	.loc 1 1027 13
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 1029 12
	cmpl	$0, -4(%rbp)
	jne	.L103
	.loc 1 1030 13
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL34:
.LBE21:
	.loc 1 1036 1
	jmp	.L105
.L103:
.LBB22:
	.loc 1 1031 17
	cmpl	$1, -4(%rbp)
	jne	.L104
	.loc 1 1032 13
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL35:
.LBE22:
	.loc 1 1036 1
	jmp	.L105
.L104:
.LBB23:
	.loc 1 1033 17
	cmpl	$2, -4(%rbp)
	jne	.L105
	.loc 1 1034 13
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_clear, %rax
	call	*%rax
.LVL36:
.L105:
.LBE23:
	.loc 1 1036 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	vtconsole_csi_el, .-vtconsole_csi_el
	.globl	vtconsole_csi_sgr
	.type	vtconsole_csi_sgr, @function
vtconsole_csi_sgr:
.LFB26:
	.loc 1 1040 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
.LBB24:
	.loc 1 1041 14
	movl	$0, -4(%rbp)
	.loc 1 1041 5
	jmp	.L107
.L113:
	.loc 1 1043 18
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1043 21
	movl	4(%rax), %eax
	.loc 1 1043 12
	testl	%eax, %eax
	jne	.L108
	.loc 1 1043 36 discriminator 1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1043 39 discriminator 1
	movl	(%rax), %eax
	.loc 1 1043 28 discriminator 1
	testl	%eax, %eax
	jne	.L109
.L108:
.LBB25:
	.loc 1 1045 23
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$7, 12(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
.LBE25:
	.loc 1 1044 9
	jmp	.L110
.L109:
.LBB26:
	.loc 1 1049 29
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1049 17
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 1 1051 16
	cmpl	$1, -8(%rbp)
	jne	.L111
	.loc 1 1053 34
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L110
.L111:
	.loc 1 1055 21
	cmpl	$29, -8(%rbp)
	jle	.L112
	.loc 1 1055 33 discriminator 1
	cmpl	$37, -8(%rbp)
	jg	.L112
	.loc 1 1057 37
	movl	-8(%rbp), %eax
	subl	$30, %eax
	movl	%eax, %edx
	.loc 1 1057 30
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L110
.L112:
	.loc 1 1059 21
	cmpl	$39, -8(%rbp)
	jle	.L110
	.loc 1 1059 33 discriminator 1
	cmpl	$47, -8(%rbp)
	jg	.L110
	.loc 1 1061 37
	movl	-8(%rbp), %eax
	subl	$40, %eax
	movl	%eax, %edx
	.loc 1 1061 30
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
.L110:
.LBE26:
	.loc 1 1041 33 discriminator 2
	addl	$1, -4(%rbp)
.L107:
	.loc 1 1041 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L113
.LBE24:
	.loc 1 1065 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	vtconsole_csi_sgr, .-vtconsole_csi_sgr
	.globl	vtconsole_csi_l
	.type	vtconsole_csi_l, @function
vtconsole_csi_l:
.LFB27:
	.loc 1 1068 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 1069 8
	cmpl	$1, -20(%rbp)
	jne	.L119
	.loc 1 1073 17
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1073 8
	testl	%eax, %eax
	jne	.L120
	.loc 1 1073 35 discriminator 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 1073 24 discriminator 1
	cmpl	$25, %eax
	jne	.L120
	.loc 1 1078 5
	movl	$0, %eax
	movabsq	$vga_disable_cursor, %rdx
	call	*%rdx
.LVL37:
	jmp	.L114
.L119:
	.loc 1 1071 9
	nop
	jmp	.L114
.L120:
	.loc 1 1075 9
	nop
.L114:
	.loc 1 1079 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	vtconsole_csi_l, .-vtconsole_csi_l
	.globl	vtconsole_csi_h
	.type	vtconsole_csi_h, @function
vtconsole_csi_h:
.LFB28:
	.loc 1 1082 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 1083 8
	cmpl	$1, -20(%rbp)
	jne	.L126
	.loc 1 1088 17
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1088 8
	testl	%eax, %eax
	jne	.L127
	.loc 1 1088 35 discriminator 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 1088 24 discriminator 1
	cmpl	$25, %eax
	jne	.L127
	.loc 1 1093 5
	movl	$0, %eax
	movabsq	$vga_enable_cursor, %rdx
	call	*%rdx
.LVL38:
	jmp	.L121
.L126:
	.loc 1 1085 9
	nop
	jmp	.L121
.L127:
	.loc 1 1090 9
	nop
.L121:
	.loc 1 1094 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	vtconsole_csi_h, .-vtconsole_csi_h
	.globl	vtconsole_process
	.type	vtconsole_process, @function
vtconsole_process:
.LFB29:
	.loc 1 1099 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 1 1100 22
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -8(%rbp)
	.loc 1 1102 19
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 1102 5
	cmpl	$2, %eax
	je	.L129
	cmpl	$2, %eax
	ja	.L160
	testl	%eax, %eax
	je	.L131
	cmpl	$1, %eax
	je	.L132
	.loc 1 1158 9
	jmp	.L160
.L131:
	.loc 1 1105 12
	cmpb	$27, -28(%rbp)
	jne	.L133
	.loc 1 1107 27
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	.loc 1 1109 27
	movq	-8(%rbp), %rax
	movl	$0, 68(%rax)
	.loc 1 1111 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1111 48
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	$0, 4(%rax,%rdx,8)
	.loc 1 1112 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1112 48
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	$1, 8(%rax,%rdx,8)
	.loc 1 1119 9
	jmp	.L135
.L133:
	.loc 1 1116 27
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 1117 13
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_append, %rax
	call	*%rax
.LVL39:
	.loc 1 1119 9
	jmp	.L135
.L132:
	.loc 1 1122 12
	cmpb	$91, -28(%rbp)
	jne	.L136
	.loc 1 1124 27
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	.loc 1 1131 9
	jmp	.L135
.L136:
	.loc 1 1128 27
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 1129 13
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_append, %rax
	call	*%rax
.LVL40:
	.loc 1 1131 9
	jmp	.L135
.L129:
	.loc 1 1133 12
	cmpb	$47, -28(%rbp)
	jle	.L138
	.loc 1 1133 22 discriminator 1
	cmpb	$57, -28(%rbp)
	jg	.L138
	.loc 1 1135 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1135 41
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	4(%rax,%rdx,8), %edx
	.loc 1 1135 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %ecx
	.loc 1 1135 48
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movslq	%ecx, %rdx
	movl	%esi, 4(%rax,%rdx,8)
	.loc 1 1136 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1136 41
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	4(%rax,%rdx,8), %ecx
	.loc 1 1136 54
	movsbl	-28(%rbp), %eax
	leal	-48(%rax), %esi
	.loc 1 1136 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1136 48
	addl	%esi, %ecx
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, 4(%rax,%rdx,8)
	.loc 1 1137 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1137 48
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	$0, 8(%rax,%rdx,8)
	.loc 1 1156 9
	jmp	.L135
.L138:
	.loc 1 1139 17
	cmpb	$63, -28(%rbp)
	je	.L161
	.loc 1 1146 24
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	.loc 1 1146 16
	cmpl	$7, %eax
	jg	.L141
	.loc 1 1148 23
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	.loc 1 1148 30
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 68(%rax)
.L141:
	.loc 1 1151 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1151 48
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	$0, 4(%rax,%rdx,8)
	.loc 1 1152 33
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1152 48
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	movl	$1, 8(%rax,%rdx,8)
	.loc 1 1154 27
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	.loc 1 1156 9
	jmp	.L135
.L160:
	.loc 1 1158 9
	nop
	jmp	.L135
.L161:
	.loc 1 1142 13
	nop
.L135:
	.loc 1 1161 15
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 1161 8
	cmpl	$3, %eax
	jne	.L162
	.loc 1 1163 12
	cmpb	$59, -28(%rbp)
	jne	.L143
	.loc 1 1165 27
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	.loc 1 1230 1
	jmp	.L162
.L143:
	.loc 1 1169 13
	movsbl	-28(%rbp), %eax
	subl	$65, %eax
	cmpl	$44, %eax
	ja	.L144
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movabsq	$.L146, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L146:
	.quad	.L159
	.quad	.L158
	.quad	.L157
	.quad	.L156
	.quad	.L155
	.quad	.L154
	.quad	.L153
	.quad	.L152
	.quad	.L144
	.quad	.L151
	.quad	.L150
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L148
	.quad	.L144
	.quad	.L144
	.quad	.L144
	.quad	.L147
	.quad	.L145
	.text
.L159:
	.loc 1 1173 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1173 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1173 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cuu, %rax
	call	*%rax
.LVL41:
	.loc 1 1174 17
	jmp	.L144
.L158:
	.loc 1 1177 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1177 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1177 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cub, %rax
	call	*%rax
.LVL42:
	.loc 1 1178 17
	jmp	.L144
.L157:
	.loc 1 1181 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1181 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1181 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cuf, %rax
	call	*%rax
.LVL43:
	.loc 1 1182 17
	jmp	.L144
.L156:
	.loc 1 1185 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1185 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1185 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cud, %rax
	call	*%rax
.LVL44:
	.loc 1 1186 17
	jmp	.L144
.L155:
	.loc 1 1190 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1190 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1190 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cnl, %rax
	call	*%rax
.LVL45:
	.loc 1 1191 17
	jmp	.L144
.L154:
	.loc 1 1194 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1194 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1194 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cpl, %rax
	call	*%rax
.LVL46:
	.loc 1 1195 17
	jmp	.L144
.L153:
	.loc 1 1198 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1198 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1198 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cha, %rax
	call	*%rax
.LVL47:
	.loc 1 1199 17
	jmp	.L144
.L152:
	.loc 1 1205 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1205 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1205 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_cup, %rax
	call	*%rax
.LVL48:
	.loc 1 1206 17
	jmp	.L144
.L151:
	.loc 1 1209 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1209 45
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1209 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_ed, %rax
	call	*%rax
.LVL49:
	.loc 1 1210 17
	jmp	.L144
.L150:
	.loc 1 1213 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1213 45
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1213 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_el, %rax
	call	*%rax
.LVL50:
	.loc 1 1214 17
	jmp	.L144
.L145:
	.loc 1 1217 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1217 46
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1217 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_sgr, %rax
	call	*%rax
.LVL51:
	.loc 1 1218 17
	jmp	.L144
.L147:
	.loc 1 1220 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1220 44
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1220 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_l, %rax
	call	*%rax
.LVL52:
	.loc 1 1221 17
	jmp	.L144
.L148:
	.loc 1 1223 17
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	.loc 1 1223 44
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 1 1223 17
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_csi_h, %rax
	call	*%rax
.LVL53:
	.loc 1 1224 17
	nop
.L144:
	.loc 1 1227 27
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L162:
	.loc 1 1230 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	vtconsole_process, .-vtconsole_process
	.globl	vtconsole_putchar
	.type	vtconsole_putchar, @function
vtconsole_putchar:
.LFB30:
	.loc 1 1233 50
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 1 1233 52
	movsbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_process, %rax
	call	*%rax
.LVL54:
	.loc 1 1233 79
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	vtconsole_putchar, .-vtconsole_putchar
	.globl	vtconsole_write
	.type	vtconsole_write, @function
vtconsole_write:
.LFB31:
	.loc 1 1237 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
.LBB27:
	.loc 1 1239 19
	movl	$0, -4(%rbp)
	.loc 1 1239 5
	jmp	.L165
.L170:
.LBB28:
	.loc 1 1242 18
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	%rax, -16(%rbp)
	.loc 1 1245 19
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 1245 12
	cmpb	$8, %al
	jne	.L166
	.loc 1 1245 68 discriminator 1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 1245 57 discriminator 1
	movq	-16(%rbp), %rdx
	movzbl	56(%rdx,%rax), %eax
	.loc 1 1245 31 discriminator 1
	cmpb	$9, %al
	jne	.L166
.LBB29:
	.loc 1 1249 22
	movl	$0, -8(%rbp)
	.loc 1 1249 13
	jmp	.L167
.L168:
	.loc 1 1251 46 discriminator 3
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 1251 17 discriminator 3
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_process, %rax
	call	*%rax
.LVL55:
	.loc 1 1249 87 discriminator 3
	addl	$1, -8(%rbp)
.L167:
	.loc 1 1249 36 discriminator 1
	movq	-24(%rbp), %rax
	movq	104(%rax), %rcx
	.loc 1 1249 47 discriminator 1
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	.loc 1 1249 59 discriminator 1
	leal	-1(%rax), %edx
	.loc 1 1249 64 discriminator 1
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$25, %eax
	addl	%eax, %edx
	andl	$127, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	.loc 1 1249 42 discriminator 1
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 1 1249 31 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L168
.LBE29:
	.loc 1 1253 16
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	.loc 1 1253 27
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 112(%rax)
	jmp	.L169
.L166:
	.loc 1 1257 42
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 1257 13
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_process, %rax
	call	*%rax
.LVL56:
.L169:
.LBE28:
	.loc 1 1239 37 discriminator 2
	addl	$1, -4(%rbp)
.L165:
	.loc 1 1239 28 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L170
.LBE27:
	.loc 1 1260 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	vtconsole_write, .-vtconsole_write
	.globl	vtconsole_redraw
	.type	vtconsole_redraw, @function
vtconsole_redraw:
.LFB32:
	.loc 1 1264 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB30:
	.loc 1 1265 14
	movl	$0, -4(%rbp)
	.loc 1 1265 5
	jmp	.L172
.L174:
	.loc 1 1267 16
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	.loc 1 1267 12
	testq	%rax, %rax
	je	.L173
	.loc 1 1269 16
	movq	-24(%rbp), %rax
	movq	128(%rax), %r8
	.loc 1 1269 72
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 1269 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r9d
	.loc 1 1269 56
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 1269 13
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %edi
	.loc 1 1269 36
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	.loc 1 1269 44
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 1 1269 13
	leaq	(%rax,%rdx), %rsi
	movq	-24(%rbp), %rax
	movl	%r9d, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
.LVL57:
.L173:
	.loc 1 1265 54 discriminator 2
	addl	$1, -4(%rbp)
.L172:
	.loc 1 1265 29 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 1265 42 discriminator 1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1265 37 discriminator 1
	imull	%edx, %eax
	.loc 1 1265 23 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L174
.LBE30:
	.loc 1 1272 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	vtconsole_redraw, .-vtconsole_redraw
	.globl	vga_cell
	.type	vga_cell, @function
vga_cell:
.LFB33:
	.loc 1 1280 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, %eax
	movw	%ax, -12(%rbp)
	.loc 1 1281 8
	cmpl	$79, -4(%rbp)
	ja	.L177
	.loc 1 1283 12
	cmpl	$79, -8(%rbp)
	ja	.L177
	.loc 1 1285 13
	movzwl	-12(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vga_write_char_at, %rax
	call	*%rax
.LVL58:
.L177:
	.loc 1 1288 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	vga_cell, .-vga_cell
	.data
	.align 8
	.type	colors, @object
	.size	colors, 8
colors:
	.string	""
	.ascii	"\004\002\006\001\005\003\007"
	.align 8
	.type	brightcolors, @object
	.size	brightcolors, 8
brightcolors:
	.ascii	"\b\f\n\016\t\r\013\017"
	.local	active_vt
	.comm	active_vt,8,8
	.text
	.globl	paint_callback
	.type	paint_callback, @function
paint_callback:
.LFB34:
	.loc 1 1316 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	.loc 1 1317 13
	movabsq	$active_vt, %rax
	movq	(%rax), %rax
	.loc 1 1317 8
	cmpq	%rax, -8(%rbp)
	jne	.L182
	.loc 1 1322 19
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1322 8
	testl	%eax, %eax
	je	.L181
	.loc 1 1325 18
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movabsq	$colors, %rax
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movabsq	$brightcolors, %rax
	movl	%ecx, %ecx
	movzbl	(%rax,%rcx), %eax
	movsbl	%al, %eax
	andl	$15, %eax
	orl	%edx, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cbtw
	movzbl	%al, %eax
	orl	%edx, %eax
	.loc 1 1324 9
	movzwl	%ax, %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	movabsq	$vga_cell, %rax
	call	*%rax
.LVL59:
	jmp	.L178
.L181:
	.loc 1 1332 13
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movabsq	$colors, %rax
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movabsq	$colors, %rax
	movl	%ecx, %ecx
	movzbl	(%rax,%rcx), %eax
	movsbl	%al, %eax
	andl	$15, %eax
	orl	%edx, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cbtw
	movzbl	%al, %eax
	orl	%edx, %eax
	.loc 1 1330 9
	movzwl	%ax, %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	movabsq	$vga_cell, %rax
	call	*%rax
.LVL60:
	jmp	.L178
.L182:
	.loc 1 1319 9
	nop
.L178:
	.loc 1 1334 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	paint_callback, .-paint_callback
	.globl	cursor_move_callback
	.type	cursor_move_callback, @function
cursor_move_callback:
.LFB35:
	.loc 1 1338 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 1339 13
	movabsq	$active_vt, %rax
	movq	(%rax), %rax
	.loc 1 1339 8
	cmpq	%rax, -8(%rbp)
	jne	.L186
	.loc 1 1343 31
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 1343 5
	movslq	%eax, %rdx
	.loc 1 1343 23
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 1343 5
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$vga_set_cursor, %rax
	call	*%rax
.LVL61:
	jmp	.L183
.L186:
	.loc 1 1341 9
	nop
.L183:
	.loc 1 1344 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	cursor_move_callback, .-cursor_move_callback
	.globl	vterminal_init
	.type	vterminal_init, @function
vterminal_init:
.LFB36:
	.loc 1 1348 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1349 5
	movq	-8(%rbp), %rax
	movabsq	$cursor_move_callback, %r8
	movabsq	$paint_callback, %rdx
	movq	%rdx, %rcx
	movl	$25, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole, %rax
	call	*%rax
.LVL62:
	.loc 1 1351 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	vterminal_init, .-vterminal_init
	.globl	vterminal_make_active
	.type	vterminal_make_active, @function
vterminal_make_active:
.LFB37:
	.loc 1 1355 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1356 15
	movabsq	$active_vt, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 1357 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vtconsole_redraw, %rax
	call	*%rax
.LVL63:
	.loc 1 1358 44
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	.loc 1 1358 5
	movslq	%eax, %rdx
	.loc 1 1358 30
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	.loc 1 1358 5
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$vga_set_cursor, %rax
	call	*%rax
.LVL64:
	.loc 1 1359 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	vterminal_make_active, .-vterminal_make_active
	.globl	vterminal_key_pressed
	.type	vterminal_key_pressed, @function
vterminal_key_pressed:
.LFB38:
	.loc 1 1363 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	.loc 1 1366 9
	movq	-152(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$ldisc_get_current_line_raw, %rax
	call	*%rax
.LVL65:
	movq	%rax, -8(%rbp)
	.loc 1 1367 35
	movq	-8(%rbp), %rax
	subq	$1, %rax
	.loc 1 1367 30
	movzbl	-144(%rbp,%rax), %eax
	.loc 1 1367 5
	movsbl	%al, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movabsq	$vtconsole_putchar, %rax
	call	*%rax
.LVL66:
	.loc 1 1368 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	vterminal_key_pressed, .-vterminal_key_pressed
	.section	.rodata
.LC0:
	.string	"0"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/tty/vterminal.c"
	.text
	.globl	vterminal_scroll_to_bottom
	.type	vterminal_scroll_to_bottom, @function
vterminal_scroll_to_bottom:
.LFB39:
	.loc 1 1370 50
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1370 52
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$1370, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL67:
	.cfi_endproc
.LFE39:
	.size	vterminal_scroll_to_bottom, .-vterminal_scroll_to_bottom
	.globl	vterminal_write
	.type	vterminal_write, @function
vterminal_write:
.LFB40:
	.loc 1 1374 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 1375 5
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_write, %rax
	call	*%rax
.LVL68:
	.loc 1 1376 12
	movq	-24(%rbp), %rax
	.loc 1 1377 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	vterminal_write, .-vterminal_write
	.globl	vterminal_echo_input
	.type	vterminal_echo_input, @function
vterminal_echo_input:
.LFB41:
	.loc 1 1381 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 1382 5
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vtconsole_write, %rax
	call	*%rax
.LVL69:
	.loc 1 1383 12
	movq	-24(%rbp), %rax
	.loc 1 1384 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	vterminal_echo_input, .-vterminal_echo_input
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"vterminal_scroll_to_bottom"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/proc/sched.h"
	.file 7 "include/proc/kmutex.h"
	.file 8 "include/proc/kthread.h"
	.file 9 "include/drivers/tty/ldisc.h"
	.file 10 "include/drivers/chardev.h"
	.file 11 "include/drivers/tty/vterminal.h"
	.file 12 "include/drivers/tty/tty.h"
	.file 13 "include/vm/vmmap.h"
	.file 14 "include/proc/proc.h"
	.file 15 "include/mm/pagetable.h"
	.file 16 "include/proc/context.h"
	.file 17 "include/drivers/screen.h"
	.file 18 "include/mm/kmalloc.h"
	.file 19 "include/util/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1cd8
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF998
	.byte	0xc
	.long	.LASF999
	.long	.LASF1000
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF782
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF783
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF784
	.uleb128 0x3
	.long	.LASF786
	.byte	0x4
	.byte	0xc
	.byte	0x18
	.long	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF785
	.uleb128 0x3
	.long	.LASF787
	.byte	0x4
	.byte	0xd
	.byte	0x14
	.long	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF788
	.byte	0x4
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF789
	.uleb128 0x3
	.long	.LASF790
	.byte	0x4
	.byte	0x10
	.byte	0x15
	.long	0x8b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF791
	.uleb128 0x3
	.long	.LASF792
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x9e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF793
	.uleb128 0x3
	.long	.LASF794
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x9e
	.uleb128 0x3
	.long	.LASF795
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x92
	.uleb128 0x3
	.long	.LASF796
	.byte	0x4
	.byte	0x15
	.byte	0x11
	.long	0x7f
	.uleb128 0x3
	.long	.LASF797
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.long	0x59
	.uleb128 0x3
	.long	.LASF798
	.byte	0x4
	.byte	0x1c
	.byte	0x12
	.long	0x6c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF799
	.uleb128 0x5
	.long	0xe1
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.long	.LASF804
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0x117
	.uleb128 0x8
	.long	.LASF800
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0x117
	.byte	0
	.uleb128 0x8
	.long	.LASF801
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0x117
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xef
	.uleb128 0x3
	.long	.LASF802
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xef
	.uleb128 0x3
	.long	.LASF803
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xef
	.uleb128 0x7
	.long	.LASF805
	.byte	0x18
	.byte	0x6
	.byte	0xf
	.byte	0x10
	.long	0x15d
	.uleb128 0x8
	.long	.LASF806
	.byte	0x6
	.byte	0x11
	.byte	0xc
	.long	0x11d
	.byte	0
	.uleb128 0x8
	.long	.LASF807
	.byte	0x6
	.byte	0x12
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF808
	.byte	0x6
	.byte	0x13
	.byte	0x3
	.long	0x135
	.uleb128 0x7
	.long	.LASF809
	.byte	0x30
	.byte	0x7
	.byte	0xa
	.byte	0x10
	.long	0x19e
	.uleb128 0x8
	.long	.LASF810
	.byte	0x7
	.byte	0xc
	.byte	0xf
	.long	0x15d
	.byte	0
	.uleb128 0x8
	.long	.LASF811
	.byte	0x7
	.byte	0xd
	.byte	0x15
	.long	0x248
	.byte	0x18
	.uleb128 0x8
	.long	.LASF812
	.byte	0x7
	.byte	0xe
	.byte	0x11
	.long	0x129
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF813
	.byte	0xa0
	.byte	0x8
	.byte	0x21
	.byte	0x10
	.long	0x248
	.uleb128 0x8
	.long	.LASF814
	.byte	0x8
	.byte	0x23
	.byte	0xf
	.long	0x8d9
	.byte	0
	.uleb128 0x8
	.long	.LASF815
	.byte	0x8
	.byte	0x24
	.byte	0xb
	.long	0x92a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF816
	.byte	0x8
	.byte	0x25
	.byte	0xb
	.long	0xed
	.byte	0x38
	.uleb128 0x8
	.long	.LASF817
	.byte	0x8
	.byte	0x26
	.byte	0xa
	.long	0x8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF818
	.byte	0x8
	.byte	0x27
	.byte	0x12
	.long	0x833
	.byte	0x48
	.uleb128 0x8
	.long	.LASF819
	.byte	0x8
	.byte	0x29
	.byte	0xa
	.long	0x8b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF820
	.byte	0x8
	.byte	0x2a
	.byte	0x10
	.long	0x8e5
	.byte	0x58
	.uleb128 0x8
	.long	.LASF821
	.byte	0x8
	.byte	0x2b
	.byte	0x15
	.long	0x91e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF822
	.byte	0x8
	.byte	0x2d
	.byte	0x11
	.long	0x129
	.byte	0x68
	.uleb128 0x8
	.long	.LASF823
	.byte	0x8
	.byte	0x2f
	.byte	0x9
	.long	0x129
	.byte	0x78
	.uleb128 0x8
	.long	.LASF824
	.byte	0x8
	.byte	0x31
	.byte	0xc
	.long	0x11d
	.byte	0x88
	.uleb128 0x8
	.long	.LASF825
	.byte	0x8
	.byte	0x34
	.byte	0xe
	.long	0x92
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x19e
	.uleb128 0x3
	.long	.LASF826
	.byte	0x7
	.byte	0xf
	.byte	0x3
	.long	0x169
	.uleb128 0x7
	.long	.LASF827
	.byte	0xb8
	.byte	0x9
	.byte	0x2f
	.byte	0x10
	.long	0x2b6
	.uleb128 0x8
	.long	.LASF828
	.byte	0x9
	.byte	0x31
	.byte	0xc
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.long	.LASF829
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0xb1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF830
	.byte	0x9
	.byte	0x33
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF831
	.byte	0x9
	.byte	0x34
	.byte	0xa
	.long	0xe1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF832
	.byte	0x9
	.byte	0x38
	.byte	0xf
	.long	0x15d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF833
	.byte	0x9
	.byte	0x39
	.byte	0xa
	.long	0x2b6
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.long	0xe1
	.long	0x2c6
	.uleb128 0xb
	.long	0x9e
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.long	.LASF834
	.byte	0x9
	.byte	0x3a
	.byte	0x3
	.long	0x25a
	.uleb128 0x7
	.long	.LASF835
	.byte	0x20
	.byte	0xa
	.byte	0xc
	.byte	0x10
	.long	0x307
	.uleb128 0x8
	.long	.LASF836
	.byte	0xa
	.byte	0xe
	.byte	0xd
	.long	0xd5
	.byte	0
	.uleb128 0x8
	.long	.LASF837
	.byte	0xa
	.byte	0xf
	.byte	0x19
	.long	0x356
	.byte	0x8
	.uleb128 0x8
	.long	.LASF838
	.byte	0xa
	.byte	0x10
	.byte	0x11
	.long	0x129
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF839
	.byte	0x28
	.byte	0xa
	.byte	0x13
	.byte	0x10
	.long	0x356
	.uleb128 0x8
	.long	.LASF840
	.byte	0xa
	.byte	0x15
	.byte	0xf
	.long	0x38d
	.byte	0
	.uleb128 0x8
	.long	.LASF841
	.byte	0xa
	.byte	0x17
	.byte	0xf
	.long	0x3b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF842
	.byte	0xa
	.byte	0x19
	.byte	0xc
	.long	0x3f2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF843
	.byte	0xa
	.byte	0x1b
	.byte	0xc
	.long	0x419
	.byte	0x18
	.uleb128 0x8
	.long	.LASF844
	.byte	0xa
	.byte	0x1d
	.byte	0xc
	.long	0x419
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x307
	.uleb128 0x3
	.long	.LASF845
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.long	0x2d2
	.uleb128 0xc
	.byte	0x1
	.long	0xbd
	.long	0x387
	.uleb128 0xd
	.long	0x387
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xed
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x35c
	.uleb128 0x9
	.byte	0x8
	.long	0x368
	.uleb128 0xc
	.byte	0x1
	.long	0xbd
	.long	0x3b2
	.uleb128 0xd
	.long	0x387
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0x3b2
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x3b8
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x8
	.long	0x393
	.uleb128 0xc
	.byte	0x1
	.long	0x8b
	.long	0x3d4
	.uleb128 0xd
	.long	0x3d4
	.uleb128 0xd
	.long	0x3e0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x3da
	.uleb128 0xf
	.long	.LASF846
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3e6
	.uleb128 0x9
	.byte	0x8
	.long	0x3ec
	.uleb128 0xf
	.long	.LASF847
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3bf
	.uleb128 0xc
	.byte	0x1
	.long	0x8b
	.long	0x40d
	.uleb128 0xd
	.long	0x3d4
	.uleb128 0xd
	.long	0x40d
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x413
	.uleb128 0xf
	.long	.LASF848
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3f8
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xb
	.byte	0x99
	.byte	0x1
	.long	0x45e
	.uleb128 0x11
	.long	.LASF849
	.byte	0
	.uleb128 0x11
	.long	.LASF850
	.byte	0x1
	.uleb128 0x11
	.long	.LASF851
	.byte	0x2
	.uleb128 0x11
	.long	.LASF852
	.byte	0x3
	.uleb128 0x11
	.long	.LASF853
	.byte	0x4
	.uleb128 0x11
	.long	.LASF854
	.byte	0x5
	.uleb128 0x11
	.long	.LASF855
	.byte	0x6
	.uleb128 0x11
	.long	.LASF856
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF857
	.byte	0xb
	.byte	0xa2
	.byte	0x3
	.long	0x41f
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xb
	.byte	0xa5
	.byte	0x1
	.long	0x491
	.uleb128 0x11
	.long	.LASF858
	.byte	0
	.uleb128 0x11
	.long	.LASF859
	.byte	0x1
	.uleb128 0x11
	.long	.LASF860
	.byte	0x2
	.uleb128 0x11
	.long	.LASF861
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF862
	.byte	0xb
	.byte	0xaa
	.byte	0x3
	.long	0x46a
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0xac
	.byte	0x9
	.long	0x4c1
	.uleb128 0x8
	.long	.LASF863
	.byte	0xb
	.byte	0xae
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF864
	.byte	0xb
	.byte	0xaf
	.byte	0x9
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF865
	.byte	0xb
	.byte	0xb0
	.byte	0x3
	.long	0x49d
	.uleb128 0x12
	.byte	0x48
	.byte	0xb
	.byte	0xb2
	.byte	0x9
	.long	0x4fe
	.uleb128 0x8
	.long	.LASF866
	.byte	0xb
	.byte	0xb4
	.byte	0x1b
	.long	0x491
	.byte	0
	.uleb128 0x8
	.long	.LASF867
	.byte	0xb
	.byte	0xb5
	.byte	0x12
	.long	0x4fe
	.byte	0x4
	.uleb128 0x8
	.long	.LASF868
	.byte	0xb
	.byte	0xb6
	.byte	0x9
	.long	0x65
	.byte	0x44
	.byte	0
	.uleb128 0xa
	.long	0x4c1
	.long	0x50e
	.uleb128 0xb
	.long	0x9e
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF869
	.byte	0xb
	.byte	0xb7
	.byte	0x3
	.long	0x4cd
	.uleb128 0x12
	.byte	0xc
	.byte	0xb
	.byte	0xb9
	.byte	0x9
	.long	0x549
	.uleb128 0x8
	.long	.LASF870
	.byte	0xb
	.byte	0xbb
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x13
	.string	"fg"
	.byte	0xb
	.byte	0xbc
	.byte	0xf
	.long	0x45e
	.byte	0x4
	.uleb128 0x13
	.string	"bg"
	.byte	0xb
	.byte	0xbd
	.byte	0xf
	.long	0x45e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF871
	.byte	0xb
	.byte	0xbe
	.byte	0x3
	.long	0x51a
	.uleb128 0x12
	.byte	0x10
	.byte	0xb
	.byte	0xc0
	.byte	0x9
	.long	0x577
	.uleb128 0x13
	.string	"c"
	.byte	0xb
	.byte	0xc2
	.byte	0xa
	.long	0xe1
	.byte	0
	.uleb128 0x8
	.long	.LASF872
	.byte	0xb
	.byte	0xc3
	.byte	0xe
	.long	0x549
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF873
	.byte	0xb
	.byte	0xc4
	.byte	0x3
	.long	0x555
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0xc6
	.byte	0x9
	.long	0x5a3
	.uleb128 0x13
	.string	"x"
	.byte	0xb
	.byte	0xc8
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x13
	.string	"y"
	.byte	0xb
	.byte	0xc9
	.byte	0x9
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF874
	.byte	0xb
	.byte	0xca
	.byte	0x3
	.long	0x583
	.uleb128 0x3
	.long	.LASF875
	.byte	0xb
	.byte	0xcc
	.byte	0x10
	.long	0x5bb
	.uleb128 0x9
	.byte	0x8
	.long	0x5c1
	.uleb128 0x14
	.byte	0x1
	.long	0x5dc
	.uleb128 0xd
	.long	0x5dc
	.uleb128 0xd
	.long	0x672
	.uleb128 0xd
	.long	0x65
	.uleb128 0xd
	.long	0x65
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x5e2
	.uleb128 0x7
	.long	.LASF876
	.byte	0x90
	.byte	0xb
	.byte	0xd0
	.byte	0x10
	.long	0x672
	.uleb128 0x8
	.long	.LASF877
	.byte	0xb
	.byte	0xd2
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF878
	.byte	0xb
	.byte	0xd3
	.byte	0x9
	.long	0x65
	.byte	0x4
	.uleb128 0x8
	.long	.LASF872
	.byte	0xb
	.byte	0xd5
	.byte	0xe
	.long	0x549
	.byte	0x8
	.uleb128 0x8
	.long	.LASF879
	.byte	0xb
	.byte	0xd6
	.byte	0x15
	.long	0x50e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF880
	.byte	0xb
	.byte	0xd8
	.byte	0xf
	.long	0x672
	.byte	0x60
	.uleb128 0x8
	.long	.LASF881
	.byte	0xb
	.byte	0xd9
	.byte	0xa
	.long	0x6a1
	.byte	0x68
	.uleb128 0x8
	.long	.LASF882
	.byte	0xb
	.byte	0xda
	.byte	0x9
	.long	0x65
	.byte	0x70
	.uleb128 0x8
	.long	.LASF883
	.byte	0xb
	.byte	0xdb
	.byte	0x10
	.long	0x5a3
	.byte	0x74
	.uleb128 0x8
	.long	.LASF884
	.byte	0xb
	.byte	0xdd
	.byte	0x19
	.long	0x5af
	.byte	0x80
	.uleb128 0x8
	.long	.LASF885
	.byte	0xb
	.byte	0xde
	.byte	0x1a
	.long	0x678
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x577
	.uleb128 0x3
	.long	.LASF886
	.byte	0xb
	.byte	0xce
	.byte	0x10
	.long	0x684
	.uleb128 0x9
	.byte	0x8
	.long	0x68a
	.uleb128 0x14
	.byte	0x1
	.long	0x69b
	.uleb128 0xd
	.long	0x5dc
	.uleb128 0xd
	.long	0x69b
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x5a3
	.uleb128 0x9
	.byte	0x8
	.long	0x65
	.uleb128 0x3
	.long	.LASF887
	.byte	0xb
	.byte	0xdf
	.byte	0x3
	.long	0x5e2
	.uleb128 0x3
	.long	.LASF888
	.byte	0xb
	.byte	0xe1
	.byte	0x15
	.long	0x6a7
	.uleb128 0x15
	.string	"tty"
	.value	0x1c8
	.byte	0xc
	.byte	0xb
	.byte	0x10
	.long	0x712
	.uleb128 0x8
	.long	.LASF889
	.byte	0xc
	.byte	0xd
	.byte	0x11
	.long	0x6b3
	.byte	0
	.uleb128 0x8
	.long	.LASF890
	.byte	0xc
	.byte	0xe
	.byte	0xd
	.long	0x2c6
	.byte	0x90
	.uleb128 0x16
	.long	.LASF891
	.byte	0xc
	.byte	0xf
	.byte	0xf
	.long	0x35c
	.value	0x148
	.uleb128 0x16
	.long	.LASF892
	.byte	0xc
	.byte	0x10
	.byte	0xe
	.long	0x24e
	.value	0x168
	.uleb128 0x16
	.long	.LASF893
	.byte	0xc
	.byte	0x11
	.byte	0xe
	.long	0x24e
	.value	0x198
	.byte	0
	.uleb128 0x3
	.long	.LASF894
	.byte	0xc
	.byte	0x12
	.byte	0x3
	.long	0x6bf
	.uleb128 0x7
	.long	.LASF895
	.byte	0x18
	.byte	0xd
	.byte	0xe
	.byte	0x10
	.long	0x746
	.uleb128 0x8
	.long	.LASF896
	.byte	0xd
	.byte	0x10
	.byte	0xc
	.long	0x11d
	.byte	0
	.uleb128 0x8
	.long	.LASF897
	.byte	0xd
	.byte	0x11
	.byte	0x12
	.long	0x833
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	.LASF898
	.value	0x2a0
	.byte	0xe
	.byte	0x1b
	.byte	0x10
	.long	0x833
	.uleb128 0x8
	.long	.LASF899
	.byte	0xe
	.byte	0x1d
	.byte	0xb
	.long	0xc9
	.byte	0
	.uleb128 0x8
	.long	.LASF900
	.byte	0xe
	.byte	0x1e
	.byte	0xa
	.long	0x957
	.byte	0x4
	.uleb128 0x16
	.long	.LASF901
	.byte	0xe
	.byte	0x20
	.byte	0xc
	.long	0x11d
	.value	0x108
	.uleb128 0x16
	.long	.LASF902
	.byte	0xe
	.byte	0x21
	.byte	0xc
	.long	0x11d
	.value	0x118
	.uleb128 0x16
	.long	.LASF903
	.byte	0xe
	.byte	0x22
	.byte	0x12
	.long	0x833
	.value	0x128
	.uleb128 0x16
	.long	.LASF904
	.byte	0xe
	.byte	0x24
	.byte	0x11
	.long	0x129
	.value	0x130
	.uleb128 0x16
	.long	.LASF905
	.byte	0xe
	.byte	0x25
	.byte	0x11
	.long	0x129
	.value	0x140
	.uleb128 0x16
	.long	.LASF906
	.byte	0xe
	.byte	0x27
	.byte	0xa
	.long	0x8b
	.value	0x150
	.uleb128 0x16
	.long	.LASF907
	.byte	0xe
	.byte	0x28
	.byte	0x12
	.long	0x94b
	.value	0x158
	.uleb128 0x16
	.long	.LASF908
	.byte	0xe
	.byte	0x2a
	.byte	0xd
	.long	0x8d3
	.value	0x160
	.uleb128 0x16
	.long	.LASF909
	.byte	0xe
	.byte	0x31
	.byte	0xf
	.long	0x15d
	.value	0x168
	.uleb128 0x16
	.long	.LASF910
	.byte	0xe
	.byte	0x34
	.byte	0x12
	.long	0x967
	.value	0x180
	.uleb128 0x16
	.long	.LASF911
	.byte	0xe
	.byte	0x35
	.byte	0x13
	.long	0x3d4
	.value	0x280
	.uleb128 0x16
	.long	.LASF912
	.byte	0xe
	.byte	0x45
	.byte	0xb
	.long	0xed
	.value	0x288
	.uleb128 0x16
	.long	.LASF913
	.byte	0xe
	.byte	0x46
	.byte	0xb
	.long	0xed
	.value	0x290
	.uleb128 0x16
	.long	.LASF914
	.byte	0xe
	.byte	0x47
	.byte	0x13
	.long	0x839
	.value	0x298
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x746
	.uleb128 0x9
	.byte	0x8
	.long	0x71e
	.uleb128 0x15
	.string	"pt"
	.value	0x1000
	.byte	0xf
	.byte	0x18
	.byte	0x10
	.long	0x85a
	.uleb128 0x8
	.long	.LASF915
	.byte	0xf
	.byte	0x1a
	.byte	0xf
	.long	0x85a
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xa5
	.long	0x86b
	.uleb128 0x18
	.long	0x9e
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF916
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x83f
	.uleb128 0x7
	.long	.LASF917
	.byte	0x30
	.byte	0x10
	.byte	0xd
	.byte	0x10
	.long	0x8d3
	.uleb128 0x8
	.long	.LASF918
	.byte	0x10
	.byte	0xf
	.byte	0xf
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF919
	.byte	0x10
	.byte	0x10
	.byte	0xf
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF920
	.byte	0x10
	.byte	0x11
	.byte	0xf
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF921
	.byte	0x10
	.byte	0x14
	.byte	0xa
	.long	0x8d3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF922
	.byte	0x10
	.byte	0x18
	.byte	0xf
	.long	0xa5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF923
	.byte	0x10
	.byte	0x19
	.byte	0xc
	.long	0xb1
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x86b
	.uleb128 0x3
	.long	.LASF924
	.byte	0x10
	.byte	0x1a
	.byte	0x3
	.long	0x877
	.uleb128 0x9
	.byte	0x8
	.long	0x15d
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.long	0x91e
	.uleb128 0x11
	.long	.LASF925
	.byte	0
	.uleb128 0x11
	.long	.LASF926
	.byte	0x1
	.uleb128 0x11
	.long	.LASF927
	.byte	0x2
	.uleb128 0x11
	.long	.LASF928
	.byte	0x3
	.uleb128 0x11
	.long	.LASF929
	.byte	0x4
	.uleb128 0x11
	.long	.LASF930
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF931
	.byte	0x8
	.byte	0x1c
	.byte	0x3
	.long	0x8eb
	.uleb128 0x9
	.byte	0x8
	.long	0xe1
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.long	0x94b
	.uleb128 0x11
	.long	.LASF932
	.byte	0
	.uleb128 0x11
	.long	.LASF933
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF934
	.byte	0xe
	.byte	0x18
	.byte	0x3
	.long	0x930
	.uleb128 0xa
	.long	0xe1
	.long	0x967
	.uleb128 0xb
	.long	0x9e
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.long	0x977
	.long	0x977
	.uleb128 0xb
	.long	0x9e
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x97d
	.uleb128 0xf
	.long	.LASF935
	.byte	0x1
	.uleb128 0xa
	.long	0xe1
	.long	0x993
	.uleb128 0xb
	.long	0x9e
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.long	.LASF936
	.byte	0x1
	.value	0x50a
	.byte	0xd
	.long	0x983
	.byte	0x9
	.byte	0x3
	.quad	colors
	.uleb128 0x19
	.long	.LASF937
	.byte	0x1
	.value	0x515
	.byte	0xd
	.long	0x983
	.byte	0x9
	.byte	0x3
	.quad	brightcolors
	.uleb128 0x19
	.long	.LASF938
	.byte	0x1
	.value	0x520
	.byte	0x15
	.long	0x9d8
	.byte	0x9
	.byte	0x3
	.quad	active_vt
	.uleb128 0x9
	.byte	0x8
	.long	0x6b3
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF939
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0xa04
	.uleb128 0xd
	.long	0xa04
	.uleb128 0xd
	.long	0x65
	.uleb128 0xd
	.long	0xa04
	.uleb128 0xd
	.long	0xa04
	.uleb128 0x1b
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xe8
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF940
	.byte	0x9
	.byte	0x44
	.byte	0x8
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0xa28
	.uleb128 0xd
	.long	0xa28
	.uleb128 0xd
	.long	0x92a
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x2c6
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF941
	.byte	0x11
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa48
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF942
	.byte	0x11
	.byte	0x3c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa67
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0x46
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF943
	.byte	0x11
	.byte	0x44
	.byte	0x6
	.byte	0x1
	.long	0xa77
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF944
	.byte	0x11
	.byte	0x46
	.byte	0x6
	.byte	0x1
	.long	0xa87
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF945
	.byte	0x12
	.byte	0x7
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa9c
	.uleb128 0xd
	.long	0xed
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF946
	.byte	0x12
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.long	0xed
	.byte	0x1
	.long	0xab5
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF947
	.byte	0x13
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.long	0xed
	.byte	0x1
	.long	0xad8
	.uleb128 0xd
	.long	0xed
	.uleb128 0xd
	.long	0x65
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF948
	.byte	0x1
	.value	0x564
	.byte	0x8
	.byte	0x1
	.long	0xb1
	.quad	.LFB41
	.quad	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb3b
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x564
	.byte	0x2a
	.long	0x9d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x564
	.byte	0x3a
	.long	0xa04
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x564
	.byte	0x46
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LVL69
	.long	0xe7d
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF949
	.byte	0x1
	.value	0x55d
	.byte	0x8
	.byte	0x1
	.long	0xb1
	.quad	.LFB40
	.quad	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb9e
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x55d
	.byte	0x25
	.long	0x9d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x55d
	.byte	0x35
	.long	0xa04
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x55d
	.byte	0x41
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LVL68
	.long	0xe7d
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF950
	.byte	0x1
	.value	0x55a
	.byte	0x6
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbf1
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x55a
	.byte	0x2e
	.long	0x9d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF1001
	.long	0xc01
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x21
	.quad	.LVL67
	.long	0x9de
	.byte	0
	.uleb128 0xa
	.long	0xe8
	.long	0xc01
	.uleb128 0xb
	.long	0x9e
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	0xbf1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF951
	.byte	0x1
	.value	0x552
	.byte	0x6
	.byte	0x1
	.quad	.LFB38
	.quad	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc74
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x552
	.byte	0x29
	.long	0x9d8
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x554
	.byte	0xa
	.long	0x2b6
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x555
	.byte	0xc
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL65
	.long	0xa0a
	.uleb128 0x21
	.quad	.LVL66
	.long	0xf50
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF952
	.byte	0x1
	.value	0x54a
	.byte	0x6
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcc0
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x54a
	.byte	0x29
	.long	0x9d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL63
	.long	0xe2a
	.uleb128 0x21
	.quad	.LVL64
	.long	0xa2e
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF953
	.byte	0x1
	.value	0x543
	.byte	0x6
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcff
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.value	0x543
	.byte	0x22
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL62
	.long	0x19fe
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x6a7
	.uleb128 0x22
	.byte	0x1
	.long	.LASF954
	.byte	0x1
	.value	0x539
	.byte	0x6
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd55
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x539
	.byte	0x28
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"cur"
	.byte	0x1
	.value	0x539
	.byte	0x39
	.long	0x69b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.quad	.LVL61
	.long	0xa2e
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF955
	.byte	0x1
	.value	0x523
	.byte	0x6
	.byte	0x1
	.quad	.LFB34
	.quad	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdce
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x523
	.byte	0x22
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF956
	.byte	0x1
	.value	0x523
	.byte	0x31
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x523
	.byte	0x3b
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x523
	.byte	0x42
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LVL59
	.long	0xdce
	.uleb128 0x21
	.quad	.LVL60
	.long	0xdce
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF957
	.byte	0x1
	.value	0x4ff
	.byte	0x6
	.byte	0x1
	.quad	.LFB33
	.quad	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe2a
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x4ff
	.byte	0x1c
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x4ff
	.byte	0x2c
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF958
	.byte	0x1
	.value	0x4ff
	.byte	0x3e
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.quad	.LVL58
	.long	0xa48
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF959
	.byte	0x1
	.value	0x4ef
	.byte	0x6
	.byte	0x1
	.quad	.LFB32
	.quad	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe7d
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x4ef
	.byte	0x24
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x4f1
	.byte	0xe
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF960
	.byte	0x1
	.value	0x4d4
	.byte	0x6
	.byte	0x1
	.quad	.LFB31
	.quad	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf50
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x4d4
	.byte	0x23
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF880
	.byte	0x1
	.value	0x4d4
	.byte	0x34
	.long	0xa04
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF961
	.byte	0x1
	.value	0x4d4
	.byte	0x45
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x4d7
	.byte	0x13
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x19
	.long	.LASF962
	.byte	0x1
	.value	0x4da
	.byte	0x12
	.long	0xa28
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB29
	.quad	.LBE29
	.long	0xf40
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.value	0x4e1
	.byte	0x16
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL55
	.long	0xf9e
	.byte	0
	.uleb128 0x21
	.quad	.LVL56
	.long	0xf9e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF963
	.byte	0x1
	.value	0x4d1
	.byte	0x6
	.byte	0x1
	.quad	.LFB30
	.quad	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf9e
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x4d1
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x4d1
	.byte	0x2f
	.long	0xe1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.quad	.LVL54
	.long	0xf9e
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF964
	.byte	0x1
	.value	0x44a
	.byte	0x6
	.byte	0x1
	.quad	.LFB29
	.quad	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x10b2
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x44a
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x44a
	.byte	0x2f
	.long	0xe1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF965
	.byte	0x1
	.value	0x44c
	.byte	0x16
	.long	0x10b2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL39
	.long	0x16fc
	.uleb128 0x21
	.quad	.LVL40
	.long	0x16fc
	.uleb128 0x21
	.quad	.LVL41
	.long	0x1687
	.uleb128 0x21
	.quad	.LVL42
	.long	0x1528
	.uleb128 0x21
	.quad	.LVL43
	.long	0x159d
	.uleb128 0x21
	.quad	.LVL44
	.long	0x1612
	.uleb128 0x21
	.quad	.LVL45
	.long	0x14b3
	.uleb128 0x21
	.quad	.LVL46
	.long	0x143e
	.uleb128 0x21
	.quad	.LVL47
	.long	0x13c9
	.uleb128 0x21
	.quad	.LVL48
	.long	0x1376
	.uleb128 0x21
	.quad	.LVL49
	.long	0x12c5
	.uleb128 0x21
	.quad	.LVL50
	.long	0x1214
	.uleb128 0x21
	.quad	.LVL51
	.long	0x117e
	.uleb128 0x21
	.quad	.LVL52
	.long	0x111e
	.uleb128 0x21
	.quad	.LVL53
	.long	0x10b8
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x50e
	.uleb128 0x22
	.byte	0x1
	.long	.LASF966
	.byte	0x1
	.value	0x439
	.byte	0x6
	.byte	0x1
	.quad	.LFB28
	.quad	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1118
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x439
	.byte	0x23
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x439
	.byte	0x36
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x439
	.byte	0x41
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.quad	.LVL38
	.long	0xa67
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x4c1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF968
	.byte	0x1
	.value	0x42b
	.byte	0x6
	.byte	0x1
	.quad	.LFB27
	.quad	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x117e
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x42b
	.byte	0x23
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x42b
	.byte	0x36
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x42b
	.byte	0x41
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.quad	.LVL37
	.long	0xa77
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF969
	.byte	0x1
	.value	0x40f
	.byte	0x6
	.byte	0x1
	.quad	.LFB26
	.quad	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1214
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x40f
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x40f
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x40f
	.byte	0x43
	.long	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x411
	.byte	0xe
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x419
	.byte	0x11
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF970
	.byte	0x1
	.value	0x3f7
	.byte	0x6
	.byte	0x1
	.quad	.LFB25
	.quad	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x12c5
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x3f7
	.byte	0x24
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x3f7
	.byte	0x37
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x3f7
	.byte	0x42
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF883
	.byte	0x1
	.value	0x3fb
	.byte	0x10
	.long	0x5a3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x40
	.long	0x12b7
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x403
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.quad	.LVL34
	.long	0x18ed
	.uleb128 0x21
	.quad	.LVL35
	.long	0x18ed
	.uleb128 0x21
	.quad	.LVL36
	.long	0x18ed
	.byte	0
	.uleb128 0x21
	.quad	.LVL33
	.long	0x18ed
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF971
	.byte	0x1
	.value	0x3de
	.byte	0x6
	.byte	0x1
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1376
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x3de
	.byte	0x24
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x3de
	.byte	0x37
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x3de
	.byte	0x42
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF883
	.byte	0x1
	.value	0x3e2
	.byte	0x10
	.long	0x5a3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.long	0x1368
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x3ea
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.quad	.LVL30
	.long	0x18ed
	.uleb128 0x21
	.quad	.LVL31
	.long	0x18ed
	.uleb128 0x21
	.quad	.LVL32
	.long	0x18ed
	.byte	0
	.uleb128 0x21
	.quad	.LVL29
	.long	0x18ed
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF972
	.byte	0x1
	.value	0x3bb
	.byte	0x6
	.byte	0x1
	.quad	.LFB23
	.quad	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x13c9
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x3bb
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x3bb
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x3bb
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF973
	.byte	0x1
	.value	0x3ac
	.byte	0x6
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x143e
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x3ac
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x3ac
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x3ac
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x3b0
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF974
	.byte	0x1
	.value	0x39c
	.byte	0x6
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x14b3
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x39c
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x39c
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x39c
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x3a0
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF975
	.byte	0x1
	.value	0x38b
	.byte	0x6
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1528
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x38b
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x38b
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x38b
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x38f
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF976
	.byte	0x1
	.value	0x37b
	.byte	0x6
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x159d
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x37b
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x37b
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x37b
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x37f
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF977
	.byte	0x1
	.value	0x36c
	.byte	0x6
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1612
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x36c
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x36c
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x36c
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x370
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF978
	.byte	0x1
	.value	0x35d
	.byte	0x6
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1687
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x35d
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x35d
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x35d
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x361
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF979
	.byte	0x1
	.value	0x34e
	.byte	0x6
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x16fc
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x34e
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF867
	.byte	0x1
	.value	0x34e
	.byte	0x38
	.long	0x1118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF967
	.byte	0x1
	.value	0x34e
	.byte	0x43
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x19
	.long	.LASF872
	.byte	0x1
	.value	0x352
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF980
	.byte	0x1
	.value	0x303
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1804
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x303
	.byte	0x24
	.long	0xcff
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x303
	.byte	0x2e
	.long	0xe1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.quad	.LBB7
	.quad	.LBE7
	.long	0x178f
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x314
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x319
	.byte	0x12
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.quad	.LVL15
	.long	0x16fc
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9
	.long	0x17c3
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x32f
	.byte	0xd
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF956
	.byte	0x1
	.value	0x330
	.byte	0x13
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10
	.long	0x17f6
	.uleb128 0x19
	.long	.LASF956
	.byte	0x1
	.value	0x33a
	.byte	0x13
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.quad	.LVL18
	.long	0x1804
	.byte	0
	.uleb128 0x21
	.quad	.LVL13
	.long	0x1804
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF981
	.byte	0x1
	.value	0x2f2
	.byte	0x6
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1844
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x2f2
	.byte	0x25
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL11
	.long	0x1844
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF982
	.byte	0x1
	.value	0x2c1
	.byte	0x6
	.byte	0x1
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x18ed
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF983
	.byte	0x1
	.value	0x2c1
	.byte	0x2d
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4
	.long	0x18aa
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2c9
	.byte	0xe
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2d5
	.byte	0xe
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x19
	.long	.LASF956
	.byte	0x1
	.value	0x2d8
	.byte	0x13
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF984
	.byte	0x1
	.value	0x2b0
	.byte	0x6
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x19a4
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x2b0
	.byte	0x23
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF985
	.byte	0x1
	.value	0x2b0
	.byte	0x2c
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF986
	.byte	0x1
	.value	0x2b0
	.byte	0x37
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"tox"
	.byte	0x1
	.value	0x2b0
	.byte	0x42
	.long	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.string	"toy"
	.byte	0x1
	.value	0x2b0
	.byte	0x4b
	.long	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2b2
	.byte	0xe
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x19
	.long	.LASF956
	.byte	0x1
	.value	0x2b4
	.byte	0x13
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF987
	.byte	0x1
	.value	0x2a6
	.byte	0x6
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x19fe
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x2a6
	.byte	0x24
	.long	0xcff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL4
	.long	0xa87
	.uleb128 0x21
	.quad	.LVL5
	.long	0xa87
	.uleb128 0x21
	.quad	.LVL6
	.long	0xa87
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF876
	.byte	0x1
	.value	0x285
	.byte	0xe
	.byte	0x1
	.long	0xcff
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1acf
	.uleb128 0x20
	.string	"vtc"
	.byte	0x1
	.value	0x285
	.byte	0x25
	.long	0xcff
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.long	.LASF877
	.byte	0x1
	.value	0x285
	.byte	0x2e
	.long	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x25
	.long	.LASF878
	.byte	0x1
	.value	0x285
	.byte	0x39
	.long	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x25
	.long	.LASF884
	.byte	0x1
	.value	0x286
	.byte	0x2c
	.long	0x5af
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x25
	.long	.LASF885
	.byte	0x1
	.value	0x287
	.byte	0x2d
	.long	0x678
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x24
	.string	"ap"
	.byte	0x1
	.value	0x28c
	.byte	0x15
	.long	0x50e
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.string	"vta"
	.byte	0x1
	.value	0x28f
	.byte	0x12
	.long	0x4fe
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.quad	.LVL0
	.long	0xab5
	.uleb128 0x21
	.quad	.LVL1
	.long	0xa9c
	.uleb128 0x21
	.quad	.LVL2
	.long	0xa9c
	.uleb128 0x21
	.quad	.LVL3
	.long	0x18ed
	.byte	0
	.uleb128 0x2a
	.long	.LASF988
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
	.long	0x1b11
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF989
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
	.long	0x1b53
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF990
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
	.long	0x1b95
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF991
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
	.long	0x1bd7
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF992
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
	.long	0x1c19
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF993
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
	.long	0x1c5b
	.uleb128 0x20
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF994
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF995
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF996
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF1002
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x92
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF997
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x92
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
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
	.file 20 "include/drivers/keyboard.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.file 21 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x8
	.long	.LASF401
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.file 22 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF421
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF422
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF423
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.file 23 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 24 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 25 "include/errno.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.file 26 "include/globals.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1a
	.file 27 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1b
	.file 28 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1c
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 29 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1d
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF652
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.file 30 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF670
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.file 31 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0x10
	.long	.LASF684
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x13
	.file 32 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x22
	.long	.LASF761
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF762
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF763
	.byte	0x5
	.uleb128 0x271
	.long	.LASF764
	.byte	0x5
	.uleb128 0x272
	.long	.LASF765
	.byte	0x5
	.uleb128 0x273
	.long	.LASF766
	.byte	0x5
	.uleb128 0x274
	.long	.LASF767
	.byte	0x5
	.uleb128 0x275
	.long	.LASF768
	.byte	0x5
	.uleb128 0x276
	.long	.LASF769
	.byte	0x5
	.uleb128 0x277
	.long	.LASF770
	.byte	0x5
	.uleb128 0x278
	.long	.LASF771
	.byte	0x5
	.uleb128 0x279
	.long	.LASF772
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF773
	.byte	0x5
	.uleb128 0x27b
	.long	.LASF774
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF775
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF776
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF777
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF778
	.byte	0x5
	.uleb128 0x280
	.long	.LASF779
	.byte	0x5
	.uleb128 0x4fa
	.long	.LASF780
	.byte	0x5
	.uleb128 0x4fb
	.long	.LASF781
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
	.section	.debug_macro,"G",@progbits,wm4.keyboard.h.5.54a55c0e186ae89b578b4d25e56d476a,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF377
	.byte	0x5
	.uleb128 0x6
	.long	.LASF378
	.byte	0x5
	.uleb128 0x7
	.long	.LASF379
	.byte	0x5
	.uleb128 0x8
	.long	.LASF380
	.byte	0x5
	.uleb128 0x9
	.long	.LASF381
	.byte	0x5
	.uleb128 0xa
	.long	.LASF382
	.byte	0x5
	.uleb128 0xd
	.long	.LASF383
	.byte	0x5
	.uleb128 0x10
	.long	.LASF384
	.byte	0x5
	.uleb128 0x13
	.long	.LASF385
	.byte	0x5
	.uleb128 0x14
	.long	.LASF386
	.byte	0x5
	.uleb128 0x15
	.long	.LASF387
	.byte	0x5
	.uleb128 0x16
	.long	.LASF388
	.byte	0x5
	.uleb128 0x19
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF392
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF393
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF394
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF395
	.byte	0x5
	.uleb128 0x20
	.long	.LASF396
	.byte	0x5
	.uleb128 0x21
	.long	.LASF397
	.byte	0x5
	.uleb128 0x22
	.long	.LASF398
	.byte	0x5
	.uleb128 0x23
	.long	.LASF399
	.byte	0x5
	.uleb128 0x24
	.long	.LASF400
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF403
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF404
	.byte	0x5
	.uleb128 0x21
	.long	.LASF405
	.byte	0x5
	.uleb128 0x26
	.long	.LASF406
	.byte	0x5
	.uleb128 0x29
	.long	.LASF407
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF408
	.byte	0x5
	.uleb128 0x37
	.long	.LASF409
	.byte	0x5
	.uleb128 0x38
	.long	.LASF410
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF411
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF412
	.byte	0x5
	.uleb128 0x59
	.long	.LASF413
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF414
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF415
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF416
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF417
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF418
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF419
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF420
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF424
	.byte	0x5
	.uleb128 0x23
	.long	.LASF425
	.byte	0x5
	.uleb128 0x24
	.long	.LASF426
	.byte	0x5
	.uleb128 0x25
	.long	.LASF427
	.byte	0x5
	.uleb128 0x26
	.long	.LASF428
	.byte	0x5
	.uleb128 0x29
	.long	.LASF429
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF430
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF431
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF432
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x5
	.uleb128 0x30
	.long	.LASF434
	.byte	0x5
	.uleb128 0x31
	.long	.LASF435
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.screen.h.51.6629e140a1f99b39f2df4938dfb36814,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF436
	.byte	0x5
	.uleb128 0x34
	.long	.LASF437
	.byte	0x5
	.uleb128 0x35
	.long	.LASF438
	.byte	0x5
	.uleb128 0x36
	.long	.LASF439
	.byte	0x5
	.uleb128 0x37
	.long	.LASF440
	.byte	0x5
	.uleb128 0x38
	.long	.LASF441
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF442
	.byte	0x5
	.uleb128 0x11
	.long	.LASF443
	.byte	0x5
	.uleb128 0x12
	.long	.LASF444
	.byte	0x5
	.uleb128 0x14
	.long	.LASF445
	.byte	0x5
	.uleb128 0x15
	.long	.LASF446
	.byte	0x5
	.uleb128 0x18
	.long	.LASF447
	.byte	0x5
	.uleb128 0x19
	.long	.LASF448
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF450
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x5
	.uleb128 0x20
	.long	.LASF452
	.byte	0x5
	.uleb128 0x22
	.long	.LASF453
	.byte	0x5
	.uleb128 0x23
	.long	.LASF454
	.byte	0x5
	.uleb128 0x25
	.long	.LASF455
	.byte	0x5
	.uleb128 0x26
	.long	.LASF456
	.byte	0x5
	.uleb128 0x27
	.long	.LASF457
	.byte	0x5
	.uleb128 0x28
	.long	.LASF458
	.byte	0x5
	.uleb128 0x29
	.long	.LASF459
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF460
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF461
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF463
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF464
	.byte	0x5
	.uleb128 0x30
	.long	.LASF465
	.byte	0x5
	.uleb128 0x31
	.long	.LASF466
	.byte	0x5
	.uleb128 0x32
	.long	.LASF467
	.byte	0x5
	.uleb128 0x33
	.long	.LASF468
	.byte	0x5
	.uleb128 0x34
	.long	.LASF469
	.byte	0x5
	.uleb128 0x35
	.long	.LASF470
	.byte	0x5
	.uleb128 0x37
	.long	.LASF471
	.byte	0x5
	.uleb128 0x38
	.long	.LASF472
	.byte	0x5
	.uleb128 0x39
	.long	.LASF473
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF474
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF475
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF476
	.byte	0x5
	.uleb128 0x40
	.long	.LASF477
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vterminal.h.144.357f6396a89a60727d038f4896641812,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x90
	.long	.LASF478
	.byte	0x5
	.uleb128 0x91
	.long	.LASF479
	.byte	0x5
	.uleb128 0x92
	.long	.LASF480
	.byte	0x5
	.uleb128 0x94
	.long	.LASF481
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.tty.h.7.b5deb4bd8ae44334d0ec82c7532061a1,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF482
	.byte	0x5
	.uleb128 0x8
	.long	.LASF483
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF484
	.byte	0x5
	.uleb128 0xd
	.long	.LASF485
	.byte	0x5
	.uleb128 0xe
	.long	.LASF486
	.byte	0x5
	.uleb128 0xf
	.long	.LASF487
	.byte	0x5
	.uleb128 0x10
	.long	.LASF488
	.byte	0x5
	.uleb128 0x11
	.long	.LASF489
	.byte	0x5
	.uleb128 0x12
	.long	.LASF490
	.byte	0x5
	.uleb128 0x13
	.long	.LASF491
	.byte	0x5
	.uleb128 0x14
	.long	.LASF492
	.byte	0x5
	.uleb128 0x15
	.long	.LASF493
	.byte	0x5
	.uleb128 0x16
	.long	.LASF494
	.byte	0x5
	.uleb128 0x17
	.long	.LASF495
	.byte	0x5
	.uleb128 0x18
	.long	.LASF496
	.byte	0x5
	.uleb128 0x19
	.long	.LASF497
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF498
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF499
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF500
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF503
	.byte	0x5
	.uleb128 0x20
	.long	.LASF504
	.byte	0x5
	.uleb128 0x21
	.long	.LASF505
	.byte	0x5
	.uleb128 0x22
	.long	.LASF506
	.byte	0x5
	.uleb128 0x23
	.long	.LASF507
	.byte	0x5
	.uleb128 0x24
	.long	.LASF508
	.byte	0x5
	.uleb128 0x25
	.long	.LASF509
	.byte	0x5
	.uleb128 0x26
	.long	.LASF510
	.byte	0x5
	.uleb128 0x27
	.long	.LASF511
	.byte	0x5
	.uleb128 0x28
	.long	.LASF512
	.byte	0x5
	.uleb128 0x29
	.long	.LASF513
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF514
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF515
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF518
	.byte	0x5
	.uleb128 0x30
	.long	.LASF519
	.byte	0x5
	.uleb128 0x31
	.long	.LASF520
	.byte	0x5
	.uleb128 0x32
	.long	.LASF521
	.byte	0x5
	.uleb128 0x33
	.long	.LASF522
	.byte	0x5
	.uleb128 0x34
	.long	.LASF523
	.byte	0x5
	.uleb128 0x35
	.long	.LASF524
	.byte	0x5
	.uleb128 0x36
	.long	.LASF525
	.byte	0x5
	.uleb128 0x37
	.long	.LASF526
	.byte	0x5
	.uleb128 0x38
	.long	.LASF527
	.byte	0x5
	.uleb128 0x39
	.long	.LASF528
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF529
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF530
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF531
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF532
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF533
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF534
	.byte	0x5
	.uleb128 0x40
	.long	.LASF535
	.byte	0x5
	.uleb128 0x41
	.long	.LASF536
	.byte	0x5
	.uleb128 0x42
	.long	.LASF537
	.byte	0x5
	.uleb128 0x43
	.long	.LASF538
	.byte	0x5
	.uleb128 0x44
	.long	.LASF539
	.byte	0x5
	.uleb128 0x45
	.long	.LASF540
	.byte	0x5
	.uleb128 0x47
	.long	.LASF541
	.byte	0x5
	.uleb128 0x49
	.long	.LASF542
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF543
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF544
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF545
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF546
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF547
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF548
	.byte	0x5
	.uleb128 0x50
	.long	.LASF549
	.byte	0x5
	.uleb128 0x51
	.long	.LASF550
	.byte	0x5
	.uleb128 0x52
	.long	.LASF551
	.byte	0x5
	.uleb128 0x53
	.long	.LASF552
	.byte	0x5
	.uleb128 0x54
	.long	.LASF553
	.byte	0x5
	.uleb128 0x55
	.long	.LASF554
	.byte	0x5
	.uleb128 0x56
	.long	.LASF555
	.byte	0x5
	.uleb128 0x57
	.long	.LASF556
	.byte	0x5
	.uleb128 0x58
	.long	.LASF557
	.byte	0x5
	.uleb128 0x59
	.long	.LASF558
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF559
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF560
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF561
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF562
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF563
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF564
	.byte	0x5
	.uleb128 0x60
	.long	.LASF565
	.byte	0x5
	.uleb128 0x61
	.long	.LASF566
	.byte	0x5
	.uleb128 0x62
	.long	.LASF567
	.byte	0x5
	.uleb128 0x63
	.long	.LASF568
	.byte	0x5
	.uleb128 0x64
	.long	.LASF569
	.byte	0x5
	.uleb128 0x65
	.long	.LASF570
	.byte	0x5
	.uleb128 0x66
	.long	.LASF571
	.byte	0x5
	.uleb128 0x67
	.long	.LASF572
	.byte	0x5
	.uleb128 0x68
	.long	.LASF573
	.byte	0x5
	.uleb128 0x69
	.long	.LASF574
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF575
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF576
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF577
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF578
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF579
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF580
	.byte	0x5
	.uleb128 0x70
	.long	.LASF581
	.byte	0x5
	.uleb128 0x71
	.long	.LASF582
	.byte	0x5
	.uleb128 0x72
	.long	.LASF583
	.byte	0x5
	.uleb128 0x73
	.long	.LASF584
	.byte	0x5
	.uleb128 0x74
	.long	.LASF585
	.byte	0x5
	.uleb128 0x75
	.long	.LASF586
	.byte	0x5
	.uleb128 0x76
	.long	.LASF587
	.byte	0x5
	.uleb128 0x77
	.long	.LASF588
	.byte	0x5
	.uleb128 0x78
	.long	.LASF589
	.byte	0x5
	.uleb128 0x79
	.long	.LASF590
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF591
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF592
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF593
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF594
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF595
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF596
	.byte	0x5
	.uleb128 0x80
	.long	.LASF597
	.byte	0x5
	.uleb128 0x81
	.long	.LASF598
	.byte	0x5
	.uleb128 0x82
	.long	.LASF599
	.byte	0x5
	.uleb128 0x83
	.long	.LASF600
	.byte	0x5
	.uleb128 0x84
	.long	.LASF601
	.byte	0x5
	.uleb128 0x85
	.long	.LASF602
	.byte	0x5
	.uleb128 0x86
	.long	.LASF603
	.byte	0x5
	.uleb128 0x87
	.long	.LASF604
	.byte	0x5
	.uleb128 0x88
	.long	.LASF605
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF606
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF607
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF608
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF609
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF610
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF611
	.byte	0x5
	.uleb128 0x90
	.long	.LASF612
	.byte	0x5
	.uleb128 0x93
	.long	.LASF613
	.byte	0x5
	.uleb128 0x94
	.long	.LASF614
	.byte	0x5
	.uleb128 0x97
	.long	.LASF615
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF616
	.byte	0x5
	.uleb128 0x5
	.long	.LASF617
	.byte	0x5
	.uleb128 0x6
	.long	.LASF618
	.byte	0x5
	.uleb128 0x7
	.long	.LASF619
	.byte	0x5
	.uleb128 0xa
	.long	.LASF620
	.byte	0x5
	.uleb128 0xc
	.long	.LASF621
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF622
	.byte	0x5
	.uleb128 0x8
	.long	.LASF623
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF624
	.byte	0x5
	.uleb128 0x7
	.long	.LASF625
	.byte	0x5
	.uleb128 0x8
	.long	.LASF626
	.byte	0x5
	.uleb128 0x9
	.long	.LASF627
	.byte	0x5
	.uleb128 0xa
	.long	.LASF628
	.byte	0x5
	.uleb128 0xb
	.long	.LASF629
	.byte	0x5
	.uleb128 0xc
	.long	.LASF630
	.byte	0x5
	.uleb128 0xd
	.long	.LASF631
	.byte	0x5
	.uleb128 0xe
	.long	.LASF632
	.byte	0x5
	.uleb128 0x10
	.long	.LASF633
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF634
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF635
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF636
	.byte	0x5
	.uleb128 0x20
	.long	.LASF637
	.byte	0x5
	.uleb128 0x21
	.long	.LASF638
	.byte	0x5
	.uleb128 0x23
	.long	.LASF633
	.byte	0x5
	.uleb128 0x24
	.long	.LASF639
	.byte	0x5
	.uleb128 0x25
	.long	.LASF640
	.byte	0x5
	.uleb128 0x26
	.long	.LASF641
	.byte	0x5
	.uleb128 0x28
	.long	.LASF642
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF643
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF644
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF645
	.byte	0x5
	.uleb128 0x30
	.long	.LASF646
	.byte	0x5
	.uleb128 0x31
	.long	.LASF647
	.byte	0x5
	.uleb128 0x32
	.long	.LASF648
	.byte	0x5
	.uleb128 0x33
	.long	.LASF649
	.byte	0x5
	.uleb128 0x35
	.long	.LASF650
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF651
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF653
	.byte	0x5
	.uleb128 0xf
	.long	.LASF654
	.byte	0x5
	.uleb128 0x10
	.long	.LASF655
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF656
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF657
	.byte	0x5
	.uleb128 0x23
	.long	.LASF658
	.byte	0x5
	.uleb128 0x24
	.long	.LASF659
	.byte	0x5
	.uleb128 0x25
	.long	.LASF660
	.byte	0x5
	.uleb128 0x26
	.long	.LASF661
	.byte	0x5
	.uleb128 0x27
	.long	.LASF662
	.byte	0x5
	.uleb128 0x28
	.long	.LASF663
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF664
	.byte	0x5
	.uleb128 0x31
	.long	.LASF665
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF666
	.byte	0x5
	.uleb128 0x11
	.long	.LASF667
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF668
	.byte	0x5
	.uleb128 0xab
	.long	.LASF669
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF671
	.byte	0x5
	.uleb128 0x9
	.long	.LASF672
	.byte	0x5
	.uleb128 0xa
	.long	.LASF673
	.byte	0x5
	.uleb128 0xb
	.long	.LASF674
	.byte	0x5
	.uleb128 0xd
	.long	.LASF675
	.byte	0x5
	.uleb128 0xe
	.long	.LASF676
	.byte	0x5
	.uleb128 0x10
	.long	.LASF677
	.byte	0x5
	.uleb128 0x11
	.long	.LASF678
	.byte	0x5
	.uleb128 0x12
	.long	.LASF679
	.byte	0x5
	.uleb128 0x13
	.long	.LASF680
	.byte	0x5
	.uleb128 0x19
	.long	.LASF681
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF682
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF683
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF685
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF686
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF687
	.byte	0x5
	.uleb128 0x20
	.long	.LASF688
	.byte	0x5
	.uleb128 0x21
	.long	.LASF689
	.byte	0x5
	.uleb128 0x22
	.long	.LASF690
	.byte	0x5
	.uleb128 0x23
	.long	.LASF691
	.byte	0x5
	.uleb128 0x24
	.long	.LASF692
	.byte	0x5
	.uleb128 0x25
	.long	.LASF693
	.byte	0x5
	.uleb128 0x27
	.long	.LASF694
	.byte	0x5
	.uleb128 0x28
	.long	.LASF695
	.byte	0x5
	.uleb128 0x29
	.long	.LASF696
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF697
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF698
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF699
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF700
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x5
	.uleb128 0x34
	.long	.LASF702
	.byte	0x5
	.uleb128 0x35
	.long	.LASF703
	.byte	0x5
	.uleb128 0x36
	.long	.LASF704
	.byte	0x5
	.uleb128 0x37
	.long	.LASF705
	.byte	0x5
	.uleb128 0x38
	.long	.LASF706
	.byte	0x5
	.uleb128 0x39
	.long	.LASF707
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF708
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF709
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF710
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF711
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF712
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF713
	.byte	0x5
	.uleb128 0x40
	.long	.LASF714
	.byte	0x5
	.uleb128 0x41
	.long	.LASF715
	.byte	0x5
	.uleb128 0x42
	.long	.LASF716
	.byte	0x5
	.uleb128 0x43
	.long	.LASF717
	.byte	0x5
	.uleb128 0x44
	.long	.LASF718
	.byte	0x5
	.uleb128 0x45
	.long	.LASF719
	.byte	0x5
	.uleb128 0x46
	.long	.LASF720
	.byte	0x5
	.uleb128 0x47
	.long	.LASF721
	.byte	0x5
	.uleb128 0x48
	.long	.LASF722
	.byte	0x5
	.uleb128 0x49
	.long	.LASF723
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF724
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF725
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF726
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF727
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF728
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF729
	.byte	0x5
	.uleb128 0x50
	.long	.LASF730
	.byte	0x5
	.uleb128 0x51
	.long	.LASF731
	.byte	0x5
	.uleb128 0x52
	.long	.LASF732
	.byte	0x5
	.uleb128 0x54
	.long	.LASF733
	.byte	0x5
	.uleb128 0x55
	.long	.LASF734
	.byte	0x5
	.uleb128 0x56
	.long	.LASF735
	.byte	0x5
	.uleb128 0x57
	.long	.LASF736
	.byte	0x5
	.uleb128 0x58
	.long	.LASF737
	.byte	0x5
	.uleb128 0x59
	.long	.LASF738
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF739
	.byte	0x5
	.uleb128 0x64
	.long	.LASF740
	.byte	0x5
	.uleb128 0x97
	.long	.LASF741
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF742
	.byte	0x5
	.uleb128 0xac
	.long	.LASF743
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF744
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF745
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF746
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF747
	.byte	0x5
	.uleb128 0xee
	.long	.LASF748
	.byte	0x5
	.uleb128 0x101
	.long	.LASF749
	.byte	0x5
	.uleb128 0x104
	.long	.LASF750
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF751
	.byte	0x5
	.uleb128 0x126
	.long	.LASF752
	.byte	0x5
	.uleb128 0x127
	.long	.LASF753
	.byte	0x5
	.uleb128 0x128
	.long	.LASF754
	.byte	0x5
	.uleb128 0x129
	.long	.LASF755
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF756
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF757
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF758
	.byte	0x5
	.uleb128 0x6
	.long	.LASF759
	.byte	0x5
	.uleb128 0x7
	.long	.LASF760
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF684:
	.string	"MAX_LAPICS 8"
.LASF365:
	.string	"__linux__ 1"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF729:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF795:
	.string	"size_t"
.LASF443:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF948:
	.string	"vterminal_echo_input"
.LASF503:
	.string	"ENOTDIR 20"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF637:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF735:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF828:
	.string	"ldisc_cooked"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF704:
	.string	"DBG_MM DBG_MODE(1)"
.LASF445:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF956:
	.string	"cell"
.LASF717:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF919:
	.string	"c_rsp"
.LASF957:
	.string	"vga_cell"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF911:
	.string	"p_cwd"
.LASF602:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF674:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF419:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF966:
	.string	"vtconsole_csi_h"
.LASF965:
	.string	"parser"
.LASF409:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF510:
	.string	"EFBIG 27"
.LASF442:
	.string	"PAGE_SHIFT 12"
.LASF787:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF530:
	.string	"EL3RST 47"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF768:
	.string	"VGACOLOR_RED 0X4"
.LASF724:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF628:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF694:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF944:
	.string	"vga_disable_cursor"
.LASF921:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF606:
	.string	"ENOMEDIUM 123"
.LASF719:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF397:
	.string	"F9 ((uint8_t)(F1 + 8))"
.LASF1001:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF890:
	.string	"tty_ldisc"
.LASF841:
	.string	"write"
.LASF723:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF730:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF821:
	.string	"kt_state"
.LASF952:
	.string	"vterminal_make_active"
.LASF856:
	.string	"VTCOLOR_GREY"
.LASF619:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF420:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF598:
	.string	"EINPROGRESS 115"
.LASF375:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF379:
	.string	"ESC 0x1B"
.LASF579:
	.string	"EPFNOSUPPORT 96"
.LASF493:
	.string	"ECHILD 10"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF477:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF611:
	.string	"EKEYREVOKED 128"
.LASF344:
	.string	"__x86_64 1"
.LASF894:
	.string	"tty_t"
.LASF497:
	.string	"EFAULT 14"
.LASF632:
	.string	"PT_GLOBAL 0x100"
.LASF839:
	.string	"chardev_ops"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF713:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF918:
	.string	"c_rip"
.LASF400:
	.string	"F12 ((uint8_t)(F1 + 11))"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF748:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF830:
	.string	"ldisc_head"
.LASF504:
	.string	"EISDIR 21"
.LASF428:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF926:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF665:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF446:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF852:
	.string	"VTCOLOR_YELLOW"
.LASF491:
	.string	"ENOEXEC 8"
.LASF469:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF771:
	.string	"VGACOLOR_LIGHT_GRAY 0X7"
.LASF642:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF511:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF989:
	.string	"lessthaneq"
.LASF929:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF940:
	.string	"ldisc_get_current_line_raw"
.LASF810:
	.string	"km_waitq"
.LASF893:
	.string	"tty_write_mutex"
.LASF461:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF390:
	.string	"F2 ((uint8_t)(F1 + 1))"
.LASF752:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF955:
	.string	"paint_callback"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF971:
	.string	"vtconsole_csi_ed"
.LASF960:
	.string	"vtconsole_write"
.LASF738:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF526:
	.string	"EIDRM 43"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF779:
	.string	"VGACOLOR_WHITE 0XF"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF669:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF781:
	.string	"VGA_ENTRY(__c,__fg,__bg) ((((__bg)&0XF) << 4 | ((__fg)&0XF)) << 8 | ((__c)&0XFF))"
.LASF860:
	.string	"VTSTATE_ATTR"
.LASF456:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF500:
	.string	"EEXIST 17"
.LASF417:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF825:
	.string	"kt_preemption_count"
.LASF571:
	.string	"ENOTSOCK 88"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF609:
	.string	"ENOKEY 126"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF450:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF573:
	.string	"EMSGSIZE 90"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF710:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF812:
	.string	"km_link"
.LASF394:
	.string	"F6 ((uint8_t)(F1 + 5))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF509:
	.string	"ETXTBSY 26"
.LASF836:
	.string	"cd_id"
.LASF791:
	.string	"long int"
.LASF380:
	.string	"LF 0x0A"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF873:
	.string	"vtcell_t"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF641:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF668:
	.string	"PID_IDLE 0"
.LASF992:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF453:
	.string	"USE_2MB_PAGES 1"
.LASF773:
	.string	"VGACOLOR_LIGHT_BLUE 0X9"
.LASF457:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF564:
	.string	"ELIBSCN 81"
.LASF858:
	.string	"VTSTATE_ESC"
.LASF887:
	.string	"vtconsole_t"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF673:
	.string	"INTR_GPF 0x0d"
.LASF714:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF671:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF357:
	.string	"__FXSR__ 1"
.LASF936:
	.string	"colors"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF613:
	.string	"EOWNERDEAD 130"
.LASF938:
	.string	"active_vt"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF435:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF910:
	.string	"p_files"
.LASF565:
	.string	"ELIBMAX 82"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF758:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF798:
	.string	"devid_t"
.LASF594:
	.string	"ECONNREFUSED 111"
.LASF943:
	.string	"vga_enable_cursor"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF507:
	.string	"EMFILE 24"
.LASF949:
	.string	"vterminal_write"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF404:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF519:
	.string	"ENAMETOOLONG 36"
.LASF615:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF925:
	.string	"KT_NO_STATE"
.LASF539:
	.string	"EBADRQC 56"
.LASF782:
	.string	"signed char"
.LASF458:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF687:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF705:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF508:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF558:
	.string	"EOVERFLOW 75"
.LASF736:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF917:
	.string	"context"
.LASF848:
	.string	"pframe"
.LASF580:
	.string	"EAFNOSUPPORT 97"
.LASF512:
	.string	"ESPIPE 29"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF964:
	.string	"vtconsole_process"
.LASF595:
	.string	"EHOSTDOWN 112"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF783:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF765:
	.string	"VGACOLOR_BLUE 0X1"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF395:
	.string	"F7 ((uint8_t)(F1 + 6))"
.LASF568:
	.string	"ERESTART 85"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF623:
	.string	"VMMAP_DIR_HILO 2"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF762:
	.string	"VGA_SCREEN_WIDTH 80"
.LASF726:
	.string	"DBG_THR DBG_MODE(23)"
.LASF631:
	.string	"PT_SIZE 0x080"
.LASF531:
	.string	"ELNRNG 48"
.LASF634:
	.string	"INDEX_MASK 0b111111111"
.LASF808:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF743:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF682:
	.string	"IPL_HIGH 0xe0"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF514:
	.string	"EMLINK 31"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF479:
	.string	"VTC_DEFAULT_BACKGROUND VTCOLOR_BLACK"
.LASF440:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF973:
	.string	"vtconsole_csi_cha"
.LASF557:
	.string	"EBADMSG 74"
.LASF584:
	.string	"ENETUNREACH 101"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF760:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF863:
	.string	"value"
.LASF542:
	.string	"EBFONT 59"
.LASF686:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF588:
	.string	"ENOBUFS 105"
.LASF923:
	.string	"c_kstacksz"
.LASF454:
	.string	"USE_1GB_PAGES 1"
.LASF799:
	.string	"char"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF413:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF899:
	.string	"p_pid"
.LASF916:
	.string	"pml4_t"
.LASF578:
	.string	"EOPNOTSUPP 95"
.LASF414:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF805:
	.string	"ktqueue"
.LASF605:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF744:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF683:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF633:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF345:
	.string	"__x86_64__ 1"
.LASF954:
	.string	"cursor_move_callback"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF816:
	.string	"kt_retval"
.LASF663:
	.string	"NFILES 32"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF721:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF983:
	.string	"lines"
.LASF533:
	.string	"ENOCSI 50"
.LASF629:
	.string	"PT_ACCESSED 0x020"
.LASF383:
	.string	"EOT 0x04"
.LASF436:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF471:
	.string	"PAGE_SHIFT_512GB 39"
.LASF872:
	.string	"attr"
.LASF437:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF959:
	.string	"vtconsole_redraw"
.LASF898:
	.string	"proc"
.LASF648:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF997:
	.string	"flags"
.LASF770:
	.string	"VGACOLOR_BROWN 0X6"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF425:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF620:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF523:
	.string	"ELOOP 40"
.LASF695:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF855:
	.string	"VTCOLOR_CYAN"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF874:
	.string	"vtcursor_t"
.LASF364:
	.string	"__linux 1"
.LASF994:
	.string	"intr_wait"
.LASF474:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF405:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF996:
	.string	"intr_enable"
.LASF876:
	.string	"vtconsole"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF627:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF536:
	.string	"EBADR 53"
.LASF892:
	.string	"tty_read_mutex"
.LASF842:
	.string	"mmap"
.LASF386:
	.string	"SCROLL_DOWN 0x1c"
.LASF733:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF827:
	.string	"ldisc"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF411:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF645:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF935:
	.string	"file"
.LASF563:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF554:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF617:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF908:
	.string	"p_pml4"
.LASF931:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF586:
	.string	"ECONNABORTED 103"
.LASF1000:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF888:
	.string	"vterminal_t"
.LASF809:
	.string	"kmutex"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF988:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF543:
	.string	"ENOSTR 60"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF985:
	.string	"fromx"
.LASF986:
	.string	"fromy"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF880:
	.string	"buffer"
.LASF930:
	.string	"KT_EXITED"
.LASF434:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF800:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF660:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF699:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF630:
	.string	"PT_DIRTY 0x040"
.LASF494:
	.string	"EAGAIN 11"
.LASF801:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF596:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF982:
	.string	"vtconsole_scroll"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF517:
	.string	"ERANGE 34"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF377:
	.string	"BS 0x08"
.LASF814:
	.string	"kt_ctx"
.LASF525:
	.string	"ENOMSG 42"
.LASF448:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF381:
	.string	"CR 0x0D"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF747:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF616:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF932:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF937:
	.string	"brightcolors"
.LASF492:
	.string	"EBADF 9"
.LASF755:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF739:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF909:
	.string	"p_wait"
.LASF922:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF728:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF696:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF889:
	.string	"tty_vterminal"
.LASF481:
	.string	"VTC_ANSI_PARSER_STACK_SIZE 8"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF540:
	.string	"EBADSLT 57"
.LASF585:
	.string	"ENETRESET 102"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF603:
	.string	"EISNAM 120"
.LASF382:
	.string	"SPACE 0x20"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF693:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF675:
	.string	"INTR_APICTIMER 0xf0"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF850:
	.string	"VTCOLOR_RED"
.LASF875:
	.string	"vtc_paint_handler_t"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF567:
	.string	"EILSEQ 84"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF861:
	.string	"VTSTATE_ENDVAL"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF515:
	.string	"EPIPE 32"
.LASF498:
	.string	"ENOTBLK 15"
.LASF447:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF796:
	.string	"ssize_t"
.LASF468:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF544:
	.string	"ENODATA 61"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF653:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF835:
	.string	"chardev"
.LASF968:
	.string	"vtconsole_csi_l"
.LASF676:
	.string	"INTR_KEYBOARD 0xe0"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF655:
	.string	"TICK_MSECS 10"
.LASF761:
	.string	"vterminal_to_tty(vterminal) CONTAINER_OF((vterminal), tty_t, tty_vterminal)"
.LASF552:
	.string	"ESRMNT 69"
.LASF574:
	.string	"EPROTOTYPE 91"
.LASF901:
	.string	"p_threads"
.LASF767:
	.string	"VGACOLOR_CYAN 0X3"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF817:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF882:
	.string	"tab_index"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF969:
	.string	"vtconsole_csi_sgr"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF975:
	.string	"vtconsole_csi_cnl"
.LASF640:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF702:
	.string	"DBG_ALL (~0ULL)"
.LASF608:
	.string	"ECANCELED 125"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF920:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF415:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF549:
	.string	"EREMOTE 66"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF667:
	.string	"PROC_NAME_LEN 256"
.LASF355:
	.string	"__SSE__ 1"
.LASF421:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF438:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF879:
	.string	"ansiparser"
.LASF581:
	.string	"EADDRINUSE 98"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF691:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF946:
	.string	"kmalloc"
.LASF495:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF794:
	.string	"uintptr_t"
.LASF432:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF560:
	.string	"EBADFD 77"
.LASF980:
	.string	"vtconsole_append"
.LASF513:
	.string	"EROFS 30"
.LASF406:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF707:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF614:
	.string	"ENOTRECOVERABLE 131"
.LASF490:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF745:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF813:
	.string	"kthread"
.LASF678:
	.string	"INTR_SPURIOUS 0xfe"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF987:
	.string	"vtconsole_delete"
.LASF587:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF877:
	.string	"width"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF618:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF541:
	.string	"EDEADLOCK EDEADLK"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF864:
	.string	"empty"
.LASF741:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF388:
	.string	"SCROLL_DOWN_PAGE 0x1d"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF545:
	.string	"ETIME 62"
.LASF819:
	.string	"kt_cancelled"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF777:
	.string	"VGACOLOR_LIGHT_MAGENTA 0XD"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF867:
	.string	"stack"
.LASF590:
	.string	"ENOTCONN 107"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF502:
	.string	"ENODEV 19"
.LASF974:
	.string	"vtconsole_csi_cpl"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF871:
	.string	"vtattr_t"
.LASF398:
	.string	"F10 ((uint8_t)(F1 + 9))"
.LASF689:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF941:
	.string	"vga_set_cursor"
.LASF990:
	.string	"greaterthan"
.LASF343:
	.string	"__amd64__ 1"
.LASF427:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF604:
	.string	"EREMOTEIO 121"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF624:
	.string	"PT_PRESENT 0x001"
.LASF815:
	.string	"kt_kstack"
.LASF698:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF690:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF802:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF426:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF496:
	.string	"EACCES 13"
.LASF967:
	.string	"count"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF538:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF416:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF803:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF840:
	.string	"read"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF789:
	.string	"unsigned int"
.LASF963:
	.string	"vtconsole_putchar"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF906:
	.string	"p_status"
.LASF680:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF646:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF612:
	.string	"EKEYREJECTED 129"
.LASF480:
	.string	"VTC_DEFAULT_ATTR (vtattr_t) { 0, VTC_DEFAULT_FOREGROUND, VTC_DEFAULT_BACKGROUND }"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF757:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF473:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF763:
	.string	"VGA_SCREEN_HEIGHT 25"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF797:
	.string	"pid_t"
.LASF657:
	.string	"PF_HASH_SIZE 17"
.LASF851:
	.string	"VTCOLOR_GREEN"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF1002:
	.string	"intr_enabled"
.LASF451:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF725:
	.string	"DBG_KB DBG_MODE(22)"
.LASF505:
	.string	"EINVAL 22"
.LASF643:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF884:
	.string	"on_paint"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF593:
	.string	"ETIMEDOUT 110"
.LASF780:
	.string	"VGA_COLOR(__fg,__bg) (__bg << 4 | __fg)"
.LASF524:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF389:
	.string	"F1 ((uint8_t)128)"
.LASF999:
	.string	"drivers/tty/vterminal.c"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF804:
	.string	"list"
.LASF528:
	.string	"EL2NSYNC 45"
.LASF897:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF829:
	.string	"ldisc_tail"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF775:
	.string	"VGACOLOR_LIGHT_CYAN 0XB"
.LASF430:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF387:
	.string	"SCROLL_UP_PAGE 0x0f"
.LASF769:
	.string	"VGACOLOR_MAGENTA 0X5"
.LASF576:
	.string	"EPROTONOSUPPORT 93"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF915:
	.string	"phys"
.LASF843:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF807:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF718:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF636:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF476:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF700:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF749:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF444:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF711:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF672:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF870:
	.string	"bright"
.LASF396:
	.string	"F8 ((uint8_t)(F1 + 7))"
.LASF820:
	.string	"kt_wchan"
.LASF688:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF697:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF664:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF501:
	.string	"EXDEV 18"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF465:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF746:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF499:
	.string	"EBUSY 16"
.LASF659:
	.string	"MAX_FILES 1024"
.LASF958:
	.string	"entry"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF677:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF656:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF831:
	.string	"ldisc_full"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF679:
	.string	"INTR_APICERR 0xff"
.LASF772:
	.string	"VGACOLOR_GRAY 0X8"
.LASF638:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF976:
	.string	"vtconsole_csi_cub"
.LASF978:
	.string	"vtconsole_csi_cud"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF977:
	.string	"vtconsole_csi_cuf"
.LASF720:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF599:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF484:
	.string	"EPERM 1"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF961:
	.string	"size"
.LASF972:
	.string	"vtconsole_csi_cup"
.LASF561:
	.string	"EREMCHG 78"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF979:
	.string	"vtconsole_csi_cuu"
.LASF422:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF651:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF786:
	.string	"uint16_t"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF903:
	.string	"p_pproc"
.LASF478:
	.string	"VTC_DEFAULT_FOREGROUND VTCOLOR_GREY"
.LASF658:
	.string	"MAXPATHLEN 1024"
.LASF886:
	.string	"vtc_cursor_handler_t"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF844:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF681:
	.string	"IPL_LOW 0"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF928:
	.string	"KT_SLEEP"
.LASF569:
	.string	"ESTRPIPE 86"
.LASF734:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF845:
	.string	"chardev_t"
.LASF412:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF361:
	.string	"__SEG_FS 1"
.LASF824:
	.string	"kt_mutexes"
.LASF902:
	.string	"p_children"
.LASF464:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF849:
	.string	"VTCOLOR_BLACK"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF750:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF934:
	.string	"proc_state_t"
.LASF995:
	.string	"intr_disable"
.LASF670:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF393:
	.string	"F5 ((uint8_t)(F1 + 4))"
.LASF685:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF403:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF408:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF597:
	.string	"EALREADY 114"
.LASF486:
	.string	"ESRCH 3"
.LASF924:
	.string	"context_t"
.LASF826:
	.string	"kmutex_t"
.LASF947:
	.string	"memset"
.LASF354:
	.string	"__MMX__ 1"
.LASF402:
	.string	"inline __attribute__((always_inline, used))"
.LASF661:
	.string	"MAX_VNODES 1024"
.LASF472:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF823:
	.string	"kt_qlink"
.LASF912:
	.string	"p_brk"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF650:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF553:
	.string	"ECOMM 70"
.LASF483:
	.string	"cd_to_tty(bd) CONTAINER_OF((bd), tty_t, tty_cdev)"
.LASF778:
	.string	"VGACOLOR_LIGHT_YELLOW 0XE"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF847:
	.string	"mobj"
.LASF984:
	.string	"vtconsole_clear"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF572:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF716:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF466:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF433:
	.string	"MEM_MAJOR 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF424:
	.string	"MINOR_BITS 8"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF452:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF625:
	.string	"PT_WRITE 0x002"
.LASF467:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF970:
	.string	"vtconsole_csi_el"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF644:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF837:
	.string	"cd_ops"
.LASF485:
	.string	"ENOENT 2"
.LASF727:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF731:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF582:
	.string	"EADDRNOTAVAIL 99"
.LASF522:
	.string	"ENOTEMPTY 39"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF647:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF577:
	.string	"ESOCKTNOSUPPORT 94"
.LASF626:
	.string	"PT_USER 0x004"
.LASF423:
	.string	"LDISC_BUFFER_SIZE 128"
.LASF583:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF854:
	.string	"VTCOLOR_MAGENTA"
.LASF703:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF914:
	.string	"p_vmmap"
.LASF881:
	.string	"tabs"
.LASF766:
	.string	"VGACOLOR_GREEN 0X2"
.LASF378:
	.string	"DEL 0x7F"
.LASF751:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF547:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF385:
	.string	"SCROLL_UP 0x0e"
.LASF715:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF859:
	.string	"VTSTATE_BRACKET"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF532:
	.string	"EUNATCH 49"
.LASF535:
	.string	"EBADE 52"
.LASF399:
	.string	"F11 ((uint8_t)(F1 + 10))"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF722:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF570:
	.string	"EUSERS 87"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF857:
	.string	"vtcolor_t"
.LASF784:
	.string	"short int"
.LASF933:
	.string	"PROC_DEAD"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF441:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF792:
	.string	"uint64_t"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF592:
	.string	"ETOOMANYREFS 109"
.LASF521:
	.string	"ENOSYS 38"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF942:
	.string	"vga_write_char_at"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF869:
	.string	"vtansi_parser_t"
.LASF407:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF774:
	.string	"VGACOLOR_LIGHT_GREEN 0XA"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF506:
	.string	"ENFILE 23"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF439:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF487:
	.string	"EINTR 4"
.LASF891:
	.string	"tty_cdev"
.LASF740:
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
.LASF537:
	.string	"EXFULL 54"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF566:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF550:
	.string	"ENOLINK 67"
.LASF853:
	.string	"VTCOLOR_BLUE"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF811:
	.string	"km_holder"
.LASF868:
	.string	"index"
.LASF449:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF575:
	.string	"ENOPROTOOPT 92"
.LASF950:
	.string	"vterminal_scroll_to_bottom"
.LASF652:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF462:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF489:
	.string	"ENXIO 6"
.LASF401:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF662:
	.string	"NAME_LEN 28"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF649:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF945:
	.string	"kfree"
.LASF470:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF548:
	.string	"ENOPKG 65"
.LASF622:
	.string	"VMMAP_DIR_LOHI 1"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF806:
	.string	"tq_list"
.LASF546:
	.string	"ENOSR 63"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF0:
	.string	"__STDC__ 1"
.LASF460:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF895:
	.string	"vmmap"
.LASF865:
	.string	"vtansi_arg_t"
.LASF759:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF846:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF654:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF518:
	.string	"EDEADLK 35"
.LASF418:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF708:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF913:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF527:
	.string	"ECHRNG 44"
.LASF832:
	.string	"ldisc_read_queue"
.LASF904:
	.string	"p_list_link"
.LASF754:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF392:
	.string	"F4 ((uint8_t)(F1 + 3))"
.LASF706:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF555:
	.string	"EMULTIHOP 72"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF737:
	.string	"DBG_USER DBG_MODE(38)"
.LASF753:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF482:
	.string	"TTY_MAJOR 2"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF756:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF822:
	.string	"kt_plink"
.LASF410:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF788:
	.string	"uint32_t"
.LASF998:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF488:
	.string	"EIO 5"
.LASF838:
	.string	"cd_link"
.LASF601:
	.string	"ENOTNAM 118"
.LASF342:
	.string	"__amd64 1"
.LASF951:
	.string	"vterminal_key_pressed"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF666:
	.string	"PROC_MAX_COUNT 65536"
.LASF391:
	.string	"F3 ((uint8_t)(F1 + 2))"
.LASF520:
	.string	"ENOLCK 37"
.LASF896:
	.string	"vmm_list"
.LASF927:
	.string	"KT_RUNNABLE"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF981:
	.string	"vtconsole_newline"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF833:
	.string	"ldisc_buffer"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF939:
	.string	"dbg_panic"
.LASF785:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF885:
	.string	"on_move"
.LASF431:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF429:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF709:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF475:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF732:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF459:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF701:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF742:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF993:
	.string	"equals"
.LASF384:
	.string	"ETX 0x03"
.LASF866:
	.string	"state"
.LASF790:
	.string	"int64_t"
.LASF953:
	.string	"vterminal_init"
.LASF551:
	.string	"EADV 68"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF818:
	.string	"kt_proc"
.LASF607:
	.string	"EMEDIUMTYPE 124"
.LASF455:
	.string	"PAGE_SHIFT_2MB 21"
.LASF516:
	.string	"EDOM 33"
.LASF529:
	.string	"EL3HLT 46"
.LASF589:
	.string	"EISCONN 106"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF834:
	.string	"ldisc_t"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF962:
	.string	"new_ldisc"
.LASF610:
	.string	"EKEYEXPIRED 127"
.LASF639:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF712:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF600:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF900:
	.string	"p_name"
.LASF534:
	.string	"EL2HLT 51"
.LASF905:
	.string	"p_child_link"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF562:
	.string	"ELIBACC 79"
.LASF591:
	.string	"ESHUTDOWN 108"
.LASF621:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF883:
	.string	"cursor"
.LASF635:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF463:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF764:
	.string	"VGACOLOR_BLACK 0X0"
.LASF559:
	.string	"ENOTUNIQ 76"
.LASF793:
	.string	"long unsigned int"
.LASF991:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF862:
	.string	"vtansi_parser_state_t"
.LASF878:
	.string	"height"
.LASF692:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF556:
	.string	"EDOTDOT 73"
.LASF907:
	.string	"p_state"
.LASF776:
	.string	"VGACOLOR_LIGHT_RED 0XC"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
