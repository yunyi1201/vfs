	.file	"context.c"
	.text
.Ltext0:
	.file 1 "proc/context.c"
	.type	cpuid, @function
cpuid:
.LFB0:
	.file 2 "include/main/cpuid.h"
	.loc 2 94 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	.loc 2 95 5
	movl	-12(%rbp), %eax
#APP
# 95 "include/main/cpuid.h" 1
	cpuid
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-32(%rbp), %rax
	movl	%esi, (%rax)
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 98 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cpuid, .-cpuid
	.type	cpuid_get_msr, @function
cpuid_get_msr:
.LFB1:
	.loc 2 101 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 102 5
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
#APP
# 102 "include/main/cpuid.h" 1
	rdmsr
# 0 "" 2
#NO_APP
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 105 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	cpuid_get_msr, .-cpuid_get_msr
	.type	cpuid_set_msr, @function
cpuid_set_msr:
.LFB2:
	.loc 2 108 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 2 109 5
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %ecx
#APP
# 109 "include/main/cpuid.h" 1
	wrmsr
# 0 "" 2
	.loc 2 110 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cpuid_set_msr, .-cpuid_set_msr
	.type	io_wait, @function
io_wait:
.LFB3:
	.loc 2 113 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 114 5
#APP
# 114 "include/main/cpuid.h" 1
	jmp 1f
	1:jmp 2f
	2:
# 0 "" 2
	.loc 2 118 1
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	io_wait, .-io_wait
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
	.type	intr_enabled, @function
intr_enabled:
.LFB10:
	.file 4 "include/main/interrupt.h"
	.loc 4 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 84 5
#APP
# 84 "include/main/interrupt.h" 1
	pushf; pop %rax; and $0x200, %rax;
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	.loc 4 86 12
	movq	-8(%rbp), %rax
	.loc 4 87 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB11:
	.loc 4 89 34
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 89 36
#APP
# 89 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 4 89 61
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB12:
	.loc 4 91 35
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 91 37
#APP
# 91 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 4 91 62
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB13:
	.loc 4 98 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 105 5
#APP
# 105 "include/main/interrupt.h" 1
	sti; hlt
# 0 "" 2
	.loc 4 106 1
#NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	intr_wait, .-intr_wait
	.section	.rodata
.LC0:
	.string	"\nReturned from kthread_exit.\n"
.LC1:
	.string	"proc/context.c"
	.text
	.type	__context_thread_initial_func, @function
__context_thread_initial_func:
.LFB14:
	.loc 1 17 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 18 5
	movl	$0, %eax
	movabsq	$preemption_reset, %rdx
	call	*%rdx
.LVL0:
	.loc 1 19 5
	movl	$0, %edi
	movabsq	$apic_setipl, %rax
	call	*%rax
.LVL1:
.LBB4:
.LBB5:
	.loc 4 89 36
#APP
# 89 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 4 89 61
#NO_APP
	nop
.LBE5:
.LBE4:
	.loc 1 22 25
	movq	16(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL2:
	movq	%rax, -8(%rbp)
	.loc 1 23 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$kthread_exit, %rax
	call	*%rax
.LVL3:
	.loc 1 25 5
	movabsq	$.LC0, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$25, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r8
	call	*%r8
.LVL4:
	.cfi_endproc
.LFE14:
	.size	__context_thread_initial_func, .-__context_thread_initial_func
	.section	.rodata
.LC2:
	.string	"NULL != pml4"
.LC3:
	.string	"assertion failed: %s"
.LC4:
	.string	"PAGE_ALIGNED(kstack)"
	.text
	.globl	context_setup_raw
	.type	context_setup_raw, @function
context_setup_raw:
.LFB15:
	.loc 1 30 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	.loc 1 31 5
	cmpq	$0, -40(%rbp)
	jne	.L24
	.loc 1 31 5 is_stmt 0 discriminator 1
	movabsq	$.LC2, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$31, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL5:
.L24:
	.loc 1 32 5 is_stmt 1
	movq	-24(%rbp), %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L25
	.loc 1 32 5 is_stmt 0 discriminator 1
	movabsq	$.LC4, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$32, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL6:
.L25:
	.loc 1 33 19 is_stmt 1
	movq	-24(%rbp), %rdx
	.loc 1 33 17
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 34 19
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 1 35 15
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 36 16
	movq	-24(%rbp), %rdx
	.loc 1 36 34
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 36 14
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 37 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 37 14
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 38 21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 38 30
	movq	$0, (%rax)
	.loc 1 39 17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 39 14
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 40 16
	movq	-16(%rbp), %rdx
	.loc 1 40 14
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 41 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	context_setup_raw, .-context_setup_raw
	.globl	context_setup
	.type	context_setup, @function
context_setup:
.LFB16:
	.loc 1 50 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	.loc 1 51 5
	cmpq	$0, 16(%rbp)
	jne	.L27
	.loc 1 51 5 is_stmt 0 discriminator 1
	movabsq	$.LC2, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$51, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL7:
.L27:
	.loc 1 52 5 is_stmt 1
	movq	-40(%rbp), %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L28
	.loc 1 52 5 is_stmt 0 discriminator 1
	movabsq	$.LC4, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$52, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL8:
.L28:
	.loc 1 54 19 is_stmt 1
	movq	-40(%rbp), %rdx
	.loc 1 54 17
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 55 19
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 1 56 15
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 60 16
	movq	-40(%rbp), %rdx
	.loc 1 60 34
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 60 14
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 61 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 61 14
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 62 16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 62 6
	movq	%rax, %rdx
	.loc 1 62 24
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 63 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 63 14
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 64 15
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 64 6
	movq	%rax, %rdx
	.loc 1 64 23
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 65 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 65 14
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 66 25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 66 6
	movq	%rax, %rdx
	.loc 1 66 33
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 68 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 68 14
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 70 17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 70 14
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 71 16
	movabsq	$__context_thread_initial_func, %rdx
	.loc 1 71 14
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 72 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	context_setup, .-context_setup
	.globl	context_make_active
	.type	context_make_active, @function
context_make_active:
.LFB17:
	.loc 1 84 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 86 5
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	movabsq	$pt_set, %rax
	call	*%rax
.LVL9:
	.loc 1 89 5
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rcx
#APP
# 89 "proc/context.c" 1
	movq 16(%rax),%rbp
	movq 8(%rdx),%rsp
	push (%rcx)
	ret
# 0 "" 2
	.loc 1 96 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	context_make_active, .-context_make_active
	.section	.rodata
.LC5:
	.string	"oldc->c_pml4 == pt_get()"
.LC6:
	.string	"pt_get() == newc->c_pml4"
	.align 8
.LC7:
	.string	"curthr_paddr == new_curthr_paddr"
.LC8:
	.string	"prev_curthr == curthr"
	.text
	.globl	context_switch
	.type	context_switch, @function
context_switch:
.LFB18:
	.loc 1 99 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 1 101 33
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 101 50
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 101 44
	addq	%rdx, %rax
	.loc 1 100 5
	movq	%rax, %rdi
	movabsq	$gdt_set_kernel_stack, %rax
	call	*%rax
.LVL10:
	.loc 1 105 5
	movq	-56(%rbp), %rax
	movq	24(%rax), %rbx
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL11:
	cmpq	%rax, %rbx
	je	.L31
	.loc 1 105 5 is_stmt 0 discriminator 1
	movabsq	$.LC5, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$105, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL12:
.L31:
	.loc 1 107 9 is_stmt 1
	movabsq	$curthr, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_virt_to_phys_helper, %rax
	call	*%rax
.LVL13:
	movq	%rax, -24(%rbp)
	.loc 1 109 9
	movabsq	$curthr, %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_virt_to_phys_helper, %rax
	call	*%rax
.LVL14:
	movq	%rax, -32(%rbp)
	.loc 1 111 16
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 112 5
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	movabsq	$pt_set, %rax
	call	*%rax
.LVL15:
	.loc 1 113 5
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL16:
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L32
	.loc 1 113 5 is_stmt 0 discriminator 1
	movabsq	$.LC6, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$113, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL17:
.L32:
	.loc 1 115 5 is_stmt 1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L33
	.loc 1 115 5 is_stmt 0 discriminator 1
	movabsq	$.LC7, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$115, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL18:
.L33:
	.loc 1 116 5 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L34
	.loc 1 116 5 is_stmt 0 discriminator 1
	movabsq	$.LC8, %r8
	movabsq	$.LC3, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$116, %esi
	movabsq	$.LC1, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL19:
.L34:
	.loc 1 123 5 is_stmt 1
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rcx
#APP
# 123 "proc/context.c" 1
	pushfq;pushq  %rbp     
pushq  %rbx     
pushq  %r12     
pushq  %r13     
pushq  %r14     
pushq  %r15     
movq   %rsp, 8(%rax) 
movq   8(%rdx), %rsp 
pushq %rax
	movabs  $1f, %rax   
	mov %rax, (%rsi)
	popq %rax
	pushq  (%rcx)        
	ret              
	1:	popq   %r15     
	popq   %r14     
	popq   %r13     
	popq   %r12     
	popq   %rbx     
	popq   %rbp     
	popfq
# 0 "" 2
	.loc 1 150 1
#NO_APP
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	context_switch, .-context_switch
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"__context_thread_initial_func"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"context_setup_raw"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"context_setup"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"context_switch"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/util/list.h"
	.file 7 "include/vm/vmmap.h"
	.file 8 "include/proc/proc.h"
	.file 9 "include/mm/pagetable.h"
	.file 10 "include/proc/context.h"
	.file 11 "include/proc/sched.h"
	.file 12 "include/proc/kthread.h"
	.file 13 "include/main/gdt.h"
	.file 14 "include/main/apic.h"
	.file 15 "include/globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc72
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF718
	.byte	0xc
	.long	.LASF719
	.long	.LASF720
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF595
	.uleb128 0x3
	.long	.LASF599
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF596
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF597
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF598
	.uleb128 0x3
	.long	.LASF600
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF601
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF602
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF603
	.uleb128 0x3
	.long	.LASF604
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF605
	.uleb128 0x3
	.long	.LASF606
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x92
	.uleb128 0x3
	.long	.LASF607
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x86
	.uleb128 0x3
	.long	.LASF608
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x59
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF613
	.byte	0x10
	.byte	0x6
	.byte	0x5e
	.byte	0x10
	.long	0xe7
	.uleb128 0x7
	.long	.LASF609
	.byte	0x6
	.byte	0x60
	.byte	0x12
	.long	0xe7
	.byte	0
	.uleb128 0x7
	.long	.LASF610
	.byte	0x6
	.byte	0x61
	.byte	0x12
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbf
	.uleb128 0x3
	.long	.LASF611
	.byte	0x6
	.byte	0x62
	.byte	0x3
	.long	0xbf
	.uleb128 0x3
	.long	.LASF612
	.byte	0x6
	.byte	0x62
	.byte	0xb
	.long	0xbf
	.uleb128 0x6
	.long	.LASF614
	.byte	0x18
	.byte	0x7
	.byte	0xe
	.byte	0x10
	.long	0x12d
	.uleb128 0x7
	.long	.LASF615
	.byte	0x7
	.byte	0x10
	.byte	0xc
	.long	0xed
	.byte	0
	.uleb128 0x7
	.long	.LASF616
	.byte	0x7
	.byte	0x11
	.byte	0x12
	.long	0x21a
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF617
	.value	0x2a0
	.byte	0x8
	.byte	0x1b
	.byte	0x10
	.long	0x21a
	.uleb128 0x7
	.long	.LASF618
	.byte	0x8
	.byte	0x1d
	.byte	0xb
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.long	.LASF619
	.byte	0x8
	.byte	0x1e
	.byte	0xa
	.long	0x45b
	.byte	0x4
	.uleb128 0xa
	.long	.LASF620
	.byte	0x8
	.byte	0x20
	.byte	0xc
	.long	0xed
	.value	0x108
	.uleb128 0xa
	.long	.LASF621
	.byte	0x8
	.byte	0x21
	.byte	0xc
	.long	0xed
	.value	0x118
	.uleb128 0xa
	.long	.LASF622
	.byte	0x8
	.byte	0x22
	.byte	0x12
	.long	0x21a
	.value	0x128
	.uleb128 0xa
	.long	.LASF623
	.byte	0x8
	.byte	0x24
	.byte	0x11
	.long	0xf9
	.value	0x130
	.uleb128 0xa
	.long	.LASF624
	.byte	0x8
	.byte	0x25
	.byte	0x11
	.long	0xf9
	.value	0x140
	.uleb128 0xa
	.long	.LASF625
	.byte	0x8
	.byte	0x27
	.byte	0xa
	.long	0x7f
	.value	0x150
	.uleb128 0xa
	.long	.LASF626
	.byte	0x8
	.byte	0x28
	.byte	0x12
	.long	0x44f
	.value	0x158
	.uleb128 0xa
	.long	.LASF627
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.long	0x2e1
	.value	0x160
	.uleb128 0xa
	.long	.LASF628
	.byte	0x8
	.byte	0x31
	.byte	0xf
	.long	0x327
	.value	0x168
	.uleb128 0xa
	.long	.LASF629
	.byte	0x8
	.byte	0x34
	.byte	0x12
	.long	0x46b
	.value	0x180
	.uleb128 0xa
	.long	.LASF630
	.byte	0x8
	.byte	0x35
	.byte	0x13
	.long	0x48d
	.value	0x280
	.uleb128 0xa
	.long	.LASF631
	.byte	0x8
	.byte	0x45
	.byte	0xb
	.long	0xbd
	.value	0x288
	.uleb128 0xa
	.long	.LASF632
	.byte	0x8
	.byte	0x46
	.byte	0xb
	.long	0xbd
	.value	0x290
	.uleb128 0xa
	.long	.LASF633
	.byte	0x8
	.byte	0x47
	.byte	0x13
	.long	0x220
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12d
	.uleb128 0x8
	.byte	0x8
	.long	0x105
	.uleb128 0xb
	.string	"pt"
	.value	0x1000
	.byte	0x9
	.byte	0x18
	.byte	0x10
	.long	0x241
	.uleb128 0x7
	.long	.LASF634
	.byte	0x9
	.byte	0x1a
	.byte	0xf
	.long	0x241
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x99
	.long	0x252
	.uleb128 0xd
	.long	0x92
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF635
	.byte	0x9
	.byte	0x1b
	.byte	0x16
	.long	0x226
	.uleb128 0x3
	.long	.LASF636
	.byte	0xa
	.byte	0xb
	.byte	0x11
	.long	0x26a
	.uleb128 0x8
	.byte	0x8
	.long	0x270
	.uleb128 0xe
	.byte	0x1
	.long	0xbd
	.long	0x285
	.uleb128 0xf
	.long	0x7f
	.uleb128 0xf
	.long	0xbd
	.byte	0
	.uleb128 0x6
	.long	.LASF637
	.byte	0x30
	.byte	0xa
	.byte	0xd
	.byte	0x10
	.long	0x2e1
	.uleb128 0x7
	.long	.LASF638
	.byte	0xa
	.byte	0xf
	.byte	0xf
	.long	0x99
	.byte	0
	.uleb128 0x7
	.long	.LASF639
	.byte	0xa
	.byte	0x10
	.byte	0xf
	.long	0x99
	.byte	0x8
	.uleb128 0x7
	.long	.LASF640
	.byte	0xa
	.byte	0x11
	.byte	0xf
	.long	0x99
	.byte	0x10
	.uleb128 0x7
	.long	.LASF641
	.byte	0xa
	.byte	0x14
	.byte	0xa
	.long	0x2e1
	.byte	0x18
	.uleb128 0x7
	.long	.LASF642
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.long	0x99
	.byte	0x20
	.uleb128 0x7
	.long	.LASF643
	.byte	0xa
	.byte	0x19
	.byte	0xc
	.long	0xa5
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x252
	.uleb128 0x3
	.long	.LASF644
	.byte	0xa
	.byte	0x1a
	.byte	0x3
	.long	0x285
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF645
	.uleb128 0x10
	.long	0x2f3
	.uleb128 0x6
	.long	.LASF646
	.byte	0x18
	.byte	0xb
	.byte	0xf
	.byte	0x10
	.long	0x327
	.uleb128 0x7
	.long	.LASF647
	.byte	0xb
	.byte	0x11
	.byte	0xc
	.long	0xed
	.byte	0
	.uleb128 0x7
	.long	.LASF648
	.byte	0xb
	.byte	0x12
	.byte	0xc
	.long	0xa5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF649
	.byte	0xb
	.byte	0x13
	.byte	0x3
	.long	0x2ff
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.long	0x366
	.uleb128 0x12
	.long	.LASF650
	.byte	0
	.uleb128 0x12
	.long	.LASF651
	.byte	0x1
	.uleb128 0x12
	.long	.LASF652
	.byte	0x2
	.uleb128 0x12
	.long	.LASF653
	.byte	0x3
	.uleb128 0x12
	.long	.LASF654
	.byte	0x4
	.uleb128 0x12
	.long	.LASF655
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF656
	.byte	0xc
	.byte	0x1c
	.byte	0x3
	.long	0x333
	.uleb128 0x6
	.long	.LASF657
	.byte	0xa0
	.byte	0xc
	.byte	0x21
	.byte	0x10
	.long	0x41c
	.uleb128 0x7
	.long	.LASF658
	.byte	0xc
	.byte	0x23
	.byte	0xf
	.long	0x2e7
	.byte	0
	.uleb128 0x7
	.long	.LASF659
	.byte	0xc
	.byte	0x24
	.byte	0xb
	.long	0x41c
	.byte	0x30
	.uleb128 0x7
	.long	.LASF660
	.byte	0xc
	.byte	0x25
	.byte	0xb
	.long	0xbd
	.byte	0x38
	.uleb128 0x7
	.long	.LASF661
	.byte	0xc
	.byte	0x26
	.byte	0xa
	.long	0x7f
	.byte	0x40
	.uleb128 0x7
	.long	.LASF662
	.byte	0xc
	.byte	0x27
	.byte	0x12
	.long	0x21a
	.byte	0x48
	.uleb128 0x7
	.long	.LASF663
	.byte	0xc
	.byte	0x29
	.byte	0xa
	.long	0x7f
	.byte	0x50
	.uleb128 0x7
	.long	.LASF664
	.byte	0xc
	.byte	0x2a
	.byte	0x10
	.long	0x422
	.byte	0x58
	.uleb128 0x7
	.long	.LASF665
	.byte	0xc
	.byte	0x2b
	.byte	0x15
	.long	0x366
	.byte	0x60
	.uleb128 0x7
	.long	.LASF666
	.byte	0xc
	.byte	0x2d
	.byte	0x11
	.long	0xf9
	.byte	0x68
	.uleb128 0x7
	.long	.LASF667
	.byte	0xc
	.byte	0x2f
	.byte	0x9
	.long	0xf9
	.byte	0x78
	.uleb128 0x7
	.long	.LASF668
	.byte	0xc
	.byte	0x31
	.byte	0xc
	.long	0xed
	.byte	0x88
	.uleb128 0x7
	.long	.LASF669
	.byte	0xc
	.byte	0x34
	.byte	0xe
	.long	0x86
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2f3
	.uleb128 0x8
	.byte	0x8
	.long	0x327
	.uleb128 0x3
	.long	.LASF670
	.byte	0xc
	.byte	0x35
	.byte	0x3
	.long	0x372
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.long	0x44f
	.uleb128 0x12
	.long	.LASF671
	.byte	0
	.uleb128 0x12
	.long	.LASF672
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF673
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.long	0x434
	.uleb128 0xc
	.long	0x2f3
	.long	0x46b
	.uleb128 0x13
	.long	0x92
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x47b
	.long	0x47b
	.uleb128 0x13
	.long	0x92
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x481
	.uleb128 0x14
	.long	.LASF674
	.byte	0x1
	.uleb128 0x14
	.long	.LASF675
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x487
	.uleb128 0x15
	.long	.LASF721
	.byte	0xf
	.byte	0xb
	.byte	0x13
	.long	0x4a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x428
	.uleb128 0x6
	.long	.LASF676
	.byte	0x18
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.long	0x4dc
	.uleb128 0x7
	.long	.LASF677
	.byte	0x1
	.byte	0xb
	.byte	0x14
	.long	0x25e
	.byte	0
	.uleb128 0x7
	.long	.LASF678
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.long	0x7f
	.byte	0x8
	.uleb128 0x7
	.long	.LASF679
	.byte	0x1
	.byte	0xd
	.byte	0xb
	.long	0xbd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF680
	.byte	0x1
	.byte	0xe
	.byte	0xa
	.long	0x4a7
	.uleb128 0x16
	.byte	0x1
	.long	.LASF684
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.long	0x99
	.byte	0x1
	.long	0x506
	.uleb128 0xf
	.long	0x2e1
	.uleb128 0xf
	.long	0x99
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF681
	.byte	0x9
	.byte	0x4a
	.byte	0x9
	.long	0x2e1
	.byte	0x1
	.long	0x51a
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF682
	.byte	0xd
	.byte	0x10
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x52f
	.uleb128 0xf
	.long	0xbd
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF683
	.byte	0x9
	.byte	0x4c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x544
	.uleb128 0xf
	.long	0x2e1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF685
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x56a
	.uleb128 0xf
	.long	0x56a
	.uleb128 0xf
	.long	0x65
	.uleb128 0xf
	.long	0x56a
	.uleb128 0xf
	.long	0x56a
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2fa
	.uleb128 0x19
	.byte	0x1
	.long	.LASF686
	.byte	0xc
	.byte	0x6a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x585
	.uleb128 0xf
	.long	0xbd
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF687
	.byte	0xe
	.byte	0x30
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x59a
	.uleb128 0xf
	.long	0x38
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF722
	.byte	0xb
	.byte	0x7d
	.byte	0x6
	.byte	0x1
	.long	0x5aa
	.uleb128 0x18
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF693
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6af
	.uleb128 0x1d
	.long	.LASF688
	.byte	0x1
	.byte	0x62
	.byte	0x20
	.long	0x6af
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x1
	.byte	0x62
	.byte	0x31
	.long	0x6af
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF699
	.long	0x6c5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x1f
	.long	.LASF690
	.byte	0x1
	.byte	0x6a
	.byte	0xf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF691
	.byte	0x1
	.byte	0x6c
	.byte	0xf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF692
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.long	0x4a1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LVL10
	.long	0x51a
	.uleb128 0x20
	.quad	.LVL11
	.long	0x506
	.uleb128 0x20
	.quad	.LVL12
	.long	0x544
	.uleb128 0x20
	.quad	.LVL13
	.long	0x4e8
	.uleb128 0x20
	.quad	.LVL14
	.long	0x4e8
	.uleb128 0x20
	.quad	.LVL15
	.long	0x52f
	.uleb128 0x20
	.quad	.LVL16
	.long	0x506
	.uleb128 0x20
	.quad	.LVL17
	.long	0x544
	.uleb128 0x20
	.quad	.LVL18
	.long	0x544
	.uleb128 0x20
	.quad	.LVL19
	.long	0x544
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e7
	.uleb128 0xc
	.long	0x2fa
	.long	0x6c5
	.uleb128 0x13
	.long	0x92
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.long	0x6b5
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF694
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x706
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x53
	.byte	0x25
	.long	0x6af
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LVL9
	.long	0x52f
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF695
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7bd
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.long	0x6af
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF677
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.long	0x25e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF678
	.byte	0x1
	.byte	0x30
	.byte	0x3c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF679
	.byte	0x1
	.byte	0x30
	.byte	0x48
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF696
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF697
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF698
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF699
	.long	0x7cd
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x20
	.quad	.LVL7
	.long	0x544
	.uleb128 0x20
	.quad	.LVL8
	.long	0x544
	.byte	0
	.uleb128 0xc
	.long	0x2fa
	.long	0x7cd
	.uleb128 0x13
	.long	0x92
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.long	0x7bd
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF700
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x86b
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.long	0x6af
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF677
	.byte	0x1
	.byte	0x1c
	.byte	0x2d
	.long	0x872
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF696
	.byte	0x1
	.byte	0x1c
	.byte	0x3c
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF697
	.byte	0x1
	.byte	0x1d
	.byte	0x1f
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF698
	.byte	0x1
	.byte	0x1d
	.byte	0x31
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF699
	.long	0x888
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x20
	.quad	.LVL5
	.long	0x544
	.uleb128 0x20
	.quad	.LVL6
	.long	0x544
	.byte	0
	.uleb128 0x22
	.long	0x872
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x86b
	.uleb128 0xc
	.long	0x2fa
	.long	0x888
	.uleb128 0x13
	.long	0x92
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.long	0x878
	.uleb128 0x23
	.long	.LASF705
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x92c
	.uleb128 0x1d
	.long	.LASF701
	.byte	0x1
	.byte	0x10
	.byte	0x47
	.long	0x4dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF702
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF699
	.long	0x93c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x24
	.long	0x977
	.quad	.LBB4
	.quad	.LBE4
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.uleb128 0x20
	.quad	.LVL0
	.long	0x59a
	.uleb128 0x20
	.quad	.LVL1
	.long	0x585
	.uleb128 0x20
	.quad	.LVL3
	.long	0x570
	.uleb128 0x20
	.quad	.LVL4
	.long	0x544
	.byte	0
	.uleb128 0xc
	.long	0x2fa
	.long	0x93c
	.uleb128 0x13
	.long	0x92
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	0x92c
	.uleb128 0x25
	.long	.LASF703
	.byte	0x4
	.byte	0x61
	.byte	0x14
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.long	.LASF704
	.byte	0x4
	.byte	0x5b
	.byte	0x14
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.long	.LASF723
	.byte	0x4
	.byte	0x59
	.byte	0x14
	.byte	0x1
	.uleb128 0x27
	.long	.LASF706
	.byte	0x4
	.byte	0x51
	.byte	0x18
	.long	0x86
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9b3
	.uleb128 0x1f
	.long	.LASF707
	.byte	0x4
	.byte	0x53
	.byte	0xe
	.long	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF708
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
	.long	0x9f5
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF709
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
	.long	0xa37
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF710
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
	.long	0xa79
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF711
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
	.long	0xabb
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF712
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
	.long	0xafd
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF713
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
	.long	0xb3f
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF724
	.byte	0x2
	.byte	0x70
	.byte	0x14
	.byte	0x1
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF714
	.byte	0x2
	.byte	0x6b
	.byte	0x14
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xba7
	.uleb128 0x21
	.string	"msr"
	.byte	0x2
	.byte	0x6b
	.byte	0x2b
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"lo"
	.byte	0x2
	.byte	0x6b
	.byte	0x39
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"hi"
	.byte	0x2
	.byte	0x6b
	.byte	0x46
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF715
	.byte	0x2
	.byte	0x64
	.byte	0x14
	.byte	0x1
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbf3
	.uleb128 0x21
	.string	"msr"
	.byte	0x2
	.byte	0x64
	.byte	0x2b
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"lo"
	.byte	0x2
	.byte	0x64
	.byte	0x3a
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"hi"
	.byte	0x2
	.byte	0x64
	.byte	0x48
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6c
	.uleb128 0x2b
	.long	.LASF716
	.byte	0x2
	.byte	0x5c
	.byte	0x14
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc5d
	.uleb128 0x1d
	.long	.LASF717
	.byte	0x2
	.byte	0x5c
	.byte	0x1e
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"a"
	.byte	0x2
	.byte	0x5c
	.byte	0x31
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"b"
	.byte	0x2
	.byte	0x5c
	.byte	0x3e
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.byte	0x5c
	.byte	0x4b
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"d"
	.byte	0x2
	.byte	0x5d
	.byte	0x24
	.long	0xbf3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2c
	.long	0x977
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
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
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.file 16 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.file 17 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.file 18 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x8
	.long	.LASF462
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF463
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.file 19 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.file 20 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.file 21 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF482
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
	.file 22 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF500
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF587
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro15
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
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF377
	.byte	0x5
	.uleb128 0x11
	.long	.LASF378
	.byte	0x5
	.uleb128 0x12
	.long	.LASF379
	.byte	0x5
	.uleb128 0x14
	.long	.LASF380
	.byte	0x5
	.uleb128 0x15
	.long	.LASF381
	.byte	0x5
	.uleb128 0x18
	.long	.LASF382
	.byte	0x5
	.uleb128 0x19
	.long	.LASF383
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF384
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF385
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF386
	.byte	0x5
	.uleb128 0x20
	.long	.LASF387
	.byte	0x5
	.uleb128 0x22
	.long	.LASF388
	.byte	0x5
	.uleb128 0x23
	.long	.LASF389
	.byte	0x5
	.uleb128 0x25
	.long	.LASF390
	.byte	0x5
	.uleb128 0x26
	.long	.LASF391
	.byte	0x5
	.uleb128 0x27
	.long	.LASF392
	.byte	0x5
	.uleb128 0x28
	.long	.LASF393
	.byte	0x5
	.uleb128 0x29
	.long	.LASF394
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF395
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF396
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF397
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF398
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF399
	.byte	0x5
	.uleb128 0x30
	.long	.LASF400
	.byte	0x5
	.uleb128 0x31
	.long	.LASF401
	.byte	0x5
	.uleb128 0x32
	.long	.LASF402
	.byte	0x5
	.uleb128 0x33
	.long	.LASF403
	.byte	0x5
	.uleb128 0x34
	.long	.LASF404
	.byte	0x5
	.uleb128 0x35
	.long	.LASF405
	.byte	0x5
	.uleb128 0x37
	.long	.LASF406
	.byte	0x5
	.uleb128 0x38
	.long	.LASF407
	.byte	0x5
	.uleb128 0x39
	.long	.LASF408
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF409
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF410
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF411
	.byte	0x5
	.uleb128 0x40
	.long	.LASF412
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF415
	.byte	0x5
	.uleb128 0x21
	.long	.LASF416
	.byte	0x5
	.uleb128 0x26
	.long	.LASF417
	.byte	0x5
	.uleb128 0x29
	.long	.LASF418
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF419
	.byte	0x5
	.uleb128 0x37
	.long	.LASF420
	.byte	0x5
	.uleb128 0x38
	.long	.LASF421
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF422
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF423
	.byte	0x5
	.uleb128 0x59
	.long	.LASF424
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF425
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF426
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF427
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF428
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF429
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF430
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF431
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF432
	.byte	0x5
	.uleb128 0x8
	.long	.LASF433
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF434
	.byte	0x5
	.uleb128 0x7
	.long	.LASF435
	.byte	0x5
	.uleb128 0x8
	.long	.LASF436
	.byte	0x5
	.uleb128 0x9
	.long	.LASF437
	.byte	0x5
	.uleb128 0xa
	.long	.LASF438
	.byte	0x5
	.uleb128 0xb
	.long	.LASF439
	.byte	0x5
	.uleb128 0xc
	.long	.LASF440
	.byte	0x5
	.uleb128 0xd
	.long	.LASF441
	.byte	0x5
	.uleb128 0xe
	.long	.LASF442
	.byte	0x5
	.uleb128 0x10
	.long	.LASF443
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF444
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF445
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF446
	.byte	0x5
	.uleb128 0x20
	.long	.LASF447
	.byte	0x5
	.uleb128 0x21
	.long	.LASF448
	.byte	0x5
	.uleb128 0x23
	.long	.LASF443
	.byte	0x5
	.uleb128 0x24
	.long	.LASF449
	.byte	0x5
	.uleb128 0x25
	.long	.LASF450
	.byte	0x5
	.uleb128 0x26
	.long	.LASF451
	.byte	0x5
	.uleb128 0x28
	.long	.LASF452
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF453
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF454
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF455
	.byte	0x5
	.uleb128 0x30
	.long	.LASF456
	.byte	0x5
	.uleb128 0x31
	.long	.LASF457
	.byte	0x5
	.uleb128 0x32
	.long	.LASF458
	.byte	0x5
	.uleb128 0x33
	.long	.LASF459
	.byte	0x5
	.uleb128 0x35
	.long	.LASF460
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF461
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cpuid.h.6.c55e5f8a973f64531d1c42a82cca9c8f,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF464
	.byte	0x5
	.uleb128 0x7
	.long	.LASF465
	.byte	0x5
	.uleb128 0x8
	.long	.LASF466
	.byte	0x5
	.uleb128 0x9
	.long	.LASF467
	.byte	0x5
	.uleb128 0xa
	.long	.LASF468
	.byte	0x5
	.uleb128 0xb
	.long	.LASF469
	.byte	0x5
	.uleb128 0xc
	.long	.LASF470
	.byte	0x5
	.uleb128 0xd
	.long	.LASF471
	.byte	0x5
	.uleb128 0xe
	.long	.LASF472
	.byte	0x5
	.uleb128 0xf
	.long	.LASF473
	.byte	0x5
	.uleb128 0x10
	.long	.LASF474
	.byte	0x5
	.uleb128 0x11
	.long	.LASF475
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF476
	.byte	0x5
	.uleb128 0x5
	.long	.LASF477
	.byte	0x5
	.uleb128 0x6
	.long	.LASF478
	.byte	0x5
	.uleb128 0x7
	.long	.LASF479
	.byte	0x5
	.uleb128 0xa
	.long	.LASF480
	.byte	0x5
	.uleb128 0xc
	.long	.LASF481
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF483
	.byte	0x5
	.uleb128 0xf
	.long	.LASF484
	.byte	0x5
	.uleb128 0x10
	.long	.LASF485
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF486
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF487
	.byte	0x5
	.uleb128 0x23
	.long	.LASF488
	.byte	0x5
	.uleb128 0x24
	.long	.LASF489
	.byte	0x5
	.uleb128 0x25
	.long	.LASF490
	.byte	0x5
	.uleb128 0x26
	.long	.LASF491
	.byte	0x5
	.uleb128 0x27
	.long	.LASF492
	.byte	0x5
	.uleb128 0x28
	.long	.LASF493
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF494
	.byte	0x5
	.uleb128 0x31
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF496
	.byte	0x5
	.uleb128 0x11
	.long	.LASF497
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF498
	.byte	0x5
	.uleb128 0xab
	.long	.LASF499
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
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
	.uleb128 0x27
	.long	.LASF510
	.byte	0x5
	.uleb128 0x28
	.long	.LASF511
	.byte	0x5
	.uleb128 0x29
	.long	.LASF512
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF513
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF514
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF515
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF517
	.byte	0x5
	.uleb128 0x34
	.long	.LASF518
	.byte	0x5
	.uleb128 0x35
	.long	.LASF519
	.byte	0x5
	.uleb128 0x36
	.long	.LASF520
	.byte	0x5
	.uleb128 0x37
	.long	.LASF521
	.byte	0x5
	.uleb128 0x38
	.long	.LASF522
	.byte	0x5
	.uleb128 0x39
	.long	.LASF523
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF524
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF525
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF526
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF527
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF528
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF529
	.byte	0x5
	.uleb128 0x40
	.long	.LASF530
	.byte	0x5
	.uleb128 0x41
	.long	.LASF531
	.byte	0x5
	.uleb128 0x42
	.long	.LASF532
	.byte	0x5
	.uleb128 0x43
	.long	.LASF533
	.byte	0x5
	.uleb128 0x44
	.long	.LASF534
	.byte	0x5
	.uleb128 0x45
	.long	.LASF535
	.byte	0x5
	.uleb128 0x46
	.long	.LASF536
	.byte	0x5
	.uleb128 0x47
	.long	.LASF537
	.byte	0x5
	.uleb128 0x48
	.long	.LASF538
	.byte	0x5
	.uleb128 0x49
	.long	.LASF539
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF540
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF541
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF542
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF543
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF544
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF545
	.byte	0x5
	.uleb128 0x50
	.long	.LASF546
	.byte	0x5
	.uleb128 0x51
	.long	.LASF547
	.byte	0x5
	.uleb128 0x52
	.long	.LASF548
	.byte	0x5
	.uleb128 0x54
	.long	.LASF549
	.byte	0x5
	.uleb128 0x55
	.long	.LASF550
	.byte	0x5
	.uleb128 0x56
	.long	.LASF551
	.byte	0x5
	.uleb128 0x57
	.long	.LASF552
	.byte	0x5
	.uleb128 0x58
	.long	.LASF553
	.byte	0x5
	.uleb128 0x59
	.long	.LASF554
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF555
	.byte	0x5
	.uleb128 0x64
	.long	.LASF556
	.byte	0x5
	.uleb128 0x97
	.long	.LASF557
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF558
	.byte	0x5
	.uleb128 0xac
	.long	.LASF559
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF560
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF561
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF562
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF563
	.byte	0x5
	.uleb128 0xee
	.long	.LASF564
	.byte	0x5
	.uleb128 0x101
	.long	.LASF565
	.byte	0x5
	.uleb128 0x104
	.long	.LASF566
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF567
	.byte	0x5
	.uleb128 0x126
	.long	.LASF568
	.byte	0x5
	.uleb128 0x127
	.long	.LASF569
	.byte	0x5
	.uleb128 0x128
	.long	.LASF570
	.byte	0x5
	.uleb128 0x129
	.long	.LASF571
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF572
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF573
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
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
	.uleb128 0xd
	.long	.LASF578
	.byte	0x5
	.uleb128 0xe
	.long	.LASF579
	.byte	0x5
	.uleb128 0x10
	.long	.LASF580
	.byte	0x5
	.uleb128 0x11
	.long	.LASF581
	.byte	0x5
	.uleb128 0x12
	.long	.LASF582
	.byte	0x5
	.uleb128 0x13
	.long	.LASF583
	.byte	0x5
	.uleb128 0x19
	.long	.LASF584
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF585
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF586
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gdt.h.5.8475bfccb56ea39155d58dc2ed64605a,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF588
	.byte	0x5
	.uleb128 0x7
	.long	.LASF589
	.byte	0x5
	.uleb128 0x8
	.long	.LASF590
	.byte	0x5
	.uleb128 0x9
	.long	.LASF591
	.byte	0x5
	.uleb128 0xa
	.long	.LASF592
	.byte	0x5
	.uleb128 0xb
	.long	.LASF593
	.byte	0x5
	.uleb128 0xc
	.long	.LASF594
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF423:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF611:
	.string	"list_t"
.LASF494:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF452:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF495:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF377:
	.string	"PAGE_SHIFT 12"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF640:
	.string	"c_rbp"
.LASF392:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF447:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF570:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF422:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF625:
	.string	"p_status"
.LASF463:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF694:
	.string	"context_make_active"
.LASF690:
	.string	"curthr_paddr"
.LASF475:
	.string	"CPUID_VENDOR_RISE \"RiseRiseRise\""
.LASF709:
	.string	"lessthaneq"
.LASF466:
	.string	"CPUID_VENDOR_VIA \"CentaurHauls\""
.LASF632:
	.string	"p_start_brk"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF647:
	.string	"tq_list"
.LASF683:
	.string	"pt_set"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF352:
	.string	"__k8__ 1"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF642:
	.string	"c_kstack"
.LASF569:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF697:
	.string	"kstacksz"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF500:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF567:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF587:
	.string	"MAX_LAPICS 8"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF528:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF478:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF501:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF602:
	.string	"unsigned int"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF539:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF378:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF564:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF538:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF688:
	.string	"oldc"
.LASF477:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF457:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF687:
	.string	"apic_setipl"
.LASF692:
	.string	"prev_curthr"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF639:
	.string	"c_rsp"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF719:
	.string	"proc/context.c"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF450:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF618:
	.string	"p_pid"
.LASF547:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF572:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF696:
	.string	"kstack"
.LASF586:
	.string	"IPL_HIGHEST 0xff"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF421:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF711:
	.string	"lessthan"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF558:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF443:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF612:
	.string	"list_link_t"
.LASF407:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF445:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF668:
	.string	"kt_mutexes"
.LASF577:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF584:
	.string	"IPL_LOW 0"
.LASF497:
	.string	"PROC_NAME_LEN 256"
.LASF655:
	.string	"KT_EXITED"
.LASF563:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF613:
	.string	"list"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF469:
	.string	"CPUID_VENDOR_CYRIX \"CyrixInstead\""
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF568:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF593:
	.string	"GDT_USER_DATA 0x20"
.LASF512:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF627:
	.string	"p_pml4"
.LASF511:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF601:
	.string	"uint32_t"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF388:
	.string	"USE_2MB_PAGES 1"
.LASF456:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF436:
	.string	"PT_USER 0x004"
.LASF417:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF649:
	.string	"ktqueue_t"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF420:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF432:
	.string	"VMMAP_DIR_LOHI 1"
.LASF702:
	.string	"result"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF510:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF393:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF394:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF399:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF672:
	.string	"PROC_DEAD"
.LASF548:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF3:
	.string	"__GNUC__ 12"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF674:
	.string	"file"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF491:
	.string	"MAX_VNODES 1024"
.LASF591:
	.string	"GDT_KERNEL_DATA 0x10"
.LASF449:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF715:
	.string	"cpuid_get_msr"
.LASF523:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF425:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF509:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF526:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF718:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF609:
	.string	"l_next"
.LASF418:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF513:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF426:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF493:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF541:
	.string	"DBG_KB DBG_MODE(22)"
.LASF375:
	.string	"NULL 0"
.LASF576:
	.string	"INTR_GPF 0x0d"
.LASF506:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF681:
	.string	"pt_get"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF724:
	.string	"io_wait"
.LASF354:
	.string	"__MMX__ 1"
.LASF385:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF575:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF573:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF461:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF684:
	.string	"pt_virt_to_phys_helper"
.LASF641:
	.string	"c_pml4"
.LASF398:
	.string	"PAGE_SHIFT_1GB 30"
.LASF435:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF607:
	.string	"size_t"
.LASF554:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF504:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF706:
	.string	"intr_enabled"
.LASF464:
	.string	"CPUID_VENDOR_AMD \"AuthenticAMD\""
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF646:
	.string	"ktqueue"
.LASF490:
	.string	"MAX_VFS 8"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF677:
	.string	"func"
.LASF628:
	.string	"p_wait"
.LASF550:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF542:
	.string	"DBG_THR DBG_MODE(23)"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF560:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF521:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF707:
	.string	"flags"
.LASF343:
	.string	"__amd64__ 1"
.LASF519:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF419:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF405:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF437:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF438:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF411:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF721:
	.string	"curthr"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF651:
	.string	"KT_ON_CPU"
.LASF535:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF442:
	.string	"PT_GLOBAL 0x100"
.LASF391:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF713:
	.string	"equals"
.LASF624:
	.string	"p_child_link"
.LASF362:
	.string	"__SEG_GS 1"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF695:
	.string	"context_setup"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF643:
	.string	"c_kstacksz"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF580:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF645:
	.string	"char"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF522:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF530:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF599:
	.string	"uint8_t"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF636:
	.string	"context_func_t"
.LASF657:
	.string	"kthread"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF396:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF667:
	.string	"kt_qlink"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF527:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF516:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF361:
	.string	"__SEG_FS 1"
.LASF382:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF553:
	.string	"DBG_USER DBG_MODE(38)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF581:
	.string	"INTR_SPURIOUS 0xfe"
.LASF440:
	.string	"PT_DIRTY 0x040"
.LASF484:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF615:
	.string	"vmm_list"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF529:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF716:
	.string	"cpuid"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF578:
	.string	"INTR_APICTIMER 0xf0"
.LASF397:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF626:
	.string	"p_state"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF631:
	.string	"p_brk"
.LASF387:
	.string	"PAGE_NSIZES 8"
.LASF638:
	.string	"c_rip"
.LASF546:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF712:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF585:
	.string	"IPL_HIGH 0xe0"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF662:
	.string	"kt_proc"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF634:
	.string	"phys"
.LASF14:
	.string	"_LP64 1"
.LASF441:
	.string	"PT_SIZE 0x080"
.LASF720:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF525:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF344:
	.string	"__x86_64 1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF659:
	.string	"kt_kstack"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF592:
	.string	"GDT_USER_TEXT 0x18"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF710:
	.string	"greaterthan"
.LASF608:
	.string	"pid_t"
.LASF434:
	.string	"PT_PRESENT 0x001"
.LASF518:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF562:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF552:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF665:
	.string	"kt_state"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF637:
	.string	"context"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF455:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF395:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF648:
	.string	"tq_size"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF459:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF355:
	.string	"__SSE__ 1"
.LASF502:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF503:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF0:
	.string	"__STDC__ 1"
.LASF356:
	.string	"__SSE2__ 1"
.LASF404:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF536:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF654:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF390:
	.string	"PAGE_SHIFT_2MB 21"
.LASF678:
	.string	"arg1"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF401:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF556:
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
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF413:
	.string	"inline __attribute__((always_inline, used))"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF485:
	.string	"TICK_MSECS 10"
.LASF403:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF623:
	.string	"p_list_link"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF700:
	.string	"context_setup_raw"
.LASF656:
	.string	"kthread_state_t"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF531:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF453:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF481:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF670:
	.string	"kthread_t"
.LASF384:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF400:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF686:
	.string	"kthread_exit"
.LASF492:
	.string	"NAME_LEN 28"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF487:
	.string	"PF_HASH_SIZE 17"
.LASF465:
	.string	"CPUID_VENDOR_INTEL \"GenuineIntel\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF708:
	.string	"greaterthaneq"
.LASF610:
	.string	"l_prev"
.LASF622:
	.string	"p_pproc"
.LASF658:
	.string	"kt_ctx"
.LASF635:
	.string	"pml4_t"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF717:
	.string	"request"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF483:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF559:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF619:
	.string	"p_name"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF428:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF467:
	.string	"CPUID_VENDOR_OLDTRANSMETA \"TransmetaCPU\""
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF722:
	.string	"preemption_reset"
.LASF582:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF661:
	.string	"kt_errno"
.LASF671:
	.string	"PROC_RUNNING"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF701:
	.string	"args"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF499:
	.string	"PID_INIT 1"
.LASF534:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF402:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF532:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF597:
	.string	"short int"
.LASF682:
	.string	"gdt_set_kernel_stack"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF676:
	.string	"context_initial_func_args"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF571:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF603:
	.string	"long int"
.LASF486:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF482:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF644:
	.string	"context_t"
.LASF505:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF663:
	.string	"kt_cancelled"
.LASF448:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF723:
	.string	"intr_enable"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF415:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF549:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF364:
	.string	"__linux 1"
.LASF590:
	.string	"GDT_KERNEL_TEXT 0x08"
.LASF693:
	.string	"context_switch"
.LASF406:
	.string	"PAGE_SHIFT_512GB 39"
.LASF412:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF480:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF604:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF446:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF566:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF429:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF507:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF555:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF439:
	.string	"PT_ACCESSED 0x020"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF408:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF379:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF498:
	.string	"PID_IDLE 0"
.LASF474:
	.string	"CPUID_VENDOR_NSC \"Geode by NSC\""
.LASF468:
	.string	"CPUID_VENDOR_TRANSMETA \"GenuineTMx86\""
.LASF680:
	.string	"context_initial_func_args_t"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF479:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF669:
	.string	"kt_preemption_count"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF606:
	.string	"uintptr_t"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF666:
	.string	"kt_plink"
.LASF629:
	.string	"p_files"
.LASF703:
	.string	"intr_wait"
.LASF617:
	.string	"proc"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF515:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF605:
	.string	"long unsigned int"
.LASF416:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF460:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF433:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF514:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF444:
	.string	"INDEX_MASK 0b111111111"
.LASF589:
	.string	"GDT_ZERO 0x00"
.LASF653:
	.string	"KT_SLEEP"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF551:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF381:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF508:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF471:
	.string	"CPUID_VENDOR_NEXGEN \"NexGenDriven\""
.LASF476:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF524:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF351:
	.string	"__k8 1"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF673:
	.string	"proc_state_t"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF533:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF596:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF579:
	.string	"INTR_KEYBOARD 0xe0"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF660:
	.string	"kt_retval"
.LASF544:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF357:
	.string	"__FXSR__ 1"
.LASF685:
	.string	"dbg_panic"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF537:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF496:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF409:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF454:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF561:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF473:
	.string	"CPUID_VENDOR_SIS \"SiS SiS SiS \""
.LASF472:
	.string	"CPUID_VENDOR_UMC \"UMC UMC UMC \""
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF675:
	.string	"vnode"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF650:
	.string	"KT_NO_STATE"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF430:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF698:
	.string	"pml4"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF462:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF633:
	.string	"p_vmmap"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF594:
	.string	"GDT_TSS 0x28"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF664:
	.string	"kt_wchan"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF630:
	.string	"p_cwd"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF424:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF557:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF389:
	.string	"USE_1GB_PAGES 1"
.LASF431:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF595:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF598:
	.string	"short unsigned int"
.LASF380:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF427:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF714:
	.string	"cpuid_set_msr"
.LASF540:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF621:
	.string	"p_children"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF691:
	.string	"new_curthr_paddr"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF545:
	.string	"DBG_VM DBG_MODE(28)"
.LASF699:
	.string	"__func__"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF616:
	.string	"vmm_proc"
.LASF414:
	.string	"noreturn __attribute__((noreturn))"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF410:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF470:
	.string	"CPUID_VENDOR_CENTAUR \"CentaurHauls\""
.LASF679:
	.string	"arg2"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF383:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF600:
	.string	"int32_t"
.LASF458:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF588:
	.string	"GDT_COUNT 16"
.LASF614:
	.string	"vmmap"
.LASF386:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF520:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF620:
	.string	"p_threads"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF543:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF488:
	.string	"MAXPATHLEN 1024"
.LASF574:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF517:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF652:
	.string	"KT_RUNNABLE"
.LASF451:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF704:
	.string	"intr_disable"
.LASF705:
	.string	"__context_thread_initial_func"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF489:
	.string	"MAX_FILES 1024"
.LASF583:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF565:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF689:
	.string	"newc"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
