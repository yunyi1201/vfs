	.file	"fork.c"
	.text
.Ltext0:
	.file 1 "proc/fork.c"
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
	.type	tlb_flush, @function
tlb_flush:
.LFB10:
	.file 4 "include/mm/tlb.h"
	.loc 4 11 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 12 5
	movq	-8(%rbp), %rax
#APP
# 12 "include/mm/tlb.h" 1
	invlpg (%rax)
# 0 "" 2
	.loc 4 13 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	tlb_flush, .-tlb_flush
	.type	tlb_flush_range, @function
tlb_flush_range:
.LFB11:
	.loc 4 20 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB9:
	.loc 4 21 17
	movq	$0, -8(%rbp)
	.loc 4 21 5
	jmp	.L20
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB10:
.LBB11:
	.loc 4 12 5 discriminator 3
	movq	-16(%rbp), %rax
#APP
# 12 "include/mm/tlb.h" 1
	invlpg (%rax)
# 0 "" 2
	.loc 4 13 1 discriminator 3
#NO_APP
	nop
.LBE11:
.LBE10:
	.loc 4 21 36 discriminator 3
	addq	$1, -8(%rbp)
	.loc 4 21 46 discriminator 3
	addq	$4096, -24(%rbp)
.L20:
	.loc 4 21 26 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L21
.LBE9:
	.loc 4 25 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	tlb_flush_range, .-tlb_flush_range
	.type	tlb_flush_all, @function
tlb_flush_all:
.LFB12:
	.loc 4 29 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 31 5
#APP
# 31 "include/mm/tlb.h" 1
	movq %cr3, %rax
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	.loc 4 33 5
	movq	-8(%rbp), %rax
#APP
# 33 "include/mm/tlb.h" 1
	movq %rax, %cr3
# 0 "" 2
	.loc 4 35 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	tlb_flush_all, .-tlb_flush_all
	.type	__atomic_add_unless, @function
__atomic_add_unless:
.LFB13:
	.file 5 "include/util/atomic.h"
	.loc 5 9 1
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
	.loc 5 11 9
	movq	-24(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 5 11 7
	movl	%edx, -4(%rbp)
	.loc 5 12 11
	jmp	.L24
.L26:
	.loc 5 13 11
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L24:
	.loc 5 12 19
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L25
	.loc 5 12 65 discriminator 1
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 5 12 29 discriminator 1
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 5 12 27 discriminator 1
	movl	%eax, -8(%rbp)
	.loc 5 12 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L26
.L25:
	.loc 5 14 12
	movl	-4(%rbp), %eax
	.loc 5 15 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	__atomic_add_unless, .-__atomic_add_unless
	.type	atomic_set, @function
atomic_set:
.LFB14:
	.loc 5 17 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 5 17 56
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 5 17 61
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	atomic_set, .-atomic_set
	.type	atomic_inc, @function
atomic_inc:
.LFB15:
	.loc 5 19 44
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 19 46
	movq	-8(%rbp), %rax
	lock addl	$1, (%rax)
	.loc 5 19 74
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	atomic_inc, .-atomic_inc
	.type	atomic_dec_and_test, @function
atomic_dec_and_test:
.LFB16:
	.loc 5 22 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 23 12
	movq	-8(%rbp), %rdx
	movl	$1, %eax
	negl	%eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	lock xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	.loc 5 23 39
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 5 24 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	atomic_dec_and_test, .-atomic_dec_and_test
	.type	atomic_inc_not_zero, @function
atomic_inc_not_zero:
.LFB17:
	.loc 5 27 1
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
.LBB12:
.LBB13:
	.loc 5 11 9
	movq	-8(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 5 11 7
	movl	%edx, -20(%rbp)
	.loc 5 12 11
	jmp	.L33
.L35:
	.loc 5 13 11
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L33:
	.loc 5 12 19
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L34
	.loc 5 12 65
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 5 12 29
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 5 12 27
	movl	%eax, -24(%rbp)
	.loc 5 12 19
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L35
.L34:
	.loc 5 14 12
	movl	-20(%rbp), %eax
.LBE13:
.LBE12:
	.loc 5 29 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	atomic_inc_not_zero, .-atomic_inc_not_zero
	.type	fork_setup_stack, @function
fork_setup_stack:
.LFB18:
	.loc 1 25 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 29 10
	movq	-32(%rbp), %rax
	.loc 1 28 14
	addq	$65344, %rax
	movq	%rax, -8(%rbp)
	.loc 1 30 25
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 1 30 5
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$176, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL0:
	.loc 1 31 12
	movq	-8(%rbp), %rax
	.loc 1 32 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fork_setup_stack, .-fork_setup_stack
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"C%ld P%ld "
.LC2:
	.string	"proc/fork.c"
.LC3:
	.string	"%s:%d %s(): "
	.align 8
.LC4:
	.string	"Created forked process \"%s\" P%d; vmmap = 0x%p\n"
.LC5:
	.string	"\033[0m"
	.text
	.globl	do_fork
	.type	do_fork, @function
do_fork:
.LFB19:
	.loc 1 59 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 61 40
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	.loc 1 61 21
	movq	%rax, %rdi
	movabsq	$proc_create, %rax
	call	*%rax
.LVL1:
	movq	%rax, -8(%rbp)
	.loc 1 62 8
	cmpq	$0, -8(%rbp)
	jne	.L41
	.loc 1 64 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$do_fork, %rax
	call	*%rax
.LVL2:
	.loc 1 65 16
	movq	$-12, %rax
	jmp	.L42
.L41:
	.loc 1 68 23
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$kthread_clone, %rax
	call	*%rax
.LVL3:
	movq	%rax, -16(%rbp)
	.loc 1 69 8
	cmpq	$0, -16(%rbp)
	jne	.L43
	.loc 1 71 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$proc_destroy, %rax
	call	*%rax
.LVL4:
	.loc 1 72 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$do_fork, %rax
	call	*%rax
.LVL5:
	.loc 1 73 16
	movq	$-12, %rax
	jmp	.L42
.L43:
	.loc 1 76 19
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 1 77 5
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$264, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL6:
	.loc 1 79 27
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	648(%rax), %rdx
	.loc 1 79 18
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	.loc 1 80 33
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movq	656(%rax), %rdx
	.loc 1 80 24
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	.loc 1 82 17
	movq	-40(%rbp), %rax
	movq	$0, 80(%rax)
	.loc 1 83 32
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	.loc 1 83 25
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 84 26
	movabsq	$userland_entry, %rdx
	.loc 1 84 24
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 85 69
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 85 26
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$fork_setup_stack, %rax
	call	*%rax
.LVL7:
	.loc 1 85 24
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 87 27
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	.loc 1 87 5
	movq	352(%rax), %rax
	movabsq	$140737488355328, %rdx
	movl	$4194304, %esi
	movq	%rax, %rdi
	movabsq	$pt_unmap_range, %rax
	call	*%rax
.LVL8:
.LBB14:
.LBB15:
	.loc 4 31 5
#APP
# 31 "include/mm/tlb.h" 1
	movq %cr3, %rax
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	.loc 4 33 5
	movq	-24(%rbp), %rax
#APP
# 33 "include/mm/tlb.h" 1
	movq %rax, %cr3
# 0 "" 2
	.loc 4 35 1
#NO_APP
	nop
.LBE15:
.LBE14:
	.loc 1 90 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	je	.L44
	.loc 1 90 5 is_stmt 0 discriminator 1
	movl	$1024, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL9:
	movq	%rax, %rsi
	movabsq	$.LC0, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL10:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L45
	.loc 1 90 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L46
.L45:
	.loc 1 90 5 discriminator 3
	movq	$-1, %rax
.L46:
	.loc 1 90 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL11:
	movabsq	$__func__.0, %rax
	movq	%rax, %rcx
	movl	$90, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL12:
	movq	-8(%rbp), %rax
	movq	664(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, %rcx
	movl	%eax, %edx
	movabsq	$.LC4, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL13:
	movabsq	$.LC5, %rax
	movq	%rax, %rsi
	movabsq	$.LC0, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL14:
.L44:
	.loc 1 92 5 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_make_runnable, %rax
	call	*%rax
.LVL15:
	.loc 1 94 17
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
.L42:
	.loc 1 97 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	do_fork, .-do_fork
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"do_fork"
	.text
.Letext0:
	.file 6 "include/types.h"
	.file 7 "include/util/list.h"
	.file 8 "include/vm/vmmap.h"
	.file 9 "include/proc/proc.h"
	.file 10 "include/mm/mobj.h"
	.file 11 "include/mm/pagetable.h"
	.file 12 "include/proc/context.h"
	.file 13 "include/proc/sched.h"
	.file 14 "include/proc/core.h"
	.file 15 "include/proc/kthread.h"
	.file 16 "include/fs/vnode.h"
	.file 17 "include/globals.h"
	.file 18 "include/proc/kmutex.h"
	.file 19 "include/mm/pframe.h"
	.file 20 "include/util/btree.h"
	.file 21 "include/drivers/blockdev.h"
	.file 22 "include/drivers/chardev.h"
	.file 23 "include/api/exec.h"
	.file 24 "include/util/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15f9
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF976
	.byte	0xc
	.long	.LASF977
	.long	.LASF978
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF747
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF748
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF749
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF750
	.uleb128 0x3
	.long	.LASF751
	.byte	0x6
	.byte	0xd
	.byte	0x14
	.long	0x59
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF752
	.byte	0x6
	.byte	0xe
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF753
	.uleb128 0x3
	.long	.LASF754
	.byte	0x6
	.byte	0x10
	.byte	0x15
	.long	0x7f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF755
	.uleb128 0x3
	.long	.LASF756
	.byte	0x6
	.byte	0x11
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF757
	.uleb128 0x3
	.long	.LASF758
	.byte	0x6
	.byte	0x13
	.byte	0x17
	.long	0x92
	.uleb128 0x3
	.long	.LASF759
	.byte	0x6
	.byte	0x14
	.byte	0x12
	.long	0x86
	.uleb128 0x3
	.long	.LASF760
	.byte	0x6
	.byte	0x15
	.byte	0x11
	.long	0x73
	.uleb128 0x3
	.long	.LASF761
	.byte	0x6
	.byte	0x18
	.byte	0x11
	.long	0x4d
	.uleb128 0x3
	.long	.LASF762
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.long	0x60
	.uleb128 0x3
	.long	.LASF763
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.long	0x60
	.uleb128 0x3
	.long	.LASF764
	.byte	0x6
	.byte	0x1c
	.byte	0x12
	.long	0x60
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF769
	.byte	0x10
	.byte	0x7
	.byte	0x5e
	.byte	0x10
	.long	0x117
	.uleb128 0x7
	.long	.LASF765
	.byte	0x7
	.byte	0x60
	.byte	0x12
	.long	0x117
	.byte	0
	.uleb128 0x7
	.long	.LASF766
	.byte	0x7
	.byte	0x61
	.byte	0x12
	.long	0x117
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xef
	.uleb128 0x3
	.long	.LASF767
	.byte	0x7
	.byte	0x62
	.byte	0x3
	.long	0xef
	.uleb128 0x3
	.long	.LASF768
	.byte	0x7
	.byte	0x62
	.byte	0xb
	.long	0xef
	.uleb128 0x6
	.long	.LASF770
	.byte	0x18
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.long	0x15d
	.uleb128 0x7
	.long	.LASF771
	.byte	0x8
	.byte	0x10
	.byte	0xc
	.long	0x11d
	.byte	0
	.uleb128 0x7
	.long	.LASF772
	.byte	0x8
	.byte	0x11
	.byte	0x12
	.long	0x24a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF773
	.value	0x2a0
	.byte	0x9
	.byte	0x1b
	.byte	0x10
	.long	0x24a
	.uleb128 0x7
	.long	.LASF774
	.byte	0x9
	.byte	0x1d
	.byte	0xb
	.long	0xbd
	.byte	0
	.uleb128 0x7
	.long	.LASF775
	.byte	0x9
	.byte	0x1e
	.byte	0xa
	.long	0x514
	.byte	0x4
	.uleb128 0xa
	.long	.LASF776
	.byte	0x9
	.byte	0x20
	.byte	0xc
	.long	0x11d
	.value	0x108
	.uleb128 0xa
	.long	.LASF777
	.byte	0x9
	.byte	0x21
	.byte	0xc
	.long	0x11d
	.value	0x118
	.uleb128 0xa
	.long	.LASF778
	.byte	0x9
	.byte	0x22
	.byte	0x12
	.long	0x24a
	.value	0x128
	.uleb128 0xa
	.long	.LASF779
	.byte	0x9
	.byte	0x24
	.byte	0x11
	.long	0x129
	.value	0x130
	.uleb128 0xa
	.long	.LASF780
	.byte	0x9
	.byte	0x25
	.byte	0x11
	.long	0x129
	.value	0x140
	.uleb128 0xa
	.long	.LASF781
	.byte	0x9
	.byte	0x27
	.byte	0xa
	.long	0x7f
	.value	0x150
	.uleb128 0xa
	.long	.LASF782
	.byte	0x9
	.byte	0x28
	.byte	0x12
	.long	0x508
	.value	0x158
	.uleb128 0xa
	.long	.LASF783
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.long	0x34c
	.value	0x160
	.uleb128 0xa
	.long	.LASF784
	.byte	0x9
	.byte	0x31
	.byte	0xf
	.long	0x392
	.value	0x168
	.uleb128 0xa
	.long	.LASF785
	.byte	0x9
	.byte	0x34
	.byte	0x12
	.long	0x524
	.value	0x180
	.uleb128 0xa
	.long	.LASF786
	.byte	0x9
	.byte	0x35
	.byte	0x13
	.long	0x5ec
	.value	0x280
	.uleb128 0xa
	.long	.LASF787
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.long	0xed
	.value	0x288
	.uleb128 0xa
	.long	.LASF788
	.byte	0x9
	.byte	0x46
	.byte	0xb
	.long	0xed
	.value	0x290
	.uleb128 0xa
	.long	.LASF789
	.byte	0x9
	.byte	0x47
	.byte	0x13
	.long	0x250
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x15d
	.uleb128 0x8
	.byte	0x8
	.long	0x135
	.uleb128 0x6
	.long	.LASF790
	.byte	0x78
	.byte	0xa
	.byte	0x21
	.byte	0x10
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF791
	.byte	0xa
	.byte	0x23
	.byte	0xa
	.long	0x7f
	.byte	0
	.uleb128 0x7
	.long	.LASF792
	.byte	0xa
	.byte	0x24
	.byte	0x15
	.long	0x8df
	.byte	0x8
	.uleb128 0x7
	.long	.LASF793
	.byte	0xa
	.byte	0x25
	.byte	0xe
	.long	0x835
	.byte	0x28
	.uleb128 0x7
	.long	.LASF794
	.byte	0xa
	.byte	0x26
	.byte	0xc
	.long	0x11d
	.byte	0x30
	.uleb128 0x7
	.long	.LASF795
	.byte	0xa
	.byte	0x27
	.byte	0xe
	.long	0x7c1
	.byte	0x40
	.uleb128 0x7
	.long	.LASF796
	.byte	0xa
	.byte	0x28
	.byte	0x13
	.long	0x97f
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x256
	.uleb128 0xb
	.string	"pt"
	.value	0x1000
	.byte	0xb
	.byte	0x18
	.byte	0x10
	.long	0x2d3
	.uleb128 0x7
	.long	.LASF797
	.byte	0xb
	.byte	0x1a
	.byte	0xf
	.long	0x2d3
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x99
	.long	0x2e4
	.uleb128 0xd
	.long	0x92
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF798
	.byte	0xb
	.byte	0x1b
	.byte	0x16
	.long	0x2b8
	.uleb128 0x6
	.long	.LASF799
	.byte	0x30
	.byte	0xc
	.byte	0xd
	.byte	0x10
	.long	0x34c
	.uleb128 0x7
	.long	.LASF800
	.byte	0xc
	.byte	0xf
	.byte	0xf
	.long	0x99
	.byte	0
	.uleb128 0x7
	.long	.LASF801
	.byte	0xc
	.byte	0x10
	.byte	0xf
	.long	0x99
	.byte	0x8
	.uleb128 0x7
	.long	.LASF802
	.byte	0xc
	.byte	0x11
	.byte	0xf
	.long	0x99
	.byte	0x10
	.uleb128 0x7
	.long	.LASF803
	.byte	0xc
	.byte	0x14
	.byte	0xa
	.long	0x34c
	.byte	0x18
	.uleb128 0x7
	.long	.LASF804
	.byte	0xc
	.byte	0x18
	.byte	0xf
	.long	0x99
	.byte	0x20
	.uleb128 0x7
	.long	.LASF805
	.byte	0xc
	.byte	0x19
	.byte	0xc
	.long	0xa5
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e4
	.uleb128 0x3
	.long	.LASF806
	.byte	0xc
	.byte	0x1a
	.byte	0x3
	.long	0x2f0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF807
	.uleb128 0xe
	.long	0x35e
	.uleb128 0x6
	.long	.LASF808
	.byte	0x18
	.byte	0xd
	.byte	0xf
	.byte	0x10
	.long	0x392
	.uleb128 0x7
	.long	.LASF809
	.byte	0xd
	.byte	0x11
	.byte	0xc
	.long	0x11d
	.byte	0
	.uleb128 0x7
	.long	.LASF810
	.byte	0xd
	.byte	0x12
	.byte	0xc
	.long	0xa5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF811
	.byte	0xd
	.byte	0x13
	.byte	0x3
	.long	0x36a
	.uleb128 0x6
	.long	.LASF812
	.byte	0x48
	.byte	0xe
	.byte	0x7
	.byte	0x10
	.long	0x3e0
	.uleb128 0x7
	.long	.LASF813
	.byte	0xe
	.byte	0x9
	.byte	0xa
	.long	0x7f
	.byte	0
	.uleb128 0x7
	.long	.LASF814
	.byte	0xe
	.byte	0xa
	.byte	0xf
	.long	0x352
	.byte	0x8
	.uleb128 0x7
	.long	.LASF815
	.byte	0xe
	.byte	0xc
	.byte	0x10
	.long	0x3e0
	.byte	0x38
	.uleb128 0x7
	.long	.LASF816
	.byte	0xe
	.byte	0xe
	.byte	0xf
	.long	0x99
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x392
	.uleb128 0x3
	.long	.LASF817
	.byte	0xe
	.byte	0xf
	.byte	0x3
	.long	0x39e
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.long	0x425
	.uleb128 0x10
	.long	.LASF818
	.byte	0
	.uleb128 0x10
	.long	.LASF819
	.byte	0x1
	.uleb128 0x10
	.long	.LASF820
	.byte	0x2
	.uleb128 0x10
	.long	.LASF821
	.byte	0x3
	.uleb128 0x10
	.long	.LASF822
	.byte	0x4
	.uleb128 0x10
	.long	.LASF823
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF824
	.byte	0xf
	.byte	0x1c
	.byte	0x3
	.long	0x3f2
	.uleb128 0x6
	.long	.LASF825
	.byte	0xa0
	.byte	0xf
	.byte	0x21
	.byte	0x10
	.long	0x4db
	.uleb128 0x7
	.long	.LASF826
	.byte	0xf
	.byte	0x23
	.byte	0xf
	.long	0x352
	.byte	0
	.uleb128 0x7
	.long	.LASF827
	.byte	0xf
	.byte	0x24
	.byte	0xb
	.long	0x4db
	.byte	0x30
	.uleb128 0x7
	.long	.LASF828
	.byte	0xf
	.byte	0x25
	.byte	0xb
	.long	0xed
	.byte	0x38
	.uleb128 0x7
	.long	.LASF829
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.long	0x7f
	.byte	0x40
	.uleb128 0x7
	.long	.LASF830
	.byte	0xf
	.byte	0x27
	.byte	0x12
	.long	0x24a
	.byte	0x48
	.uleb128 0x7
	.long	.LASF831
	.byte	0xf
	.byte	0x29
	.byte	0xa
	.long	0x7f
	.byte	0x50
	.uleb128 0x7
	.long	.LASF832
	.byte	0xf
	.byte	0x2a
	.byte	0x10
	.long	0x3e0
	.byte	0x58
	.uleb128 0x7
	.long	.LASF833
	.byte	0xf
	.byte	0x2b
	.byte	0x15
	.long	0x425
	.byte	0x60
	.uleb128 0x7
	.long	.LASF834
	.byte	0xf
	.byte	0x2d
	.byte	0x11
	.long	0x129
	.byte	0x68
	.uleb128 0x7
	.long	.LASF835
	.byte	0xf
	.byte	0x2f
	.byte	0x9
	.long	0x129
	.byte	0x78
	.uleb128 0x7
	.long	.LASF836
	.byte	0xf
	.byte	0x31
	.byte	0xc
	.long	0x11d
	.byte	0x88
	.uleb128 0x7
	.long	.LASF837
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.long	0x86
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x35e
	.uleb128 0x3
	.long	.LASF838
	.byte	0xf
	.byte	0x35
	.byte	0x3
	.long	0x431
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.long	0x508
	.uleb128 0x10
	.long	.LASF839
	.byte	0
	.uleb128 0x10
	.long	.LASF840
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF841
	.byte	0x9
	.byte	0x18
	.byte	0x3
	.long	0x4ed
	.uleb128 0xc
	.long	0x35e
	.long	0x524
	.uleb128 0x11
	.long	0x92
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x534
	.long	0x534
	.uleb128 0x11
	.long	0x92
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x53a
	.uleb128 0x12
	.long	.LASF941
	.byte	0x1
	.uleb128 0x6
	.long	.LASF842
	.byte	0xd8
	.byte	0x10
	.byte	0xb1
	.byte	0x10
	.long	0x5ec
	.uleb128 0x7
	.long	.LASF843
	.byte	0x10
	.byte	0xb7
	.byte	0x17
	.long	0xe6a
	.byte	0
	.uleb128 0x7
	.long	.LASF844
	.byte	0x10
	.byte	0xbe
	.byte	0x10
	.long	0xe75
	.byte	0x8
	.uleb128 0x7
	.long	.LASF845
	.byte	0x10
	.byte	0xce
	.byte	0x11
	.long	0x256
	.byte	0x10
	.uleb128 0x7
	.long	.LASF846
	.byte	0x10
	.byte	0xd5
	.byte	0xb
	.long	0xd5
	.byte	0x88
	.uleb128 0x7
	.long	.LASF847
	.byte	0x10
	.byte	0xda
	.byte	0x9
	.long	0x59
	.byte	0x8c
	.uleb128 0x7
	.long	.LASF848
	.byte	0x10
	.byte	0xe2
	.byte	0xc
	.long	0xa5
	.byte	0x90
	.uleb128 0x7
	.long	.LASF849
	.byte	0x10
	.byte	0xe8
	.byte	0xb
	.long	0xed
	.byte	0x98
	.uleb128 0x7
	.long	.LASF850
	.byte	0x10
	.byte	0xee
	.byte	0xd
	.long	0xe1
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF851
	.byte	0x10
	.byte	0xf6
	.byte	0x9
	.long	0x59
	.byte	0xa4
	.uleb128 0x7
	.long	.LASF852
	.byte	0x10
	.byte	0xfb
	.byte	0xf
	.long	0x392
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF853
	.byte	0x10
	.value	0x100
	.byte	0x7
	.long	0xe48
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF854
	.byte	0x10
	.value	0x103
	.byte	0x11
	.long	0x129
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x540
	.uleb128 0x3
	.long	.LASF855
	.byte	0x9
	.byte	0x49
	.byte	0x3
	.long	0x15d
	.uleb128 0x14
	.long	.LASF856
	.byte	0x11
	.byte	0x9
	.byte	0xf
	.long	0x3e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF857
	.byte	0x11
	.byte	0xa
	.byte	0x10
	.long	0x61a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x5f2
	.uleb128 0x14
	.long	.LASF858
	.byte	0x11
	.byte	0xb
	.byte	0x13
	.long	0x62e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x4e1
	.uleb128 0x6
	.long	.LASF859
	.byte	0xb0
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.long	0x760
	.uleb128 0x7
	.long	.LASF860
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0x86
	.byte	0
	.uleb128 0x7
	.long	.LASF861
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.long	0x86
	.byte	0x8
	.uleb128 0x7
	.long	.LASF862
	.byte	0x2
	.byte	0x24
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0x7
	.long	.LASF863
	.byte	0x2
	.byte	0x25
	.byte	0xe
	.long	0x86
	.byte	0x18
	.uleb128 0x7
	.long	.LASF864
	.byte	0x2
	.byte	0x26
	.byte	0xe
	.long	0x86
	.byte	0x20
	.uleb128 0x7
	.long	.LASF865
	.byte	0x2
	.byte	0x27
	.byte	0xe
	.long	0x86
	.byte	0x28
	.uleb128 0x7
	.long	.LASF866
	.byte	0x2
	.byte	0x28
	.byte	0xe
	.long	0x86
	.byte	0x30
	.uleb128 0x7
	.long	.LASF867
	.byte	0x2
	.byte	0x29
	.byte	0xe
	.long	0x86
	.byte	0x38
	.uleb128 0x7
	.long	.LASF868
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.long	0x86
	.byte	0x40
	.uleb128 0x7
	.long	.LASF869
	.byte	0x2
	.byte	0x2b
	.byte	0xe
	.long	0x86
	.byte	0x48
	.uleb128 0x7
	.long	.LASF870
	.byte	0x2
	.byte	0x2c
	.byte	0xe
	.long	0x86
	.byte	0x50
	.uleb128 0x7
	.long	.LASF871
	.byte	0x2
	.byte	0x2d
	.byte	0xe
	.long	0x86
	.byte	0x58
	.uleb128 0x7
	.long	.LASF872
	.byte	0x2
	.byte	0x2e
	.byte	0xe
	.long	0x86
	.byte	0x60
	.uleb128 0x7
	.long	.LASF873
	.byte	0x2
	.byte	0x2f
	.byte	0xe
	.long	0x86
	.byte	0x68
	.uleb128 0x7
	.long	.LASF874
	.byte	0x2
	.byte	0x30
	.byte	0xe
	.long	0x86
	.byte	0x70
	.uleb128 0x7
	.long	.LASF875
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.long	0x86
	.byte	0x78
	.uleb128 0x7
	.long	.LASF876
	.byte	0x2
	.byte	0x36
	.byte	0xe
	.long	0x86
	.byte	0x80
	.uleb128 0x7
	.long	.LASF877
	.byte	0x2
	.byte	0x37
	.byte	0xe
	.long	0x86
	.byte	0x88
	.uleb128 0x7
	.long	.LASF878
	.byte	0x2
	.byte	0x38
	.byte	0xe
	.long	0x86
	.byte	0x90
	.uleb128 0x7
	.long	.LASF879
	.byte	0x2
	.byte	0x39
	.byte	0xe
	.long	0x86
	.byte	0x98
	.uleb128 0x7
	.long	.LASF880
	.byte	0x2
	.byte	0x3a
	.byte	0xe
	.long	0x86
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF881
	.byte	0x2
	.byte	0x3b
	.byte	0xe
	.long	0x86
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.long	.LASF882
	.byte	0x2
	.byte	0x3c
	.byte	0xa
	.long	0x634
	.uleb128 0xe
	.long	0x760
	.uleb128 0x14
	.long	.LASF883
	.byte	0x3
	.byte	0x8c
	.byte	0x11
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x785
	.uleb128 0x15
	.uleb128 0x6
	.long	.LASF884
	.byte	0x30
	.byte	0x12
	.byte	0xa
	.byte	0x10
	.long	0x7bb
	.uleb128 0x7
	.long	.LASF885
	.byte	0x12
	.byte	0xc
	.byte	0xf
	.long	0x392
	.byte	0
	.uleb128 0x7
	.long	.LASF886
	.byte	0x12
	.byte	0xd
	.byte	0x15
	.long	0x7bb
	.byte	0x18
	.uleb128 0x7
	.long	.LASF887
	.byte	0x12
	.byte	0xe
	.byte	0x11
	.long	0x129
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x431
	.uleb128 0x3
	.long	.LASF888
	.byte	0x12
	.byte	0xf
	.byte	0x3
	.long	0x786
	.uleb128 0x6
	.long	.LASF889
	.byte	0x60
	.byte	0x13
	.byte	0x7
	.byte	0x10
	.long	0x829
	.uleb128 0x7
	.long	.LASF890
	.byte	0x13
	.byte	0x9
	.byte	0xc
	.long	0xa5
	.byte	0
	.uleb128 0x7
	.long	.LASF891
	.byte	0x13
	.byte	0xa
	.byte	0xc
	.long	0xa5
	.byte	0x8
	.uleb128 0x7
	.long	.LASF892
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.long	0xed
	.byte	0x10
	.uleb128 0x7
	.long	.LASF893
	.byte	0x13
	.byte	0xc
	.byte	0xa
	.long	0x7f
	.byte	0x18
	.uleb128 0x7
	.long	.LASF894
	.byte	0x13
	.byte	0xd
	.byte	0xe
	.long	0x7c1
	.byte	0x20
	.uleb128 0x7
	.long	.LASF895
	.byte	0x13
	.byte	0xe
	.byte	0x11
	.long	0x129
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.long	.LASF896
	.byte	0x13
	.byte	0xf
	.byte	0x3
	.long	0x7cd
	.uleb128 0x3
	.long	.LASF897
	.byte	0x5
	.byte	0x4
	.byte	0xd
	.long	0x59
	.uleb128 0x6
	.long	.LASF898
	.byte	0x60
	.byte	0x14
	.byte	0x26
	.byte	0x10
	.long	0x89d
	.uleb128 0x7
	.long	.LASF899
	.byte	0x14
	.byte	0x28
	.byte	0x12
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.long	.LASF900
	.byte	0x14
	.byte	0x29
	.byte	0x12
	.long	0x6c
	.byte	0x4
	.uleb128 0x7
	.long	.LASF901
	.byte	0x14
	.byte	0x2a
	.byte	0x9
	.long	0x59
	.byte	0x8
	.uleb128 0x7
	.long	.LASF902
	.byte	0x14
	.byte	0x2b
	.byte	0xe
	.long	0x89d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF903
	.byte	0x14
	.byte	0x2c
	.byte	0xb
	.long	0x8ad
	.byte	0x28
	.uleb128 0x7
	.long	.LASF904
	.byte	0x14
	.byte	0x2d
	.byte	0x18
	.long	0x8bd
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x86
	.long	0x8ad
	.uleb128 0x11
	.long	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xed
	.long	0x8bd
	.uleb128 0x11
	.long	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0x8cd
	.long	0x8cd
	.uleb128 0x11
	.long	0x92
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x841
	.uleb128 0x3
	.long	.LASF905
	.byte	0x14
	.byte	0x2e
	.byte	0x3
	.long	0x841
	.uleb128 0x6
	.long	.LASF906
	.byte	0x20
	.byte	0xa
	.byte	0x15
	.byte	0x10
	.long	0x921
	.uleb128 0x7
	.long	.LASF907
	.byte	0xa
	.byte	0x17
	.byte	0xc
	.long	0x94c
	.byte	0
	.uleb128 0x7
	.long	.LASF908
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x967
	.byte	0x8
	.uleb128 0x7
	.long	.LASF909
	.byte	0xa
	.byte	0x1c
	.byte	0xc
	.long	0x967
	.byte	0x10
	.uleb128 0x7
	.long	.LASF910
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x979
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0x940
	.uleb128 0x17
	.long	0x2b2
	.uleb128 0x17
	.long	0x86
	.uleb128 0x17
	.long	0x7f
	.uleb128 0x17
	.long	0x940
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x946
	.uleb128 0x8
	.byte	0x8
	.long	0x7cd
	.uleb128 0x8
	.byte	0x8
	.long	0x921
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0x967
	.uleb128 0x17
	.long	0x2b2
	.uleb128 0x17
	.long	0x946
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x952
	.uleb128 0x18
	.byte	0x1
	.long	0x979
	.uleb128 0x17
	.long	0x2b2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x96d
	.uleb128 0x8
	.byte	0x8
	.long	0x8d3
	.uleb128 0x6
	.long	.LASF911
	.byte	0x20
	.byte	0x15
	.byte	0x17
	.byte	0x10
	.long	0x9ba
	.uleb128 0x7
	.long	.LASF912
	.byte	0x15
	.byte	0x1a
	.byte	0xd
	.long	0xe1
	.byte	0
	.uleb128 0x7
	.long	.LASF913
	.byte	0x15
	.byte	0x1c
	.byte	0x1a
	.long	0x9e2
	.byte	0x8
	.uleb128 0x7
	.long	.LASF914
	.byte	0x15
	.byte	0x1f
	.byte	0x11
	.long	0x129
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF915
	.byte	0x10
	.byte	0x15
	.byte	0x22
	.byte	0x10
	.long	0x9e2
	.uleb128 0x7
	.long	.LASF916
	.byte	0x15
	.byte	0x2e
	.byte	0xc
	.long	0xa19
	.byte	0
	.uleb128 0x7
	.long	.LASF917
	.byte	0x15
	.byte	0x3b
	.byte	0xc
	.long	0xa44
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9ba
	.uleb128 0x3
	.long	.LASF918
	.byte	0x15
	.byte	0x20
	.byte	0x3
	.long	0x985
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xa13
	.uleb128 0x17
	.long	0xa13
	.uleb128 0x17
	.long	0x4db
	.uleb128 0x17
	.long	0xc9
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9e8
	.uleb128 0x8
	.byte	0x8
	.long	0x9f4
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xa3e
	.uleb128 0x17
	.long	0xa13
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xc9
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x365
	.uleb128 0x8
	.byte	0x8
	.long	0xa1f
	.uleb128 0x6
	.long	.LASF919
	.byte	0x20
	.byte	0x16
	.byte	0xc
	.byte	0x10
	.long	0xa7f
	.uleb128 0x7
	.long	.LASF920
	.byte	0x16
	.byte	0xe
	.byte	0xd
	.long	0xe1
	.byte	0
	.uleb128 0x7
	.long	.LASF921
	.byte	0x16
	.byte	0xf
	.byte	0x19
	.long	0xace
	.byte	0x8
	.uleb128 0x7
	.long	.LASF922
	.byte	0x16
	.byte	0x10
	.byte	0x11
	.long	0x129
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF923
	.byte	0x28
	.byte	0x16
	.byte	0x13
	.byte	0x10
	.long	0xace
	.uleb128 0x7
	.long	.LASF924
	.byte	0x16
	.byte	0x15
	.byte	0xf
	.long	0xb05
	.byte	0
	.uleb128 0x7
	.long	.LASF925
	.byte	0x16
	.byte	0x17
	.byte	0xf
	.long	0xb2a
	.byte	0x8
	.uleb128 0x7
	.long	.LASF926
	.byte	0x16
	.byte	0x19
	.byte	0xc
	.long	0xb4b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF908
	.byte	0x16
	.byte	0x1b
	.byte	0xc
	.long	0xb66
	.byte	0x18
	.uleb128 0x7
	.long	.LASF909
	.byte	0x16
	.byte	0x1d
	.byte	0xc
	.long	0xb66
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa7f
	.uleb128 0x3
	.long	.LASF927
	.byte	0x16
	.byte	0x11
	.byte	0x3
	.long	0xa4a
	.uleb128 0x16
	.byte	0x1
	.long	0xb1
	.long	0xaff
	.uleb128 0x17
	.long	0xaff
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0xed
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xad4
	.uleb128 0x8
	.byte	0x8
	.long	0xae0
	.uleb128 0x16
	.byte	0x1
	.long	0xb1
	.long	0xb2a
	.uleb128 0x17
	.long	0xaff
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x77f
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb0b
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xb45
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xb45
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2b2
	.uleb128 0x8
	.byte	0x8
	.long	0xb30
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xb66
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x946
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb51
	.uleb128 0x6
	.long	.LASF928
	.byte	0x90
	.byte	0x10
	.byte	0x1d
	.byte	0x10
	.long	0xc64
	.uleb128 0x7
	.long	.LASF924
	.byte	0x10
	.byte	0x2b
	.byte	0xf
	.long	0xc83
	.byte	0
	.uleb128 0x7
	.long	.LASF925
	.byte	0x10
	.byte	0x35
	.byte	0xf
	.long	0xca8
	.byte	0x8
	.uleb128 0x7
	.long	.LASF926
	.byte	0x10
	.byte	0x3e
	.byte	0xc
	.long	0xb4b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF929
	.byte	0x10
	.byte	0x48
	.byte	0xc
	.long	0xcdd
	.byte	0x18
	.uleb128 0x7
	.long	.LASF930
	.byte	0x10
	.byte	0x51
	.byte	0xc
	.long	0xd02
	.byte	0x20
	.uleb128 0x7
	.long	.LASF931
	.byte	0x10
	.byte	0x58
	.byte	0xc
	.long	0xd27
	.byte	0x28
	.uleb128 0x7
	.long	.LASF932
	.byte	0x10
	.byte	0x5f
	.byte	0xc
	.long	0xd47
	.byte	0x30
	.uleb128 0x7
	.long	.LASF933
	.byte	0x10
	.byte	0x64
	.byte	0xc
	.long	0xd76
	.byte	0x38
	.uleb128 0x7
	.long	.LASF934
	.byte	0x10
	.byte	0x6f
	.byte	0xc
	.long	0xd02
	.byte	0x40
	.uleb128 0x7
	.long	.LASF935
	.byte	0x10
	.byte	0x77
	.byte	0xc
	.long	0xd47
	.byte	0x48
	.uleb128 0x7
	.long	.LASF936
	.byte	0x10
	.byte	0x81
	.byte	0xf
	.long	0xda2
	.byte	0x50
	.uleb128 0x7
	.long	.LASF937
	.byte	0x10
	.byte	0x89
	.byte	0xc
	.long	0xdc9
	.byte	0x58
	.uleb128 0x7
	.long	.LASF938
	.byte	0x10
	.byte	0x8f
	.byte	0xc
	.long	0xde4
	.byte	0x60
	.uleb128 0x7
	.long	.LASF939
	.byte	0x10
	.byte	0x97
	.byte	0xc
	.long	0xde4
	.byte	0x68
	.uleb128 0x7
	.long	.LASF907
	.byte	0x10
	.byte	0x99
	.byte	0xc
	.long	0xe15
	.byte	0x70
	.uleb128 0x7
	.long	.LASF908
	.byte	0x10
	.byte	0xa1
	.byte	0xc
	.long	0xe30
	.byte	0x78
	.uleb128 0x7
	.long	.LASF909
	.byte	0x10
	.byte	0xa8
	.byte	0xc
	.long	0xe30
	.byte	0x80
	.uleb128 0x7
	.long	.LASF940
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0xe42
	.byte	0x88
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	0xb1
	.long	0xc83
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0xed
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc64
	.uleb128 0x16
	.byte	0x1
	.long	0xb1
	.long	0xca8
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x77f
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc89
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xcd7
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x59
	.uleb128 0x17
	.long	0xe1
	.uleb128 0x17
	.long	0xcd7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5ec
	.uleb128 0x8
	.byte	0x8
	.long	0xcae
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xd02
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0xcd7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xce3
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xd27
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x5ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd08
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xd47
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd2d
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xd76
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa3e
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd4d
	.uleb128 0x16
	.byte	0x1
	.long	0xb1
	.long	0xd96
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0xd96
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd9c
	.uleb128 0x12
	.long	.LASF942
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xd7c
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xdbd
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xdbd
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdc3
	.uleb128 0x12
	.long	.LASF937
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xda8
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xde4
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0x534
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdcf
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xe09
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xa5
	.uleb128 0x17
	.long	0x7f
	.uleb128 0x17
	.long	0xe09
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe0f
	.uleb128 0x8
	.byte	0x8
	.long	0x829
	.uleb128 0x8
	.byte	0x8
	.long	0xdea
	.uleb128 0x16
	.byte	0x1
	.long	0x7f
	.long	0xe30
	.uleb128 0x17
	.long	0x5ec
	.uleb128 0x17
	.long	0xe0f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe1b
	.uleb128 0x18
	.byte	0x1
	.long	0xe42
	.uleb128 0x17
	.long	0x5ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe36
	.uleb128 0x19
	.byte	0x8
	.byte	0x10
	.byte	0xfd
	.byte	0x5
	.long	0xe6a
	.uleb128 0x1a
	.long	.LASF919
	.byte	0x10
	.byte	0xfe
	.byte	0x14
	.long	0xaff
	.uleb128 0x1a
	.long	.LASF911
	.byte	0x10
	.byte	0xff
	.byte	0x15
	.long	0xa13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb6c
	.uleb128 0x1b
	.string	"fs"
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xe70
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF943
	.byte	0xd
	.byte	0x3d
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xe90
	.uleb128 0x17
	.long	0x7bb
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF944
	.byte	0x3
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xea6
	.uleb128 0x17
	.long	0x4db
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF949
	.byte	0x3
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0xa3e
	.byte	0x1
	.long	0xebf
	.uleb128 0x17
	.long	0x86
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF945
	.byte	0xb
	.byte	0x5c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xede
	.uleb128 0x17
	.long	0x34c
	.uleb128 0x17
	.long	0x99
	.uleb128 0x17
	.long	0x99
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF946
	.byte	0x17
	.byte	0xc
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xef3
	.uleb128 0x17
	.long	0x634
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF947
	.byte	0x7
	.byte	0x9c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xf0d
	.uleb128 0x17
	.long	0xf0d
	.uleb128 0x17
	.long	0xf13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11d
	.uleb128 0x8
	.byte	0x8
	.long	0x129
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF948
	.byte	0x9
	.byte	0x6b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xf2e
	.uleb128 0x17
	.long	0x61a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF950
	.byte	0xf
	.byte	0x54
	.byte	0xc
	.byte	0x1
	.long	0x62e
	.byte	0x1
	.long	0xf47
	.uleb128 0x17
	.long	0x62e
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF951
	.byte	0x9
	.byte	0x64
	.byte	0x9
	.byte	0x1
	.long	0x61a
	.byte	0x1
	.long	0xf60
	.uleb128 0x17
	.long	0xa3e
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF952
	.byte	0x18
	.byte	0x40
	.byte	0x7
	.byte	0x1
	.long	0xed
	.byte	0x1
	.long	0xf83
	.uleb128 0x17
	.long	0xed
	.uleb128 0x17
	.long	0x77f
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF979
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x10d2
	.uleb128 0x20
	.long	.LASF859
	.byte	0x1
	.byte	0x3a
	.byte	0x1b
	.long	0x10d2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF953
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.long	0x61a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF954
	.byte	0x1
	.byte	0x44
	.byte	0x10
	.long	0x62e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF980
	.long	0x10e8
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x23
	.long	0x12ad
	.quad	.LBB14
	.quad	.LBE14
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.long	0x100e
	.uleb128 0x24
	.long	0x12ba
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LVL1
	.long	0xf47
	.uleb128 0x25
	.quad	.LVL2
	.long	0xf83
	.uleb128 0x25
	.quad	.LVL3
	.long	0xf2e
	.uleb128 0x25
	.quad	.LVL4
	.long	0xf19
	.uleb128 0x25
	.quad	.LVL5
	.long	0xf83
	.uleb128 0x25
	.quad	.LVL6
	.long	0xef3
	.uleb128 0x25
	.quad	.LVL7
	.long	0x10ed
	.uleb128 0x25
	.quad	.LVL8
	.long	0xebf
	.uleb128 0x25
	.quad	.LVL9
	.long	0xea6
	.uleb128 0x25
	.quad	.LVL10
	.long	0xe90
	.uleb128 0x25
	.quad	.LVL11
	.long	0xe90
	.uleb128 0x25
	.quad	.LVL12
	.long	0xe90
	.uleb128 0x25
	.quad	.LVL13
	.long	0xe90
	.uleb128 0x25
	.quad	.LVL14
	.long	0xe90
	.uleb128 0x25
	.quad	.LVL15
	.long	0xe7b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x634
	.uleb128 0xc
	.long	0x365
	.long	0x10e8
	.uleb128 0x11
	.long	0x92
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x10d8
	.uleb128 0x26
	.long	.LASF956
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.byte	0x1
	.long	0x99
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x114c
	.uleb128 0x20
	.long	.LASF859
	.byte	0x1
	.byte	0x18
	.byte	0x31
	.long	0x114c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF955
	.byte	0x1
	.byte	0x18
	.byte	0x3d
	.long	0xed
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"rsp"
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.long	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LVL0
	.long	0xf60
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x76c
	.uleb128 0x26
	.long	.LASF957
	.byte	0x5
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.long	0x59
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x11c5
	.uleb128 0x28
	.string	"a"
	.byte	0x5
	.byte	0x1a
	.byte	0x31
	.long	0x11c5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	0x1266
	.quad	.LBB12
	.quad	.LBE12
	.byte	0x5
	.byte	0x1c
	.byte	0xc
	.uleb128 0x2a
	.long	0x128c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	0x1282
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	0x1278
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	0x1296
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0x12a0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x835
	.uleb128 0x26
	.long	.LASF958
	.byte	0x5
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.long	0x59
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x11fd
	.uleb128 0x28
	.string	"a"
	.byte	0x5
	.byte	0x15
	.byte	0x31
	.long	0x11c5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF959
	.byte	0x5
	.byte	0x13
	.byte	0x14
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x122b
	.uleb128 0x28
	.string	"a"
	.byte	0x5
	.byte	0x13
	.byte	0x29
	.long	0x11c5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF960
	.byte	0x5
	.byte	0x11
	.byte	0x14
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1266
	.uleb128 0x28
	.string	"a"
	.byte	0x5
	.byte	0x11
	.byte	0x29
	.long	0x11c5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x5
	.byte	0x11
	.byte	0x30
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF981
	.byte	0x5
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.long	0x59
	.byte	0x1
	.long	0x12ad
	.uleb128 0x2d
	.string	"a"
	.byte	0x5
	.byte	0x8
	.byte	0x31
	.long	0x11c5
	.uleb128 0x2d
	.string	"v"
	.byte	0x5
	.byte	0x8
	.byte	0x38
	.long	0x59
	.uleb128 0x2d
	.string	"u"
	.byte	0x5
	.byte	0x8
	.byte	0x3f
	.long	0x59
	.uleb128 0x2e
	.string	"c"
	.byte	0x5
	.byte	0xa
	.byte	0x9
	.long	0x59
	.uleb128 0x2e
	.string	"old"
	.byte	0x5
	.byte	0xa
	.byte	0xc
	.long	0x59
	.byte	0
	.uleb128 0x2f
	.long	.LASF982
	.byte	0x4
	.byte	0x1c
	.byte	0x14
	.byte	0x1
	.long	0x12c7
	.uleb128 0x30
	.long	.LASF961
	.byte	0x4
	.byte	0x1e
	.byte	0xf
	.long	0x99
	.byte	0
	.uleb128 0x2b
	.long	.LASF962
	.byte	0x4
	.byte	0x13
	.byte	0x14
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1346
	.uleb128 0x20
	.long	.LASF963
	.byte	0x4
	.byte	0x13
	.byte	0x2e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF964
	.byte	0x4
	.byte	0x13
	.byte	0x3c
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x27
	.string	"i"
	.byte	0x4
	.byte	0x15
	.byte	0x11
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	0x1346
	.quad	.LBB10
	.quad	.LBE10
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.uleb128 0x2a
	.long	0x1354
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF983
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x1361
	.uleb128 0x33
	.long	.LASF963
	.byte	0x4
	.byte	0xa
	.byte	0x28
	.long	0x99
	.byte	0
	.uleb128 0x34
	.long	.LASF965
	.byte	0x3
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x13a3
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF966
	.byte	0x3
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x13e5
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF967
	.byte	0x3
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1427
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF968
	.byte	0x3
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1469
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF969
	.byte	0x3
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x14ab
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF970
	.byte	0x3
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x7f
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x14ed
	.uleb128 0x35
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF971
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x36
	.long	.LASF972
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x36
	.long	.LASF973
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x37
	.long	.LASF974
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x86
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1571
	.uleb128 0x21
	.long	.LASF975
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	0x1346
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1596
	.uleb128 0x2a
	.long	0x1354
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	0x12ad
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x15bb
	.uleb128 0x24
	.long	0x12ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	0x1266
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.long	0x1278
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x1282
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	0x128c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	0x1296
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	0x12a0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.file 25 "include/errno.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x11
	.file 26 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1a
	.file 27 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 28 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.file 29 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.file 30 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x8
	.long	.LASF600
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF601
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF602
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.file 31 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF620
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 32 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x10
	.long	.LASF634
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x18
	.file 33 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x4
	.file 34 "include/mm/mm.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x22
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.file 35 "include/mm/mman.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x23
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x11
	.long	.LASF726
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x10
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.file 36 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF744
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.file 37 "include/vm/shadow.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x25
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x17
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
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF375
	.byte	0x5
	.uleb128 0xd
	.long	.LASF376
	.byte	0x5
	.uleb128 0xe
	.long	.LASF377
	.byte	0x5
	.uleb128 0xf
	.long	.LASF378
	.byte	0x5
	.uleb128 0x10
	.long	.LASF379
	.byte	0x5
	.uleb128 0x11
	.long	.LASF380
	.byte	0x5
	.uleb128 0x12
	.long	.LASF381
	.byte	0x5
	.uleb128 0x13
	.long	.LASF382
	.byte	0x5
	.uleb128 0x14
	.long	.LASF383
	.byte	0x5
	.uleb128 0x15
	.long	.LASF384
	.byte	0x5
	.uleb128 0x16
	.long	.LASF385
	.byte	0x5
	.uleb128 0x17
	.long	.LASF386
	.byte	0x5
	.uleb128 0x18
	.long	.LASF387
	.byte	0x5
	.uleb128 0x19
	.long	.LASF388
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF392
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF393
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF394
	.byte	0x5
	.uleb128 0x20
	.long	.LASF395
	.byte	0x5
	.uleb128 0x21
	.long	.LASF396
	.byte	0x5
	.uleb128 0x22
	.long	.LASF397
	.byte	0x5
	.uleb128 0x23
	.long	.LASF398
	.byte	0x5
	.uleb128 0x24
	.long	.LASF399
	.byte	0x5
	.uleb128 0x25
	.long	.LASF400
	.byte	0x5
	.uleb128 0x26
	.long	.LASF401
	.byte	0x5
	.uleb128 0x27
	.long	.LASF402
	.byte	0x5
	.uleb128 0x28
	.long	.LASF403
	.byte	0x5
	.uleb128 0x29
	.long	.LASF404
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF406
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF407
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF408
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF409
	.byte	0x5
	.uleb128 0x30
	.long	.LASF410
	.byte	0x5
	.uleb128 0x31
	.long	.LASF411
	.byte	0x5
	.uleb128 0x32
	.long	.LASF412
	.byte	0x5
	.uleb128 0x33
	.long	.LASF413
	.byte	0x5
	.uleb128 0x34
	.long	.LASF414
	.byte	0x5
	.uleb128 0x35
	.long	.LASF415
	.byte	0x5
	.uleb128 0x36
	.long	.LASF416
	.byte	0x5
	.uleb128 0x37
	.long	.LASF417
	.byte	0x5
	.uleb128 0x38
	.long	.LASF418
	.byte	0x5
	.uleb128 0x39
	.long	.LASF419
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF420
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF421
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF422
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF423
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF424
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF425
	.byte	0x5
	.uleb128 0x40
	.long	.LASF426
	.byte	0x5
	.uleb128 0x41
	.long	.LASF427
	.byte	0x5
	.uleb128 0x42
	.long	.LASF428
	.byte	0x5
	.uleb128 0x43
	.long	.LASF429
	.byte	0x5
	.uleb128 0x44
	.long	.LASF430
	.byte	0x5
	.uleb128 0x45
	.long	.LASF431
	.byte	0x5
	.uleb128 0x47
	.long	.LASF432
	.byte	0x5
	.uleb128 0x49
	.long	.LASF433
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF434
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF435
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF436
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF437
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF438
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF439
	.byte	0x5
	.uleb128 0x50
	.long	.LASF440
	.byte	0x5
	.uleb128 0x51
	.long	.LASF441
	.byte	0x5
	.uleb128 0x52
	.long	.LASF442
	.byte	0x5
	.uleb128 0x53
	.long	.LASF443
	.byte	0x5
	.uleb128 0x54
	.long	.LASF444
	.byte	0x5
	.uleb128 0x55
	.long	.LASF445
	.byte	0x5
	.uleb128 0x56
	.long	.LASF446
	.byte	0x5
	.uleb128 0x57
	.long	.LASF447
	.byte	0x5
	.uleb128 0x58
	.long	.LASF448
	.byte	0x5
	.uleb128 0x59
	.long	.LASF449
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF450
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF451
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF452
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF453
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF454
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF455
	.byte	0x5
	.uleb128 0x60
	.long	.LASF456
	.byte	0x5
	.uleb128 0x61
	.long	.LASF457
	.byte	0x5
	.uleb128 0x62
	.long	.LASF458
	.byte	0x5
	.uleb128 0x63
	.long	.LASF459
	.byte	0x5
	.uleb128 0x64
	.long	.LASF460
	.byte	0x5
	.uleb128 0x65
	.long	.LASF461
	.byte	0x5
	.uleb128 0x66
	.long	.LASF462
	.byte	0x5
	.uleb128 0x67
	.long	.LASF463
	.byte	0x5
	.uleb128 0x68
	.long	.LASF464
	.byte	0x5
	.uleb128 0x69
	.long	.LASF465
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF466
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF467
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF468
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF469
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF470
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF471
	.byte	0x5
	.uleb128 0x70
	.long	.LASF472
	.byte	0x5
	.uleb128 0x71
	.long	.LASF473
	.byte	0x5
	.uleb128 0x72
	.long	.LASF474
	.byte	0x5
	.uleb128 0x73
	.long	.LASF475
	.byte	0x5
	.uleb128 0x74
	.long	.LASF476
	.byte	0x5
	.uleb128 0x75
	.long	.LASF477
	.byte	0x5
	.uleb128 0x76
	.long	.LASF478
	.byte	0x5
	.uleb128 0x77
	.long	.LASF479
	.byte	0x5
	.uleb128 0x78
	.long	.LASF480
	.byte	0x5
	.uleb128 0x79
	.long	.LASF481
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF482
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF483
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF484
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF485
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF486
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF487
	.byte	0x5
	.uleb128 0x80
	.long	.LASF488
	.byte	0x5
	.uleb128 0x81
	.long	.LASF489
	.byte	0x5
	.uleb128 0x82
	.long	.LASF490
	.byte	0x5
	.uleb128 0x83
	.long	.LASF491
	.byte	0x5
	.uleb128 0x84
	.long	.LASF492
	.byte	0x5
	.uleb128 0x85
	.long	.LASF493
	.byte	0x5
	.uleb128 0x86
	.long	.LASF494
	.byte	0x5
	.uleb128 0x87
	.long	.LASF495
	.byte	0x5
	.uleb128 0x88
	.long	.LASF496
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF497
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF498
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF499
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF500
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF501
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF502
	.byte	0x5
	.uleb128 0x90
	.long	.LASF503
	.byte	0x5
	.uleb128 0x93
	.long	.LASF504
	.byte	0x5
	.uleb128 0x94
	.long	.LASF505
	.byte	0x5
	.uleb128 0x97
	.long	.LASF506
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF507
	.byte	0x5
	.uleb128 0x5
	.long	.LASF508
	.byte	0x5
	.uleb128 0x6
	.long	.LASF509
	.byte	0x5
	.uleb128 0x7
	.long	.LASF510
	.byte	0x5
	.uleb128 0xa
	.long	.LASF511
	.byte	0x5
	.uleb128 0xc
	.long	.LASF512
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.5.ce5cf6e0f5e04c88197477365e766aac,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF513
	.byte	0x5
	.uleb128 0x7
	.long	.LASF514
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF515
	.byte	0x5
	.uleb128 0x11
	.long	.LASF516
	.byte	0x5
	.uleb128 0x12
	.long	.LASF517
	.byte	0x5
	.uleb128 0x14
	.long	.LASF518
	.byte	0x5
	.uleb128 0x15
	.long	.LASF519
	.byte	0x5
	.uleb128 0x18
	.long	.LASF520
	.byte	0x5
	.uleb128 0x19
	.long	.LASF521
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF522
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF523
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x5
	.uleb128 0x20
	.long	.LASF525
	.byte	0x5
	.uleb128 0x22
	.long	.LASF526
	.byte	0x5
	.uleb128 0x23
	.long	.LASF527
	.byte	0x5
	.uleb128 0x25
	.long	.LASF528
	.byte	0x5
	.uleb128 0x26
	.long	.LASF529
	.byte	0x5
	.uleb128 0x27
	.long	.LASF530
	.byte	0x5
	.uleb128 0x28
	.long	.LASF531
	.byte	0x5
	.uleb128 0x29
	.long	.LASF532
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF533
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF534
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF535
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF536
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF537
	.byte	0x5
	.uleb128 0x30
	.long	.LASF538
	.byte	0x5
	.uleb128 0x31
	.long	.LASF539
	.byte	0x5
	.uleb128 0x32
	.long	.LASF540
	.byte	0x5
	.uleb128 0x33
	.long	.LASF541
	.byte	0x5
	.uleb128 0x34
	.long	.LASF542
	.byte	0x5
	.uleb128 0x35
	.long	.LASF543
	.byte	0x5
	.uleb128 0x37
	.long	.LASF544
	.byte	0x5
	.uleb128 0x38
	.long	.LASF545
	.byte	0x5
	.uleb128 0x39
	.long	.LASF546
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF547
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF548
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF549
	.byte	0x5
	.uleb128 0x40
	.long	.LASF550
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF551
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF552
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF553
	.byte	0x5
	.uleb128 0x21
	.long	.LASF554
	.byte	0x5
	.uleb128 0x26
	.long	.LASF555
	.byte	0x5
	.uleb128 0x29
	.long	.LASF556
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x5
	.uleb128 0x37
	.long	.LASF558
	.byte	0x5
	.uleb128 0x38
	.long	.LASF559
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF560
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF561
	.byte	0x5
	.uleb128 0x59
	.long	.LASF562
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF563
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF564
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF565
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF566
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF567
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF568
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF569
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF570
	.byte	0x5
	.uleb128 0x8
	.long	.LASF571
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF572
	.byte	0x5
	.uleb128 0x7
	.long	.LASF573
	.byte	0x5
	.uleb128 0x8
	.long	.LASF574
	.byte	0x5
	.uleb128 0x9
	.long	.LASF575
	.byte	0x5
	.uleb128 0xa
	.long	.LASF576
	.byte	0x5
	.uleb128 0xb
	.long	.LASF577
	.byte	0x5
	.uleb128 0xc
	.long	.LASF578
	.byte	0x5
	.uleb128 0xd
	.long	.LASF579
	.byte	0x5
	.uleb128 0xe
	.long	.LASF580
	.byte	0x5
	.uleb128 0x10
	.long	.LASF581
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF583
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF584
	.byte	0x5
	.uleb128 0x20
	.long	.LASF585
	.byte	0x5
	.uleb128 0x21
	.long	.LASF586
	.byte	0x5
	.uleb128 0x23
	.long	.LASF581
	.byte	0x5
	.uleb128 0x24
	.long	.LASF587
	.byte	0x5
	.uleb128 0x25
	.long	.LASF588
	.byte	0x5
	.uleb128 0x26
	.long	.LASF589
	.byte	0x5
	.uleb128 0x28
	.long	.LASF590
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF591
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF592
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF593
	.byte	0x5
	.uleb128 0x30
	.long	.LASF594
	.byte	0x5
	.uleb128 0x31
	.long	.LASF595
	.byte	0x5
	.uleb128 0x32
	.long	.LASF596
	.byte	0x5
	.uleb128 0x33
	.long	.LASF597
	.byte	0x5
	.uleb128 0x35
	.long	.LASF598
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF599
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF603
	.byte	0x5
	.uleb128 0xf
	.long	.LASF604
	.byte	0x5
	.uleb128 0x10
	.long	.LASF605
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF606
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF607
	.byte	0x5
	.uleb128 0x23
	.long	.LASF608
	.byte	0x5
	.uleb128 0x24
	.long	.LASF609
	.byte	0x5
	.uleb128 0x25
	.long	.LASF610
	.byte	0x5
	.uleb128 0x26
	.long	.LASF611
	.byte	0x5
	.uleb128 0x27
	.long	.LASF612
	.byte	0x5
	.uleb128 0x28
	.long	.LASF613
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF614
	.byte	0x5
	.uleb128 0x31
	.long	.LASF615
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF616
	.byte	0x5
	.uleb128 0x11
	.long	.LASF617
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF618
	.byte	0x5
	.uleb128 0xab
	.long	.LASF619
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF621
	.byte	0x5
	.uleb128 0x9
	.long	.LASF622
	.byte	0x5
	.uleb128 0xa
	.long	.LASF623
	.byte	0x5
	.uleb128 0xb
	.long	.LASF624
	.byte	0x5
	.uleb128 0xd
	.long	.LASF625
	.byte	0x5
	.uleb128 0xe
	.long	.LASF626
	.byte	0x5
	.uleb128 0x10
	.long	.LASF627
	.byte	0x5
	.uleb128 0x11
	.long	.LASF628
	.byte	0x5
	.uleb128 0x12
	.long	.LASF629
	.byte	0x5
	.uleb128 0x13
	.long	.LASF630
	.byte	0x5
	.uleb128 0x19
	.long	.LASF631
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF632
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF633
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF635
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF636
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF637
	.byte	0x5
	.uleb128 0x20
	.long	.LASF638
	.byte	0x5
	.uleb128 0x21
	.long	.LASF639
	.byte	0x5
	.uleb128 0x22
	.long	.LASF640
	.byte	0x5
	.uleb128 0x23
	.long	.LASF641
	.byte	0x5
	.uleb128 0x24
	.long	.LASF642
	.byte	0x5
	.uleb128 0x25
	.long	.LASF643
	.byte	0x5
	.uleb128 0x27
	.long	.LASF644
	.byte	0x5
	.uleb128 0x28
	.long	.LASF645
	.byte	0x5
	.uleb128 0x29
	.long	.LASF646
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF647
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF648
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF649
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF650
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF651
	.byte	0x5
	.uleb128 0x34
	.long	.LASF652
	.byte	0x5
	.uleb128 0x35
	.long	.LASF653
	.byte	0x5
	.uleb128 0x36
	.long	.LASF654
	.byte	0x5
	.uleb128 0x37
	.long	.LASF655
	.byte	0x5
	.uleb128 0x38
	.long	.LASF656
	.byte	0x5
	.uleb128 0x39
	.long	.LASF657
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF658
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF659
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF660
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF661
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF662
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF663
	.byte	0x5
	.uleb128 0x40
	.long	.LASF664
	.byte	0x5
	.uleb128 0x41
	.long	.LASF665
	.byte	0x5
	.uleb128 0x42
	.long	.LASF666
	.byte	0x5
	.uleb128 0x43
	.long	.LASF667
	.byte	0x5
	.uleb128 0x44
	.long	.LASF668
	.byte	0x5
	.uleb128 0x45
	.long	.LASF669
	.byte	0x5
	.uleb128 0x46
	.long	.LASF670
	.byte	0x5
	.uleb128 0x47
	.long	.LASF671
	.byte	0x5
	.uleb128 0x48
	.long	.LASF672
	.byte	0x5
	.uleb128 0x49
	.long	.LASF673
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF674
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF675
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF676
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF677
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF678
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF679
	.byte	0x5
	.uleb128 0x50
	.long	.LASF680
	.byte	0x5
	.uleb128 0x51
	.long	.LASF681
	.byte	0x5
	.uleb128 0x52
	.long	.LASF682
	.byte	0x5
	.uleb128 0x54
	.long	.LASF683
	.byte	0x5
	.uleb128 0x55
	.long	.LASF684
	.byte	0x5
	.uleb128 0x56
	.long	.LASF685
	.byte	0x5
	.uleb128 0x57
	.long	.LASF686
	.byte	0x5
	.uleb128 0x58
	.long	.LASF687
	.byte	0x5
	.uleb128 0x59
	.long	.LASF688
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF689
	.byte	0x5
	.uleb128 0x64
	.long	.LASF690
	.byte	0x5
	.uleb128 0x97
	.long	.LASF691
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF692
	.byte	0x5
	.uleb128 0xac
	.long	.LASF693
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF694
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF695
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF696
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF697
	.byte	0x5
	.uleb128 0xee
	.long	.LASF698
	.byte	0x5
	.uleb128 0x101
	.long	.LASF699
	.byte	0x5
	.uleb128 0x104
	.long	.LASF700
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF701
	.byte	0x5
	.uleb128 0x126
	.long	.LASF702
	.byte	0x5
	.uleb128 0x127
	.long	.LASF703
	.byte	0x5
	.uleb128 0x128
	.long	.LASF704
	.byte	0x5
	.uleb128 0x129
	.long	.LASF705
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF706
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF707
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF708
	.byte	0x5
	.uleb128 0x6
	.long	.LASF709
	.byte	0x5
	.uleb128 0x7
	.long	.LASF710
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mm.h.3.43ae197a90e69c5b9351aa22f3f69e4e,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF711
	.byte	0x5
	.uleb128 0x4
	.long	.LASF712
	.byte	0x5
	.uleb128 0x5
	.long	.LASF713
	.byte	0x5
	.uleb128 0x7
	.long	.LASF714
	.byte	0x5
	.uleb128 0x8
	.long	.LASF715
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mman.h.7.8d2fbcd94c7c5496a9b8ae6b27184e44,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF716
	.byte	0x5
	.uleb128 0x8
	.long	.LASF717
	.byte	0x5
	.uleb128 0x9
	.long	.LASF718
	.byte	0x5
	.uleb128 0xa
	.long	.LASF719
	.byte	0x5
	.uleb128 0xe
	.long	.LASF720
	.byte	0x5
	.uleb128 0x12
	.long	.LASF721
	.byte	0x5
	.uleb128 0x13
	.long	.LASF722
	.byte	0x5
	.uleb128 0x14
	.long	.LASF723
	.byte	0x5
	.uleb128 0x18
	.long	.LASF724
	.byte	0x5
	.uleb128 0x19
	.long	.LASF725
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF727
	.byte	0x5
	.uleb128 0x23
	.long	.LASF728
	.byte	0x5
	.uleb128 0x24
	.long	.LASF729
	.byte	0x5
	.uleb128 0x25
	.long	.LASF730
	.byte	0x5
	.uleb128 0x26
	.long	.LASF731
	.byte	0x5
	.uleb128 0x29
	.long	.LASF732
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF733
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF734
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF735
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF736
	.byte	0x5
	.uleb128 0x30
	.long	.LASF737
	.byte	0x5
	.uleb128 0x31
	.long	.LASF738
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atomic.h.2.72172410bc17d188b39a3ef968b1c0a6,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF739
	.byte	0x5
	.uleb128 0x6
	.long	.LASF740
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.btree.h.21.672c46ec88ac5af8e0e0b3d80372ebac,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF741
	.byte	0x5
	.uleb128 0x16
	.long	.LASF742
	.byte	0x5
	.uleb128 0x17
	.long	.LASF743
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vnode.h.26.72bdf34e718f60f64c3467d6030617ec,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF745
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF746
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF533:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF679:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF464:
	.string	"EMSGSIZE 90"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF759:
	.string	"size_t"
.LASF516:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF932:
	.string	"unlink"
.LASF394:
	.string	"ENOTDIR 20"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF585:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF873:
	.string	"r_rsi"
.LASF685:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF654:
	.string	"DBG_MM DBG_MODE(1)"
.LASF880:
	.string	"r_rsp"
.LASF15:
	.string	"__LP64__ 1"
.LASF822:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF667:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF801:
	.string	"c_rsp"
.LASF485:
	.string	"ECONNREFUSED 111"
.LASF499:
	.string	"ECANCELED 125"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF493:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF624:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF919:
	.string	"chardev"
.LASF568:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF558:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF401:
	.string	"EFBIG 27"
.LASF515:
	.string	"PAGE_SHIFT 12"
.LASF951:
	.string	"proc_create"
.LASF751:
	.string	"int32_t"
.LASF366:
	.string	"__unix 1"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF944:
	.string	"dbg_print"
.LASF576:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF741:
	.string	"BRANCHING_FACTOR 2"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF980:
	.string	"__func__"
.LASF725:
	.string	"MAP_ANON 8"
.LASF644:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF906:
	.string	"mobj_ops"
.LASF447:
	.string	"EDOTDOT 73"
.LASF982:
	.string	"tlb_flush_all"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF497:
	.string	"ENOMEDIUM 123"
.LASF669:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF718:
	.string	"PROT_WRITE 0x2"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF925:
	.string	"write"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF680:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF833:
	.string	"kt_state"
.LASF743:
	.string	"MAX_CHILDREN 2*BRANCHING_FACTOR"
.LASF625:
	.string	"INTR_APICTIMER 0xf0"
.LASF510:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF489:
	.string	"EINPROGRESS 115"
.LASF513:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF384:
	.string	"ECHILD 10"
.LASF907:
	.string	"get_pframe"
.LASF423:
	.string	"EUNATCH 49"
.LASF502:
	.string	"EKEYREVOKED 128"
.LASF344:
	.string	"__x86_64 1"
.LASF388:
	.string	"EFAULT 14"
.LASF947:
	.string	"list_insert_tail"
.LASF923:
	.string	"chardev_ops"
.LASF938:
	.string	"acquire"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF446:
	.string	"EMULTIHOP 72"
.LASF851:
	.string	"vn_state"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF800:
	.string	"c_rip"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF698:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF937:
	.string	"stat"
.LASF395:
	.string	"EISDIR 21"
.LASF731:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF575:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF819:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF963:
	.string	"vaddr"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF519:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF382:
	.string	"ENOEXEC 8"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF590:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF814:
	.string	"kc_ctx"
.LASF402:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF966:
	.string	"lessthaneq"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF693:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF885:
	.string	"km_waitq"
.LASF786:
	.string	"p_cwd"
.LASF760:
	.string	"ssize_t"
.LASF702:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF899:
	.string	"n_keys"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF904:
	.string	"children"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF688:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF417:
	.string	"EIDRM 43"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF619:
	.string	"PID_INIT 1"
.LASF571:
	.string	"VMMAP_DIR_HILO 2"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF791:
	.string	"mo_type"
.LASF529:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF391:
	.string	"EEXIST 17"
.LASF518:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF837:
	.string	"kt_preemption_count"
.LASF911:
	.string	"blockdev"
.LASF483:
	.string	"ETOOMANYREFS 109"
.LASF946:
	.string	"userland_entry"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF523:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF839:
	.string	"PROC_RUNNING"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF660:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF887:
	.string	"km_link"
.LASF699:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF550:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF945:
	.string	"pt_unmap_range"
.LASF442:
	.string	"EADV 68"
.LASF400:
	.string	"ETXTBSY 26"
.LASF920:
	.string	"cd_id"
.LASF755:
	.string	"long int"
.LASF592:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF462:
	.string	"ENOTSOCK 88"
.LASF634:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF555:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF711:
	.string	"MM_POISON 1"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF892:
	.string	"pf_addr"
.LASF589:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF856:
	.string	"curcore"
.LASF969:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF714:
	.string	"USER_MEM_LOW 0x00400000"
.LASF375:
	.string	"EPERM 1"
.LASF455:
	.string	"ELIBSCN 81"
.LASF671:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF623:
	.string	"INTR_GPF 0x0d"
.LASF664:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF621:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF501:
	.string	"EKEYEXPIRED 127"
.LASF949:
	.string	"dbg_color"
.LASF670:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF879:
	.string	"r_rflags"
.LASF955:
	.string	"kstack"
.LASF514:
	.string	"packed __attribute__((packed))"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF410:
	.string	"ENAMETOOLONG 36"
.LASF431:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF738:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF785:
	.string	"p_files"
.LASF456:
	.string	"ELIBMAX 82"
.LASF434:
	.string	"ENOSTR 60"
.LASF708:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF764:
	.string	"devid_t"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF398:
	.string	"EMFILE 24"
.LASF652:
	.string	"DBG_ALL (~0ULL)"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF566:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF506:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF818:
	.string	"KT_NO_STATE"
.LASF430:
	.string	"EBADRQC 56"
.LASF747:
	.string	"signed char"
.LASF531:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF492:
	.string	"ENOTNAM 118"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF637:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF655:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF399:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF449:
	.string	"EOVERFLOW 75"
.LASF686:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF799:
	.string	"context"
.LASF479:
	.string	"ENOBUFS 105"
.LASF834:
	.string	"kt_plink"
.LASF471:
	.string	"EAFNOSUPPORT 97"
.LASF403:
	.string	"ESPIPE 29"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF748:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF475:
	.string	"ENETUNREACH 101"
.LASF812:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF459:
	.string	"ERESTART 85"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF857:
	.string	"curproc"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF676:
	.string	"DBG_THR DBG_MODE(23)"
.LASF579:
	.string	"PT_SIZE 0x080"
.LASF882:
	.string	"regs_t"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF902:
	.string	"keys"
.LASF422:
	.string	"ELNRNG 48"
.LASF582:
	.string	"INDEX_MASK 0b111111111"
.LASF811:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF632:
	.string	"IPL_HIGH 0xe0"
.LASF896:
	.string	"pframe_t"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF405:
	.string	"EMLINK 31"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF377:
	.string	"ESRCH 3"
.LASF651:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF448:
	.string	"EBADMSG 74"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF509:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF710:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF433:
	.string	"EBFONT 59"
.LASF636:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF762:
	.string	"blocknum_t"
.LASF692:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF805:
	.string	"c_kstacksz"
.LASF527:
	.string	"USE_1GB_PAGES 1"
.LASF807:
	.string	"char"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF562:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF774:
	.string	"p_pid"
.LASF798:
	.string	"pml4_t"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF563:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF916:
	.string	"read_block"
.LASF956:
	.string	"fork_setup_stack"
.LASF808:
	.string	"ktqueue"
.LASF467:
	.string	"EPROTONOSUPPORT 93"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF694:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF633:
	.string	"IPL_HIGHEST 0xff"
.LASF432:
	.string	"EDEADLOCK EDEADLK"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF484:
	.string	"ETIMEDOUT 110"
.LASF828:
	.string	"kt_retval"
.LASF412:
	.string	"ENOSYS 38"
.LASF972:
	.string	"intr_disable"
.LASF961:
	.string	"pdir"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF803:
	.string	"c_pml4"
.LASF424:
	.string	"ENOCSI 50"
.LASF577:
	.string	"PT_ACCESSED 0x020"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF544:
	.string	"PAGE_SHIFT_512GB 39"
.LASF787:
	.string	"p_brk"
.LASF361:
	.string	"__SEG_FS 1"
.LASF773:
	.string	"proc"
.LASF658:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF975:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF728:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF511:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF414:
	.string	"ELOOP 40"
.LASF645:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF777:
	.string	"p_children"
.LASF687:
	.string	"DBG_USER DBG_MODE(38)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF838:
	.string	"kthread_t"
.LASF547:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF973:
	.string	"intr_enable"
.LASF663:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF894:
	.string	"pf_mutex"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF427:
	.string	"EBADR 53"
.LASF962:
	.string	"tlb_flush_range"
.LASF926:
	.string	"mmap"
.LASF683:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF958:
	.string	"atomic_dec_and_test"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF979:
	.string	"do_fork"
.LASF560:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF593:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF941:
	.string	"file"
.LASF454:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF843:
	.string	"vn_ops"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF445:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF508:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF783:
	.string	"p_pml4"
.LASF824:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF612:
	.string	"NAME_LEN 28"
.LASF978:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF734:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF884:
	.string	"kmutex"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF965:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF476:
	.string	"ENETRESET 102"
.LASF976:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF823:
	.string	"KT_EXITED"
.LASF486:
	.string	"EHOSTDOWN 112"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF765:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF610:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF649:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF578:
	.string	"PT_DIRTY 0x040"
.LASF876:
	.string	"r_err"
.LASF385:
	.string	"EAGAIN 11"
.LASF849:
	.string	"vn_i"
.LASF766:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF487:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF848:
	.string	"vn_len"
.LASF673:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF408:
	.string	"ERANGE 34"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF614:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF826:
	.string	"kt_ctx"
.LASF416:
	.string	"ENOMSG 42"
.LASF646:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF934:
	.string	"mkdir"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF957:
	.string	"atomic_inc_not_zero"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF477:
	.string	"ECONNABORTED 103"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF596:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF383:
	.string	"EBADF 9"
.LASF705:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF689:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF697:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF784:
	.string	"p_wait"
.LASF936:
	.string	"readdir"
.LASF804:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF678:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF948:
	.string	"proc_destroy"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF469:
	.string	"EOPNOTSUPP 95"
.LASF763:
	.string	"ino_t"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF682:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF757:
	.string	"long unsigned int"
.LASF643:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF674:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF458:
	.string	"EILSEQ 84"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF406:
	.string	"EPIPE 32"
.LASF389:
	.string	"ENOTBLK 15"
.LASF520:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF870:
	.string	"r_rax"
.LASF541:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF915:
	.string	"blockdev_ops"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF603:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF931:
	.string	"link"
.LASF418:
	.string	"ECHRNG 44"
.LASF626:
	.string	"INTR_KEYBOARD 0xe0"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF443:
	.string	"ESRMNT 69"
.LASF776:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF829:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF588:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF864:
	.string	"r_rbp"
.LASF534:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF802:
	.string	"c_rbp"
.LASF865:
	.string	"r_rbx"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF564:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF440:
	.string	"EREMOTE 66"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF617:
	.string	"PROC_NAME_LEN 256"
.LASF618:
	.string	"PID_IDLE 0"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF917:
	.string	"write_block"
.LASF355:
	.string	"__SSE__ 1"
.LASF601:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF472:
	.string	"EADDRINUSE 98"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF852:
	.string	"vn_waitq"
.LASF386:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF855:
	.string	"proc_t"
.LASF735:
	.string	"DISK_MAJOR 1"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF451:
	.string	"EBADFD 77"
.LASF404:
	.string	"EROFS 30"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF657:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF505:
	.string	"ENOTRECOVERABLE 131"
.LASF381:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF930:
	.string	"lookup"
.LASF695:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF871:
	.string	"r_rcx"
.LASF825:
	.string	"kthread"
.LASF628:
	.string	"INTR_SPURIOUS 0xfe"
.LASF831:
	.string	"kt_cancelled"
.LASF478:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF650:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF950:
	.string	"kthread_clone"
.LASF691:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF436:
	.string	"ETIME 62"
.LASF952:
	.string	"memcpy"
.LASF780:
	.string	"p_child_link"
.LASF739:
	.string	"ATOMIC_H "
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF481:
	.string	"ENOTCONN 107"
.LASF953:
	.string	"child"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF393:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF639:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF967:
	.string	"greaterthan"
.LASF736:
	.string	"MEM_MAJOR 1"
.LASF745:
	.string	"VNODE_LOADING 0"
.LASF872:
	.string	"r_rdx"
.LASF494:
	.string	"EISNAM 120"
.LASF495:
	.string	"EREMOTEIO 121"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF572:
	.string	"PT_PRESENT 0x001"
.LASF713:
	.string	"MM_POISON_FREE 0xDD"
.LASF827:
	.string	"kt_kstack"
.LASF648:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF640:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF912:
	.string	"bd_id"
.LASF767:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF815:
	.string	"kc_queue"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF895:
	.string	"pf_link"
.LASF553:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF729:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF387:
	.string	"EACCES 13"
.LASF964:
	.string	"count"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF429:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF439:
	.string	"ENOPKG 65"
.LASF768:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF720:
	.string	"MAP_FAILED ((void *)-1)"
.LASF924:
	.string	"read"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF753:
	.string	"unsigned int"
.LASF435:
	.string	"ENODATA 61"
.LASF730:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF781:
	.string	"p_status"
.LASF630:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF594:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF503:
	.string	"EKEYREJECTED 129"
.LASF722:
	.string	"MAP_PRIVATE 2"
.LASF928:
	.string	"vnode_ops"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF707:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF542:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF546:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF761:
	.string	"pid_t"
.LASF607:
	.string	"PF_HASH_SIZE 17"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF974:
	.string	"intr_enabled"
.LASF524:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF675:
	.string	"DBG_KB DBG_MODE(22)"
.LASF396:
	.string	"EINVAL 22"
.LASF591:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF960:
	.string	"atomic_set"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF891:
	.string	"pf_loc"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF933:
	.string	"rename"
.LASF415:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF528:
	.string	"PAGE_SHIFT_2MB 21"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF769:
	.string	"list"
.LASF942:
	.string	"dirent"
.LASF772:
	.string	"vmm_proc"
.LASF756:
	.string	"uint64_t"
.LASF723:
	.string	"MAP_TYPE 3"
.LASF835:
	.string	"kt_qlink"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF816:
	.string	"kc_csdpaddr"
.LASF715:
	.string	"USER_MEM_HIGH (1UL << 47)"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF744:
	.string	"BLOCK_SIZE PAGE_SIZE"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF733:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF797:
	.string	"phys"
.LASF794:
	.string	"mo_pframes"
.LASF908:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF810:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF668:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF854:
	.string	"vn_link"
.LASF584:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF549:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF913:
	.string	"bd_ops"
.LASF357:
	.string	"__FXSR__ 1"
.LASF859:
	.string	"regs"
.LASF517:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF813:
	.string	"kc_id"
.LASF622:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF929:
	.string	"mknod"
.LASF832:
	.string	"kt_wchan"
.LASF581:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF647:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF342:
	.string	"__amd64 1"
.LASF796:
	.string	"mo_btree"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF392:
	.string	"EXDEV 18"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF793:
	.string	"mo_refcount"
.LASF538:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF918:
	.string	"blockdev_t"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF390:
	.string	"EBUSY 16"
.LASF609:
	.string	"MAX_FILES 1024"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF627:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF606:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF847:
	.string	"vn_mode"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF900:
	.string	"n_children"
.LASF792:
	.string	"mo_ops"
.LASF608:
	.string	"MAXPATHLEN 1024"
.LASF586:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF883:
	.string	"dbg_modes"
.LASF846:
	.string	"vn_vno"
.LASF490:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF452:
	.string	"EREMCHG 78"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF877:
	.string	"r_rip"
.LASF726:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF599:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF504:
	.string	"EOWNERDEAD 130"
.LASF850:
	.string	"vn_devid"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF977:
	.string	"proc/fork.c"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF778:
	.string	"p_pproc"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF909:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF821:
	.string	"KT_SLEEP"
.LASF567:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF684:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF927:
	.string	"chardev_t"
.LASF561:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF844:
	.string	"vn_fs"
.LASF836:
	.string	"kt_mutexes"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF537:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF700:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF841:
	.string	"proc_state_t"
.LASF981:
	.string	"__atomic_add_unless"
.LASF620:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF867:
	.string	"r_r10"
.LASF552:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF557:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF615:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF861:
	.string	"r_r14"
.LASF473:
	.string	"EADDRNOTAVAIL 99"
.LASF806:
	.string	"context_t"
.LASF888:
	.string	"kmutex_t"
.LASF354:
	.string	"__MMX__ 1"
.LASF551:
	.string	"inline __attribute__((always_inline, used))"
.LASF611:
	.string	"MAX_VNODES 1024"
.LASF545:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF893:
	.string	"pf_dirty"
.LASF379:
	.string	"EIO 5"
.LASF840:
	.string	"PROC_DEAD"
.LASF598:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF444:
	.string	"ECOMM 70"
.LASF554:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF426:
	.string	"EBADE 52"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF790:
	.string	"mobj"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF463:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF971:
	.string	"intr_wait"
.LASF853:
	.string	"vn_dev"
.LASF666:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF874:
	.string	"r_rdi"
.LASF539:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF421:
	.string	"EL3RST 47"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF605:
	.string	"TICK_MSECS 10"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF525:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF573:
	.string	"PT_WRITE 0x002"
.LASF540:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF716:
	.string	"PROT_NONE 0x0"
.LASF921:
	.string	"cd_ops"
.LASF376:
	.string	"ENOENT 2"
.LASF677:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF681:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF661:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF721:
	.string	"MAP_SHARED 1"
.LASF717:
	.string	"PROT_READ 0x1"
.LASF413:
	.string	"ENOTEMPTY 39"
.LASF512:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF595:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF468:
	.string	"ESOCKTNOSUPPORT 94"
.LASF719:
	.string	"PROT_EXEC 0x4"
.LASF940:
	.string	"truncate_file"
.LASF574:
	.string	"PT_USER 0x004"
.LASF943:
	.string	"sched_make_runnable"
.LASF474:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF565:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF653:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF789:
	.string	"p_vmmap"
.LASF701:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF438:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF638:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF665:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF507:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF672:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF461:
	.string	"EUSERS 87"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF749:
	.string	"short int"
.LASF890:
	.string	"pf_pagenum"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF866:
	.string	"r_r11"
.LASF863:
	.string	"r_r12"
.LASF862:
	.string	"r_r13"
.LASF465:
	.string	"EPROTOTYPE 91"
.LASF860:
	.string	"r_r15"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF842:
	.string	"vnode"
.LASF419:
	.string	"EL2NSYNC 45"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF526:
	.string	"USE_2MB_PAGES 1"
.LASF641:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF470:
	.string	"EPFNOSUPPORT 96"
.LASF556:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF740:
	.string	"ATOMIC_INIT(i) (i)"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF397:
	.string	"ENFILE 23"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF378:
	.string	"EINTR 4"
.LASF690:
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
.LASF428:
	.string	"EXFULL 54"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF457:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF441:
	.string	"ENOLINK 67"
.LASF460:
	.string	"ESTRPIPE 86"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF886:
	.string	"km_holder"
.LASF521:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF522:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF466:
	.string	"ENOPROTOOPT 92"
.LASF712:
	.string	"MM_POISON_ALLOC 0xBB"
.LASF602:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF535:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF380:
	.string	"ENXIO 6"
.LASF600:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF597:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF543:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF869:
	.string	"r_r8"
.LASF914:
	.string	"bd_link"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF875:
	.string	"r_intr"
.LASF570:
	.string	"VMMAP_DIR_LOHI 1"
.LASF959:
	.string	"atomic_inc"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF817:
	.string	"core_t"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF809:
	.string	"tq_list"
.LASF437:
	.string	"ENOSR 63"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF0:
	.string	"__STDC__ 1"
.LASF500:
	.string	"ENOKEY 126"
.LASF770:
	.string	"vmmap"
.LASF709:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF901:
	.string	"is_leaf"
.LASF409:
	.string	"EDEADLK 35"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF868:
	.string	"r_r9"
.LASF635:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF788:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF488:
	.string	"EALREADY 114"
.LASF898:
	.string	"btree_node"
.LASF779:
	.string	"p_list_link"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF704:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF656:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF703:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF706:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF910:
	.string	"destructor"
.LASF559:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF737:
	.string	"MEM_NULL_MINOR 0"
.LASF752:
	.string	"uint32_t"
.LASF530:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF795:
	.string	"mo_mutex"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF922:
	.string	"cd_link"
.LASF889:
	.string	"pframe"
.LASF696:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF616:
	.string	"PROC_MAX_COUNT 65536"
.LASF411:
	.string	"ENOLCK 37"
.LASF771:
	.string	"vmm_list"
.LASF939:
	.string	"release"
.LASF820:
	.string	"KT_RUNNABLE"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF613:
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
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF580:
	.string	"PT_GLOBAL 0x100"
.LASF750:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF897:
	.string	"atomic_t"
.LASF365:
	.string	"__linux__ 1"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF732:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF659:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF878:
	.string	"r_cs"
.LASF935:
	.string	"rmdir"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF548:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF881:
	.string	"r_ss"
.LASF532:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF727:
	.string	"MINOR_BITS 8"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF845:
	.string	"vn_mobj"
.LASF970:
	.string	"equals"
.LASF754:
	.string	"int64_t"
.LASF746:
	.string	"VNODE_LOADED 1"
.LASF954:
	.string	"kthr"
.LASF858:
	.string	"curthr"
.LASF604:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF830:
	.string	"kt_proc"
.LASF498:
	.string	"EMEDIUMTYPE 124"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF407:
	.string	"EDOM 33"
.LASF420:
	.string	"EL3HLT 46"
.LASF480:
	.string	"EISCONN 106"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF742:
	.string	"MAX_KEYS (2*BRANCHING_FACTOR) - 1"
.LASF631:
	.string	"IPL_LOW 0"
.LASF496:
	.string	"EDQUOT 122"
.LASF758:
	.string	"uintptr_t"
.LASF587:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF662:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF491:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF775:
	.string	"p_name"
.LASF425:
	.string	"EL2HLT 51"
.LASF364:
	.string	"__linux 1"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF724:
	.string	"MAP_FIXED 4"
.LASF903:
	.string	"data"
.LASF905:
	.string	"btree_node_t"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF453:
	.string	"ELIBACC 79"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF482:
	.string	"ESHUTDOWN 108"
.LASF629:
	.string	"INTR_APICERR 0xff"
.LASF583:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF536:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF968:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF450:
	.string	"ENOTUNIQ 76"
.LASF569:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF642:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF983:
	.string	"tlb_flush"
.LASF782:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
