	.file	"sched.c"
	.text
.Ltext0:
	.file 1 "proc/sched.c"
	.type	equals, @function
equals:
.LFB0:
	.file 2 "include/util/debug.h"
	.loc 2 280 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 281 14
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	.loc 2 282 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB1:
	.loc 2 284 39
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 284 50
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 284 56
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB2:
	.loc 2 286 38
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 286 49
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setl	%al
	movzbl	%al, %eax
	.loc 2 286 54
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB3:
	.loc 2 288 41
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 288 52
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setg	%al
	movzbl	%al, %eax
	.loc 2 288 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB4:
	.loc 2 290 40
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 290 51
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setle	%al
	movzbl	%al, %eax
	.loc 2 290 57
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB5:
	.loc 2 292 43
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 292 54
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setge	%al
	movzbl	%al, %eax
	.loc 2 292 60
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	greaterthaneq, .-greaterthaneq
	.type	intr_enabled, @function
intr_enabled:
.LFB6:
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
.LFE6:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB7:
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
.LFE7:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB8:
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
.LFE8:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB9:
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
.LFE9:
	.size	intr_wait, .-intr_wait
	.section	.csd,"aw"
	.align 16
	.type	kt_runq, @object
	.size	kt_runq, 24
kt_runq:
	.zero	24
	.align 8
	.type	last_thread_context, @object
	.size	last_thread_context, 8
last_thread_context:
	.zero	8
	.text
	.globl	preemption_disable
	.type	preemption_disable, @function
preemption_disable:
.LFB10:
	.loc 1 30 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 31 9
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 31 8
	testq	%rax, %rax
	je	.L20
	.loc 1 32 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rdx
	.loc 1 32 36
	addq	$1, %rdx
	movq	%rdx, 152(%rax)
.L20:
	.loc 1 33 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	preemption_disable, .-preemption_disable
	.section	.rodata
.LC0:
	.string	"curthr->kt_preemption_count"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"proc/sched.c"
	.text
	.globl	preemption_enable
	.type	preemption_enable, @function
preemption_enable:
.LFB11:
	.loc 1 36 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 37 9
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 37 8
	testq	%rax, %rax
	je	.L24
	.loc 1 39 9
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	.loc 1 39 9 is_stmt 0 discriminator 1
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.9, %rax
	movq	%rax, %rdx
	movl	$39, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL0:
.L23:
	.loc 1 40 15 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rdx
	.loc 1 40 36
	subq	$1, %rdx
	movq	%rdx, 152(%rax)
.L24:
	.loc 1 42 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	preemption_enable, .-preemption_enable
	.section	.rodata
.LC3:
	.string	"curthr"
	.text
	.globl	preemption_reset
	.type	preemption_reset, @function
preemption_reset:
.LFB12:
	.loc 1 45 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 46 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	.loc 1 46 5 is_stmt 0 discriminator 1
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.8, %rax
	movq	%rax, %rdx
	movl	$46, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL1:
.L26:
	.loc 1 47 11 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 47 33
	movq	$0, 152(%rax)
	.loc 1 48 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	preemption_reset, .-preemption_reset
	.globl	preemption_enabled
	.type	preemption_enabled, @function
preemption_enabled:
.LFB13:
	.loc 1 51 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 52 12
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 52 19
	testq	%rax, %rax
	je	.L28
	.loc 1 52 29 discriminator 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	.loc 1 52 19 discriminator 1
	testq	%rax, %rax
	jne	.L28
	.loc 1 52 19 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L29
.L28:
	.loc 1 52 19 discriminator 4
	movl	$0, %eax
.L29:
	.loc 1 52 19 discriminator 6
	cltq
	.loc 1 53 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	preemption_enabled, .-preemption_enabled
	.globl	sched_queue_init
	.type	sched_queue_init, @function
sched_queue_init:
.LFB14:
	.loc 1 63 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 64 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL2:
	.loc 1 65 20
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 66 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sched_queue_init, .-sched_queue_init
	.section	.rodata
.LC4:
	.string	"!thr->kt_wchan"
	.text
	.type	ktqueue_enqueue, @function
ktqueue_enqueue:
.LFB15:
	.loc 1 74 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 75 5
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L33
	.loc 1 75 5 is_stmt 0 discriminator 1
	movabsq	$.LC4, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.7, %rax
	movq	%rax, %rdx
	movl	$75, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL3:
.L33:
	.loc 1 77 24 is_stmt 1
	movq	-8(%rbp), %rax
	.loc 1 77 5
	movq	%rax, %rdi
	movabsq	$list_assert_sanity, %rax
	call	*%rax
.LVL4:
	.loc 1 80 5
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_insert_head, %rax
	call	*%rax
.LVL5:
	.loc 1 81 24
	movq	-8(%rbp), %rax
	.loc 1 81 5
	movq	%rax, %rdi
	movabsq	$list_assert_sanity, %rax
	call	*%rax
.LVL6:
	.loc 1 83 19
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 88(%rax)
	.loc 1 84 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 84 19
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 85 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ktqueue_enqueue, .-ktqueue_enqueue
	.type	ktqueue_dequeue, @function
ktqueue_dequeue:
.LFB16:
	.loc 1 93 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB19:
.LBB20:
	.loc 1 133 63
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 133 73
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.LBE20:
.LBE19:
	.loc 1 94 8
	testq	%rax, %rax
	je	.L36
	.loc 1 96 16
	movl	$0, %eax
	jmp	.L37
.L36:
	.loc 1 99 24
	movq	-40(%rbp), %rax
	.loc 1 99 5
	movq	%rax, %rdi
	movabsq	$list_assert_sanity, %rax
	call	*%rax
.LVL7:
	.loc 1 101 18
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 102 16
	movq	-8(%rbp), %rax
	subq	$120, %rax
	movq	%rax, -16(%rbp)
	.loc 1 103 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL8:
	.loc 1 104 19
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 106 24
	movq	-40(%rbp), %rax
	.loc 1 106 5
	movq	%rax, %rdi
	movabsq	$list_assert_sanity, %rax
	call	*%rax
.LVL9:
	.loc 1 108 10
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 108 19
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 109 12
	movq	-16(%rbp), %rax
.L37:
	.loc 1 110 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ktqueue_dequeue, .-ktqueue_dequeue
	.section	.rodata
	.align 8
.LC5:
	.string	"thr->kt_qlink.l_next && thr->kt_qlink.l_prev"
	.text
	.type	ktqueue_remove, @function
ktqueue_remove:
.LFB17:
	.loc 1 118 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 119 5
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L39
	.loc 1 119 5 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L40
.L39:
	.loc 1 119 5 discriminator 3
	movabsq	$.LC5, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.6, %rax
	movq	%rax, %rdx
	movl	$119, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL10:
.L40:
	.loc 1 120 5 is_stmt 1
	movq	-16(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL11:
	.loc 1 121 19
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 122 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 122 19
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 123 24
	movq	-8(%rbp), %rax
	.loc 1 123 5
	movq	%rax, %rdi
	movabsq	$list_assert_sanity, %rax
	call	*%rax
.LVL12:
	.loc 1 124 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ktqueue_remove, .-ktqueue_remove
	.globl	sched_queue_empty
	.type	sched_queue_empty, @function
sched_queue_empty:
.LFB18:
	.loc 1 133 49
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 133 63
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 133 73
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	.loc 1 133 79
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sched_queue_empty, .-sched_queue_empty
	.globl	sched_init
	.type	sched_init, @function
sched_init:
.LFB19:
	.loc 1 143 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 144 22
	movabsq	$curcore, %rax
	movq	(%rax), %rax
	movabsq	$csd_vaddr_table, %rdx
	movq	(%rdx,%rax,8), %rax
	movabsq	$kt_runq, %rdx
	andl	$4095, %edx
	addq	%rdx, %rax
	.loc 1 144 5
	movq	%rax, %rdi
	movabsq	$sched_queue_init, %rax
	call	*%rax
.LVL13:
	.loc 1 145 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	sched_init, .-sched_init
	.globl	sched_cancellable_sleep_on
	.type	sched_cancellable_sleep_on, @function
sched_cancellable_sleep_on:
.LFB20:
	.loc 1 161 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 163 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	.loc 1 163 8
	testq	%rax, %rax
	je	.L45
	.loc 1 165 16
	movq	$-4, %rax
	jmp	.L46
.L45:
	.loc 1 168 11
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 168 22
	movl	$4, 96(%rax)
	.loc 1 169 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_switch, %rax
	call	*%rax
.LVL14:
	.loc 1 171 18
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	.loc 1 171 42
	testq	%rax, %rax
	je	.L47
	.loc 1 171 42 is_stmt 0 discriminator 1
	movq	$-4, %rax
	jmp	.L46
.L47:
	.loc 1 171 42 discriminator 2
	movl	$0, %eax
.L46:
	.loc 1 174 1 is_stmt 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	sched_cancellable_sleep_on, .-sched_cancellable_sleep_on
	.section	.rodata
.LC6:
	.string	"thr->kt_wchan"
	.text
	.globl	sched_cancel
	.type	sched_cancel, @function
sched_cancel:
.LFB21:
	.loc 1 183 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 185 12
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 185 8
	cmpl	$4, %eax
	jne	.L50
	.loc 1 187 9
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	.loc 1 187 9 is_stmt 0 discriminator 1
	movabsq	$.LC6, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.5, %rax
	movq	%rax, %rdx
	movl	$187, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL15:
.L51:
	.loc 1 188 27 is_stmt 1
	movq	-8(%rbp), %rax
	movq	$1, 80(%rax)
	.loc 1 189 9
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$ktqueue_remove, %rax
	call	*%rax
.LVL16:
	.loc 1 190 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_make_runnable, %rax
	call	*%rax
.LVL17:
	.loc 1 197 1
	jmp	.L53
.L50:
	.loc 1 194 27
	movq	-8(%rbp), %rax
	movq	$1, 80(%rax)
.L53:
	.loc 1 197 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	sched_cancel, .-sched_cancel
	.section	.rodata
.LC7:
	.string	"curthr->kt_state != KT_ON_CPU"
	.text
	.globl	sched_switch
	.type	sched_switch, @function
sched_switch:
.LFB22:
	.loc 1 234 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 236 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	jne	.L55
	.loc 1 236 5 is_stmt 0 discriminator 1
	movabsq	$.LC7, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.4, %rax
	movq	%rax, %rdx
	movl	$236, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL18:
.L55:
.LBB21:
.LBB22:
	.loc 1 31 9 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 31 8
	testq	%rax, %rax
	je	.L62
	.loc 1 32 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rdx
	.loc 1 32 36
	addq	$1, %rdx
	movq	%rdx, 152(%rax)
.L62:
	.loc 1 33 1
	nop
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 3 91 37
#APP
# 91 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 3 91 62
#NO_APP
	nop
.LBE24:
.LBE23:
	.loc 1 240 28
	movl	$0, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL19:
	.loc 1 240 22
	movb	%al, -1(%rbp)
	.loc 1 242 22
	movabsq	$curcore, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 56(%rdx)
	.loc 1 244 34
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 244 27
	movq	%rax, %rdx
	.loc 1 244 25
	movabsq	$last_thread_context, %rax
	movq	%rdx, (%rax)
	.loc 1 245 27
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 245 5
	movq	%rax, %rdx
	movabsq	$curcore+8, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$context_switch, %rax
	call	*%rax
.LVL20:
	.loc 1 246 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	.loc 1 246 5 is_stmt 0 discriminator 1
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.4, %rax
	movq	%rax, %rdx
	movl	$246, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL21:
.L57:
	.loc 1 248 5 is_stmt 1
	movzbl	-1(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL22:
.LBB25:
.LBB26:
	.loc 3 89 36
#APP
# 89 "include/main/interrupt.h" 1
	sti
# 0 "" 2
	.loc 3 89 61
#NO_APP
	nop
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	.loc 1 37 9
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 37 8
	testq	%rax, %rax
	je	.L63
	.loc 1 39 9
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.9, %rax
	movq	%rax, %rdx
	movl	$39, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL23:
.L59:
	.loc 1 40 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	152(%rax), %rdx
	.loc 1 40 36
	subq	$1, %rdx
	movq	%rdx, 152(%rax)
.L63:
	.loc 1 42 1
	nop
.LBE28:
.LBE27:
	.loc 1 253 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	sched_switch, .-sched_switch
	.section	.rodata
.LC8:
	.string	"curthr->kt_state == KT_ON_CPU"
	.text
	.globl	sched_yield
	.type	sched_yield, @function
sched_yield:
.LFB23:
	.loc 1 260 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 261 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	je	.L65
	.loc 1 261 5 is_stmt 0 discriminator 1
	movabsq	$.LC8, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$261, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL24:
.L65:
	.loc 1 262 11 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 262 22
	movl	$2, 96(%rax)
	.loc 1 263 5
	movabsq	$kt_runq, %rax
	movq	%rax, %rdi
	movabsq	$sched_switch, %rax
	call	*%rax
.LVL25:
	.loc 1 264 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	sched_yield, .-sched_yield
	.section	.rodata
	.align 8
.LC9:
	.string	"thr != curthr && \"can't make the current thread runnable - already on CPU!\""
	.text
	.globl	sched_make_runnable
	.type	sched_make_runnable, @function
sched_make_runnable:
.LFB24:
	.loc 1 277 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 279 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L67
	.loc 1 279 5 is_stmt 0 discriminator 1
	movabsq	$.LC9, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$279, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL26:
.L67:
	.loc 1 281 19 is_stmt 1
	movl	$224, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL27:
	movb	%al, -1(%rbp)
	.loc 1 284 19
	movq	-24(%rbp), %rax
	movl	$2, 96(%rax)
	.loc 1 285 5
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movabsq	$kt_runq, %rax
	movq	%rax, %rdi
	movabsq	$ktqueue_enqueue, %rax
	call	*%rax
.LVL28:
	.loc 1 286 5
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL29:
	.loc 1 288 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	sched_make_runnable, .-sched_make_runnable
	.globl	sched_sleep_on
	.type	sched_sleep_on, @function
sched_sleep_on:
.LFB25:
	.loc 1 304 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 306 19
	movl	$224, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL30:
	movb	%al, -1(%rbp)
	.loc 1 307 11
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 307 22
	movl	$3, 96(%rax)
	.loc 1 308 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_switch, %rax
	call	*%rax
.LVL31:
	.loc 1 309 5
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL32:
	.loc 1 311 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	sched_sleep_on, .-sched_sleep_on
	.section	.rodata
	.align 8
.LC10:
	.string	"(thr->kt_state == KT_SLEEP) || (thr->kt_state == KT_SLEEP_CANCELLABLE)"
	.text
	.globl	sched_wakeup_on
	.type	sched_wakeup_on, @function
sched_wakeup_on:
.LFB26:
	.loc 1 325 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 327 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$ktqueue_dequeue, %rax
	call	*%rax
.LVL33:
	movq	%rax, -8(%rbp)
	.loc 1 328 8
	cmpq	$0, -32(%rbp)
	je	.L70
	.loc 1 330 14
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L70:
	.loc 1 332 8
	cmpq	$0, -8(%rbp)
	je	.L71
	.loc 1 334 9
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$3, %eax
	je	.L71
	.loc 1 334 9 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$4, %eax
	je	.L71
	.loc 1 334 9 discriminator 2
	movabsq	$.LC10, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$334, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL34:
.L71:
	.loc 1 338 8 is_stmt 1
	cmpq	$0, -8(%rbp)
	je	.L73
	.loc 1 342 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_make_runnable, %rax
	call	*%rax
.LVL35:
.L73:
	.loc 1 345 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	sched_wakeup_on, .-sched_wakeup_on
	.globl	sched_broadcast_on
	.type	sched_broadcast_on, @function
sched_broadcast_on:
.LFB27:
	.loc 1 351 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 353 16
	movq	$0, -8(%rbp)
.L75:
	.loc 1 356 9 discriminator 1
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$sched_wakeup_on, %rax
	call	*%rax
.LVL36:
	.loc 1 357 14 discriminator 1
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L75
	.loc 1 359 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	sched_broadcast_on, .-sched_broadcast_on
	.section	.rodata
.LC11:
	.string	"!intr_enabled()"
	.align 8
.LC12:
	.string	"!curthr || curthr->kt_state != KT_ON_CPU"
	.align 8
.LC13:
	.string	"next_thread->kt_state == KT_RUNNABLE"
.LC14:
	.string	"next_thread->kt_proc"
	.align 8
.LC15:
	.string	"mapped_paddr == expected_paddr"
	.text
	.globl	core_switch
	.type	core_switch, @function
core_switch:
.LFB28:
	.loc 1 375 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
.L87:
.LBB29:
.LBB30:
.LBB31:
	.loc 3 84 5
#APP
# 84 "include/main/interrupt.h" 1
	pushf; pop %rax; and $0x200, %rax;
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	.loc 3 86 12
	movq	-40(%rbp), %rax
.LBE31:
.LBE30:
	.loc 1 378 9
	testq	%rax, %rax
	je	.L78
	.loc 1 378 9 is_stmt 0 discriminator 1
	movabsq	$.LC11, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$378, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL37:
.L78:
	.loc 1 379 9 is_stmt 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	.loc 1 379 9 is_stmt 0 discriminator 1
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	jne	.L79
	.loc 1 379 9 discriminator 2
	movabsq	$.LC12, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$379, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL38:
.L79:
	.loc 1 381 20 is_stmt 1
	movabsq	$curcore, %rax
	movq	56(%rax), %rax
	.loc 1 381 12
	testq	%rax, %rax
	je	.L80
	.loc 1 383 13
	movabsq	$curthr, %rax
	movq	(%rax), %rdx
	movabsq	$curcore, %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$ktqueue_enqueue, %rax
	call	*%rax
.LVL39:
.L80:
	.loc 1 386 17
	movabsq	$curproc, %rax
	movabsq	$idleproc, %rbx
	movq	%rbx, (%rax)
	.loc 1 387 16
	movabsq	$curthr, %rax
	movq	$0, (%rax)
	.loc 1 389 20
	movq	$0, -48(%rbp)
.L83:
	.loc 1 392 27
	movabsq	$kt_runq, %rax
	movq	%rax, %rdi
	movabsq	$ktqueue_dequeue, %rax
	call	*%rax
.LVL40:
	.loc 1 392 25
	movq	%rax, -48(%rbp)
	.loc 1 394 17
	movq	-48(%rbp), %rax
	.loc 1 394 16
	testq	%rax, %rax
	jne	.L89
.LBB32:
.LBB33:
	.loc 3 105 5
#APP
# 105 "include/main/interrupt.h" 1
	sti; hlt
# 0 "" 2
	.loc 3 106 1
#NO_APP
	nop
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 3 91 37
#APP
# 91 "include/main/interrupt.h" 1
	cli
# 0 "" 2
	.loc 3 91 62
#NO_APP
	nop
.LBE35:
.LBE34:
	.loc 1 392 25
	jmp	.L83
.L89:
	.loc 1 395 17
	nop
	.loc 1 401 9
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L84
	.loc 1 401 9 is_stmt 0 discriminator 1
	movabsq	$.LC13, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$401, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL41:
.L84:
	.loc 1 402 9 is_stmt 1
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	.loc 1 402 9 is_stmt 0 discriminator 1
	movabsq	$.LC14, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$402, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL42:
.L85:
	.loc 1 406 46 is_stmt 1
	movq	-48(%rbp), %rax
	.loc 1 406 9
	movq	24(%rax), %rax
	movq	%rax, %rdi
	movabsq	$map_in_core_specific_data, %rax
	call	*%rax
.LVL43:
	.loc 1 410 34
	leaq	-48(%rbp), %rdx
	.loc 1 411 24
	movq	-48(%rbp), %rax
	.loc 1 410 34
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_virt_to_phys_helper, %rax
	call	*%rax
.LVL44:
	movq	%rax, -24(%rbp)
	.loc 1 413 13
	leaq	-48(%rbp), %rbx
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL45:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_virt_to_phys_helper, %rax
	call	*%rax
.LVL46:
	movq	%rax, -32(%rbp)
	.loc 1 414 9
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L86
	.loc 1 414 9 is_stmt 0 discriminator 1
	movabsq	$.LC15, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$414, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL47:
.L86:
	.loc 1 416 16 is_stmt 1
	movq	-48(%rbp), %rax
	movabsq	$curthr, %rdx
	movq	%rax, (%rdx)
	.loc 1 417 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 417 26
	movl	$1, 96(%rax)
	.loc 1 418 25
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	.loc 1 418 17
	movabsq	$curproc, %rdx
	movq	%rax, (%rdx)
	.loc 1 419 48
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 419 9
	movq	%rax, %rsi
	movabsq	$curcore+8, %rax
	movq	%rax, %rdi
	movabsq	$context_switch, %rax
	call	*%rax
.LVL48:
.LBE29:
	.loc 1 377 5
	jmp	.L87
	.cfi_endproc
.LFE28:
	.size	core_switch, .-core_switch
	.section	.rodata
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 18
__func__.9:
	.string	"preemption_enable"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"preemption_reset"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 16
__func__.7:
	.string	"ktqueue_enqueue"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 15
__func__.6:
	.string	"ktqueue_remove"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"sched_cancel"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"sched_switch"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"sched_yield"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"sched_make_runnable"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"sched_wakeup_on"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"core_switch"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/proc/sched.h"
	.file 7 "include/proc/kthread.h"
	.file 8 "include/vm/vmmap.h"
	.file 9 "include/proc/proc.h"
	.file 10 "include/mm/pagetable.h"
	.file 11 "include/proc/context.h"
	.file 12 "include/proc/core.h"
	.file 13 "include/main/smp.h"
	.file 14 "include/globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1188
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF892
	.byte	0xc
	.long	.LASF893
	.long	.LASF894
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF759
	.uleb128 0x3
	.long	.LASF763
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.long	0x49
	.uleb128 0x4
	.long	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF760
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF761
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF762
	.uleb128 0x3
	.long	.LASF764
	.byte	0x4
	.byte	0xd
	.byte	0x14
	.long	0x6a
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF765
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF766
	.uleb128 0x3
	.long	.LASF767
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x8b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF768
	.uleb128 0x3
	.long	.LASF769
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x8b
	.uleb128 0x3
	.long	.LASF770
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x7f
	.uleb128 0x3
	.long	.LASF771
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0xc3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF772
	.uleb128 0x7
	.long	0xbc
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF777
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0xf2
	.uleb128 0xa
	.long	.LASF773
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0xf2
	.byte	0
	.uleb128 0xa
	.long	.LASF774
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0xf2
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xca
	.uleb128 0x3
	.long	.LASF775
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xca
	.uleb128 0x7
	.long	0xf8
	.uleb128 0x3
	.long	.LASF776
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xca
	.uleb128 0x9
	.long	.LASF778
	.byte	0x18
	.byte	0x6
	.byte	0xf
	.byte	0x10
	.long	0x13d
	.uleb128 0xa
	.long	.LASF779
	.byte	0x6
	.byte	0x11
	.byte	0xc
	.long	0xf8
	.byte	0
	.uleb128 0xa
	.long	.LASF780
	.byte	0x6
	.byte	0x12
	.byte	0xc
	.long	0x9e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF781
	.byte	0x6
	.byte	0x13
	.byte	0x3
	.long	0x115
	.uleb128 0x9
	.long	.LASF782
	.byte	0xa0
	.byte	0x7
	.byte	0x21
	.byte	0x10
	.long	0x1f3
	.uleb128 0xa
	.long	.LASF783
	.byte	0x7
	.byte	0x23
	.byte	0xf
	.long	0x3ba
	.byte	0
	.uleb128 0xa
	.long	.LASF784
	.byte	0x7
	.byte	0x24
	.byte	0xb
	.long	0x472
	.byte	0x30
	.uleb128 0xa
	.long	.LASF785
	.byte	0x7
	.byte	0x25
	.byte	0xb
	.long	0xc8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF786
	.byte	0x7
	.byte	0x26
	.byte	0xa
	.long	0x78
	.byte	0x40
	.uleb128 0xa
	.long	.LASF787
	.byte	0x7
	.byte	0x27
	.byte	0x12
	.long	0x314
	.byte	0x48
	.uleb128 0xa
	.long	.LASF788
	.byte	0x7
	.byte	0x29
	.byte	0xa
	.long	0x78
	.byte	0x50
	.uleb128 0xa
	.long	.LASF789
	.byte	0x7
	.byte	0x2a
	.byte	0x10
	.long	0x408
	.byte	0x58
	.uleb128 0xa
	.long	.LASF790
	.byte	0x7
	.byte	0x2b
	.byte	0x15
	.long	0x466
	.byte	0x60
	.uleb128 0xa
	.long	.LASF791
	.byte	0x7
	.byte	0x2d
	.byte	0x11
	.long	0x109
	.byte	0x68
	.uleb128 0xa
	.long	.LASF792
	.byte	0x7
	.byte	0x2f
	.byte	0x9
	.long	0x109
	.byte	0x78
	.uleb128 0xa
	.long	.LASF793
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.long	0xf8
	.byte	0x88
	.uleb128 0xa
	.long	.LASF794
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.long	0x7f
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f9
	.uleb128 0xb
	.long	.LASF842
	.byte	0x1
	.uleb128 0x9
	.long	.LASF795
	.byte	0x18
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.long	0x227
	.uleb128 0xa
	.long	.LASF796
	.byte	0x8
	.byte	0x10
	.byte	0xc
	.long	0xf8
	.byte	0
	.uleb128 0xa
	.long	.LASF797
	.byte	0x8
	.byte	0x11
	.byte	0x12
	.long	0x314
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF798
	.value	0x2a0
	.byte	0x9
	.byte	0x1b
	.byte	0x10
	.long	0x314
	.uleb128 0xa
	.long	.LASF799
	.byte	0x9
	.byte	0x1d
	.byte	0xb
	.long	0xaa
	.byte	0
	.uleb128 0xa
	.long	.LASF800
	.byte	0x9
	.byte	0x1e
	.byte	0xa
	.long	0x4ab
	.byte	0x4
	.uleb128 0xd
	.long	.LASF801
	.byte	0x9
	.byte	0x20
	.byte	0xc
	.long	0xf8
	.value	0x108
	.uleb128 0xd
	.long	.LASF802
	.byte	0x9
	.byte	0x21
	.byte	0xc
	.long	0xf8
	.value	0x118
	.uleb128 0xd
	.long	.LASF803
	.byte	0x9
	.byte	0x22
	.byte	0x12
	.long	0x314
	.value	0x128
	.uleb128 0xd
	.long	.LASF804
	.byte	0x9
	.byte	0x24
	.byte	0x11
	.long	0x109
	.value	0x130
	.uleb128 0xd
	.long	.LASF805
	.byte	0x9
	.byte	0x25
	.byte	0x11
	.long	0x109
	.value	0x140
	.uleb128 0xd
	.long	.LASF806
	.byte	0x9
	.byte	0x27
	.byte	0xa
	.long	0x78
	.value	0x150
	.uleb128 0xd
	.long	.LASF807
	.byte	0x9
	.byte	0x28
	.byte	0x12
	.long	0x49f
	.value	0x158
	.uleb128 0xd
	.long	.LASF808
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.long	0x3b4
	.value	0x160
	.uleb128 0xd
	.long	.LASF809
	.byte	0x9
	.byte	0x31
	.byte	0xf
	.long	0x13d
	.value	0x168
	.uleb128 0xd
	.long	.LASF810
	.byte	0x9
	.byte	0x34
	.byte	0x12
	.long	0x4bb
	.value	0x180
	.uleb128 0xd
	.long	.LASF811
	.byte	0x9
	.byte	0x35
	.byte	0x13
	.long	0x1f3
	.value	0x280
	.uleb128 0xd
	.long	.LASF812
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.long	0xc8
	.value	0x288
	.uleb128 0xd
	.long	.LASF813
	.byte	0x9
	.byte	0x46
	.byte	0xb
	.long	0xc8
	.value	0x290
	.uleb128 0xd
	.long	.LASF814
	.byte	0x9
	.byte	0x47
	.byte	0x13
	.long	0x31a
	.value	0x298
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x227
	.uleb128 0x6
	.byte	0x8
	.long	0x1ff
	.uleb128 0xe
	.string	"pt"
	.value	0x1000
	.byte	0xa
	.byte	0x18
	.byte	0x10
	.long	0x33b
	.uleb128 0xa
	.long	.LASF815
	.byte	0xa
	.byte	0x1a
	.byte	0xf
	.long	0x33b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x92
	.long	0x34c
	.uleb128 0x10
	.long	0x8b
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF816
	.byte	0xa
	.byte	0x1b
	.byte	0x16
	.long	0x320
	.uleb128 0x9
	.long	.LASF817
	.byte	0x30
	.byte	0xb
	.byte	0xd
	.byte	0x10
	.long	0x3b4
	.uleb128 0xa
	.long	.LASF818
	.byte	0xb
	.byte	0xf
	.byte	0xf
	.long	0x92
	.byte	0
	.uleb128 0xa
	.long	.LASF819
	.byte	0xb
	.byte	0x10
	.byte	0xf
	.long	0x92
	.byte	0x8
	.uleb128 0xa
	.long	.LASF820
	.byte	0xb
	.byte	0x11
	.byte	0xf
	.long	0x92
	.byte	0x10
	.uleb128 0xa
	.long	.LASF821
	.byte	0xb
	.byte	0x14
	.byte	0xa
	.long	0x3b4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF822
	.byte	0xb
	.byte	0x18
	.byte	0xf
	.long	0x92
	.byte	0x20
	.uleb128 0xa
	.long	.LASF823
	.byte	0xb
	.byte	0x19
	.byte	0xc
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34c
	.uleb128 0x3
	.long	.LASF824
	.byte	0xb
	.byte	0x1a
	.byte	0x3
	.long	0x358
	.uleb128 0x9
	.long	.LASF825
	.byte	0x48
	.byte	0xc
	.byte	0x7
	.byte	0x10
	.long	0x408
	.uleb128 0xa
	.long	.LASF826
	.byte	0xc
	.byte	0x9
	.byte	0xa
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF827
	.byte	0xc
	.byte	0xa
	.byte	0xf
	.long	0x3ba
	.byte	0x8
	.uleb128 0xa
	.long	.LASF828
	.byte	0xc
	.byte	0xc
	.byte	0x10
	.long	0x408
	.byte	0x38
	.uleb128 0xa
	.long	.LASF829
	.byte	0xc
	.byte	0xe
	.byte	0xf
	.long	0x92
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13d
	.uleb128 0x3
	.long	.LASF830
	.byte	0xc
	.byte	0xf
	.byte	0x3
	.long	0x3c6
	.uleb128 0xf
	.long	0x92
	.long	0x425
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF845
	.byte	0xd
	.byte	0xe
	.byte	0x12
	.long	0x41a
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.long	0x466
	.uleb128 0x14
	.long	.LASF831
	.byte	0
	.uleb128 0x14
	.long	.LASF832
	.byte	0x1
	.uleb128 0x14
	.long	.LASF833
	.byte	0x2
	.uleb128 0x14
	.long	.LASF834
	.byte	0x3
	.uleb128 0x14
	.long	.LASF835
	.byte	0x4
	.uleb128 0x14
	.long	.LASF836
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF837
	.byte	0x7
	.byte	0x1c
	.byte	0x3
	.long	0x433
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0x3
	.long	.LASF838
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.long	0x149
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.long	0x49f
	.uleb128 0x14
	.long	.LASF839
	.byte	0
	.uleb128 0x14
	.long	.LASF840
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF841
	.byte	0x9
	.byte	0x18
	.byte	0x3
	.long	0x484
	.uleb128 0xf
	.long	0xbc
	.long	0x4bb
	.uleb128 0x15
	.long	0x8b
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.long	0x4cb
	.long	0x4cb
	.uleb128 0x15
	.long	0x8b
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d1
	.uleb128 0xb
	.long	.LASF843
	.byte	0x1
	.uleb128 0x3
	.long	.LASF844
	.byte	0x9
	.byte	0x49
	.byte	0x3
	.long	0x227
	.uleb128 0x12
	.long	.LASF846
	.byte	0x9
	.byte	0xb0
	.byte	0xf
	.long	0x4d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF847
	.byte	0xe
	.byte	0x9
	.byte	0xf
	.long	0x40e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF848
	.byte	0xe
	.byte	0xa
	.byte	0x10
	.long	0x50d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x4d7
	.uleb128 0x12
	.long	.LASF849
	.byte	0xe
	.byte	0xb
	.byte	0x13
	.long	0x521
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x478
	.uleb128 0x16
	.long	.LASF850
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.long	0x13d
	.byte	0x9
	.byte	0x3
	.quad	kt_runq
	.uleb128 0x16
	.long	.LASF851
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.long	0x553
	.byte	0x9
	.byte	0x3
	.quad	last_thread_context
	.uleb128 0x6
	.byte	0x8
	.long	0x3ba
	.uleb128 0x17
	.byte	0x1
	.long	.LASF852
	.byte	0xa
	.byte	0x4a
	.byte	0x9
	.long	0x3b4
	.byte	0x1
	.long	0x56d
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF855
	.byte	0xa
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.long	0x92
	.byte	0x1
	.long	0x58b
	.uleb128 0x1a
	.long	0x3b4
	.uleb128 0x1a
	.long	0x92
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF853
	.byte	0xd
	.byte	0x10
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x5a0
	.uleb128 0x1a
	.long	0x3b4
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF854
	.byte	0xb
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x5ba
	.uleb128 0x1a
	.long	0x553
	.uleb128 0x1a
	.long	0x553
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF856
	.byte	0x3
	.byte	0x70
	.byte	0x9
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0x5d3
	.uleb128 0x1a
	.long	0x38
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF857
	.byte	0x5
	.byte	0xa3
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x5e8
	.uleb128 0x1a
	.long	0x5e8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x109
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF858
	.byte	0x5
	.byte	0x94
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x608
	.uleb128 0x1a
	.long	0x608
	.uleb128 0x1a
	.long	0x5e8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF859
	.byte	0x5
	.byte	0x84
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x623
	.uleb128 0x1a
	.long	0x623
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x104
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF860
	.byte	0x5
	.byte	0x6c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x63e
	.uleb128 0x1a
	.long	0x608
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF861
	.byte	0x2
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x664
	.uleb128 0x1a
	.long	0xb6
	.uleb128 0x1a
	.long	0x6a
	.uleb128 0x1a
	.long	0xb6
	.uleb128 0x1a
	.long	0xb6
	.uleb128 0x18
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF870
	.byte	0x1
	.value	0x176
	.byte	0x6
	.quad	.LFB28
	.quad	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7d0
	.uleb128 0x1e
	.long	.LASF867
	.long	0x7e0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x1f
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x20
	.long	.LASF862
	.byte	0x1
	.value	0x185
	.byte	0x14
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF863
	.byte	0x1
	.value	0x19a
	.byte	0x13
	.long	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF864
	.byte	0x1
	.value	0x19c
	.byte	0x13
	.long	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	0xf11
	.quad	.LBB30
	.quad	.LBE30
	.byte	0x1
	.value	0x17a
	.byte	0x9
	.long	0x700
	.uleb128 0x22
	.long	0xf22
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.long	0xef6
	.quad	.LBB32
	.quad	.LBE32
	.byte	0x1
	.value	0x18d
	.byte	0xd
	.uleb128 0x23
	.long	0xeff
	.quad	.LBB34
	.quad	.LBE34
	.byte	0x1
	.value	0x18e
	.byte	0xd
	.uleb128 0x24
	.quad	.LVL37
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL38
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL39
	.long	0xd78
	.uleb128 0x24
	.quad	.LVL40
	.long	0xcda
	.uleb128 0x24
	.quad	.LVL41
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL42
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL43
	.long	0x58b
	.uleb128 0x24
	.quad	.LVL44
	.long	0x56d
	.uleb128 0x24
	.quad	.LVL45
	.long	0x559
	.uleb128 0x24
	.quad	.LVL46
	.long	0x56d
	.uleb128 0x24
	.quad	.LVL47
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL48
	.long	0x5a0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0x7e0
	.uleb128 0x15
	.long	0x8b
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.long	0x7d0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF865
	.byte	0x1
	.value	0x15e
	.byte	0x6
	.byte	0x1
	.quad	.LFB27
	.quad	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x833
	.uleb128 0x26
	.string	"q"
	.byte	0x1
	.value	0x15e
	.byte	0x24
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"thr"
	.byte	0x1
	.value	0x161
	.byte	0x10
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LVL36
	.long	0x833
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF866
	.byte	0x1
	.value	0x144
	.byte	0x6
	.byte	0x1
	.quad	.LFB26
	.quad	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8bf
	.uleb128 0x26
	.string	"q"
	.byte	0x1
	.value	0x144
	.byte	0x21
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"ktp"
	.byte	0x1
	.value	0x144
	.byte	0x30
	.long	0x8bf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"thr"
	.byte	0x1
	.value	0x147
	.byte	0x10
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF867
	.long	0x8d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x24
	.quad	.LVL33
	.long	0xcda
	.uleb128 0x24
	.quad	.LVL34
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL35
	.long	0x942
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x521
	.uleb128 0xf
	.long	0xc3
	.long	0x8d5
	.uleb128 0x15
	.long	0x8b
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.long	0x8c5
	.uleb128 0x25
	.byte	0x1
	.long	.LASF868
	.byte	0x1
	.value	0x12f
	.byte	0x6
	.byte	0x1
	.quad	.LFB25
	.quad	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x942
	.uleb128 0x26
	.string	"q"
	.byte	0x1
	.value	0x12f
	.byte	0x20
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"ipl"
	.byte	0x1
	.value	0x132
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x24
	.quad	.LVL30
	.long	0x5ba
	.uleb128 0x24
	.quad	.LVL31
	.long	0xa32
	.uleb128 0x24
	.quad	.LVL32
	.long	0x5ba
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF869
	.byte	0x1
	.value	0x114
	.byte	0x6
	.byte	0x1
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9cd
	.uleb128 0x26
	.string	"thr"
	.byte	0x1
	.value	0x114
	.byte	0x25
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF867
	.long	0x9dd
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x27
	.string	"ipl"
	.byte	0x1
	.value	0x119
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x24
	.quad	.LVL26
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL27
	.long	0x5ba
	.uleb128 0x24
	.quad	.LVL28
	.long	0xd78
	.uleb128 0x24
	.quad	.LVL29
	.long	0x5ba
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0x9dd
	.uleb128 0x15
	.long	0x8b
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	0x9cd
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF871
	.byte	0x1
	.value	0x103
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa32
	.uleb128 0x1e
	.long	.LASF867
	.long	0x7e0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x24
	.quad	.LVL24
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL25
	.long	0xa32
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF872
	.byte	0x1
	.byte	0xe9
	.byte	0x6
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb39
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0xe9
	.byte	0x1e
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF867
	.long	0xb49
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.4
	.uleb128 0x2a
	.string	"ipl"
	.byte	0x1
	.byte	0xf0
	.byte	0x16
	.long	0x44
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2b
	.long	0xeec
	.quad	.LBB21
	.quad	.LBE21
	.byte	0x1
	.byte	0xee
	.byte	0x5
	.uleb128 0x2b
	.long	0xeff
	.quad	.LBB23
	.quad	.LBE23
	.byte	0x1
	.byte	0xef
	.byte	0x5
	.uleb128 0x2b
	.long	0xf08
	.quad	.LBB25
	.quad	.LBE25
	.byte	0x1
	.byte	0xf9
	.byte	0x5
	.uleb128 0x2c
	.long	0xeb4
	.quad	.LBB27
	.quad	.LBE27
	.byte	0x1
	.byte	0xfa
	.byte	0x5
	.long	0xaf7
	.uleb128 0x24
	.quad	.LVL23
	.long	0x63e
	.byte	0
	.uleb128 0x24
	.quad	.LVL18
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL19
	.long	0x5ba
	.uleb128 0x24
	.quad	.LVL20
	.long	0x5a0
	.uleb128 0x24
	.quad	.LVL21
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL22
	.long	0x5ba
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0xb49
	.uleb128 0x15
	.long	0x8b
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0xb39
	.uleb128 0x28
	.byte	0x1
	.long	.LASF874
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbba
	.uleb128 0x2d
	.string	"thr"
	.byte	0x1
	.byte	0xb6
	.byte	0x1e
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF867
	.long	0xb49
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.5
	.uleb128 0x24
	.quad	.LVL15
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL16
	.long	0xc4b
	.uleb128 0x24
	.quad	.LVL17
	.long	0x942
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF895
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.byte	0x1
	.long	0x78
	.quad	.LFB20
	.quad	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbfc
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0xa0
	.byte	0x2c
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LVL14
	.long	0xa32
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF875
	.byte	0x1
	.byte	0x8e
	.byte	0x6
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc2b
	.uleb128 0x24
	.quad	.LVL13
	.long	0xdff
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF876
	.byte	0x1
	.byte	0x85
	.byte	0xd
	.byte	0x1
	.long	0x78
	.byte	0x1
	.long	0xc4b
	.uleb128 0x30
	.long	.LASF873
	.byte	0x1
	.byte	0x85
	.byte	0x2a
	.long	0x408
	.byte	0
	.uleb128 0x31
	.long	.LASF878
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcc5
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0x75
	.byte	0x27
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"thr"
	.byte	0x1
	.byte	0x75
	.byte	0x39
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF867
	.long	0xcd5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.6
	.uleb128 0x24
	.quad	.LVL10
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL11
	.long	0x5d3
	.uleb128 0x24
	.quad	.LVL12
	.long	0x60e
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0xcd5
	.uleb128 0x15
	.long	0x8b
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.long	0xcc5
	.uleb128 0x32
	.long	.LASF885
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.byte	0x1
	.long	0x521
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd78
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0x5c
	.byte	0x2e
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF877
	.byte	0x1
	.byte	0x65
	.byte	0x12
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"thr"
	.byte	0x1
	.byte	0x66
	.byte	0x10
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0xc2b
	.quad	.LBB19
	.quad	.LBE19
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.long	0xd50
	.uleb128 0x33
	.long	0xc3e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.quad	.LVL7
	.long	0x60e
	.uleb128 0x24
	.quad	.LVL8
	.long	0x5d3
	.uleb128 0x24
	.quad	.LVL9
	.long	0x60e
	.byte	0
	.uleb128 0x31
	.long	.LASF879
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdff
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0x49
	.byte	0x28
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"thr"
	.byte	0x1
	.byte	0x49
	.byte	0x3a
	.long	0x521
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF867
	.long	0x8d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.7
	.uleb128 0x24
	.quad	.LVL3
	.long	0x63e
	.uleb128 0x24
	.quad	.LVL4
	.long	0x60e
	.uleb128 0x24
	.quad	.LVL5
	.long	0x5ee
	.uleb128 0x24
	.quad	.LVL6
	.long	0x60e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF880
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe3d
	.uleb128 0x29
	.long	.LASF873
	.byte	0x1
	.byte	0x3e
	.byte	0x22
	.long	0x408
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LVL2
	.long	0x629
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF896
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.long	0x78
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.long	.LASF881
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe9f
	.uleb128 0x1e
	.long	.LASF867
	.long	0xeaf
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.8
	.uleb128 0x24
	.quad	.LVL1
	.long	0x63e
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0xeaf
	.uleb128 0x15
	.long	0x8b
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0xe9f
	.uleb128 0x36
	.byte	0x1
	.long	.LASF897
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.byte	0x1
	.long	0xed7
	.uleb128 0x1e
	.long	.LASF867
	.long	0xee7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.9
	.byte	0
	.uleb128 0xf
	.long	0xc3
	.long	0xee7
	.uleb128 0x15
	.long	0x8b
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.long	0xed7
	.uleb128 0x37
	.byte	0x1
	.long	.LASF898
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.byte	0x1
	.uleb128 0x38
	.long	.LASF882
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.byte	0x1
	.uleb128 0x38
	.long	.LASF883
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.uleb128 0x38
	.long	.LASF884
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.byte	0x1
	.uleb128 0x39
	.long	.LASF899
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x7f
	.byte	0x1
	.long	0xf2f
	.uleb128 0x3a
	.long	.LASF900
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x7f
	.byte	0
	.uleb128 0x3b
	.long	.LASF886
	.byte	0x2
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf71
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x124
	.byte	0x20
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x124
	.byte	0x28
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.long	.LASF887
	.byte	0x2
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfb3
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x122
	.byte	0x1d
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x122
	.byte	0x25
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.long	.LASF888
	.byte	0x2
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xff5
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x120
	.byte	0x1e
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x120
	.byte	0x26
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.long	.LASF889
	.byte	0x2
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1037
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x11e
	.byte	0x1b
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x11e
	.byte	0x23
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.long	.LASF890
	.byte	0x2
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1079
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x11c
	.byte	0x1c
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x11c
	.byte	0x24
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.long	.LASF891
	.byte	0x2
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x78
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x10bb
	.uleb128 0x26
	.string	"l"
	.byte	0x2
	.value	0x117
	.byte	0x19
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x2
	.value	0x117
	.byte	0x21
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.long	0xf11
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x10e0
	.uleb128 0x22
	.long	0xf22
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	0xf08
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3d
	.long	0xeff
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3d
	.long	0xef6
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3d
	.long	0xeec
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x3c
	.long	0xeb4
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x116a
	.uleb128 0x24
	.quad	.LVL0
	.long	0x63e
	.byte	0
	.uleb128 0x3e
	.long	0xc2b
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x33
	.long	0xc3e
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x87
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.file 15 "include/api/syscall.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 16 "include/errno.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 17 "include/fs/vfs.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.file 18 "include/fs/open.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x12
	.byte	0x4
	.file 19 "include/proc/kmutex.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.file 20 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x8
	.long	.LASF557
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.file 21 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF577
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF578
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.file 22 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 23 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF653
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.file 24 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF671
	.byte	0x4
	.file 25 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF758
	.byte	0x4
	.file 26 "include/main/inits.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1a
	.byte	0x4
	.file 27 "include/util/time.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1b
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
	.section	.debug_macro,"G",@progbits,wm4.syscall.h.14.ad4ecaa35e83d6ccb3bcff4c33154cf8,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF377
	.byte	0x5
	.uleb128 0x12
	.long	.LASF378
	.byte	0x5
	.uleb128 0x13
	.long	.LASF379
	.byte	0x5
	.uleb128 0x14
	.long	.LASF380
	.byte	0x5
	.uleb128 0x15
	.long	.LASF381
	.byte	0x5
	.uleb128 0x16
	.long	.LASF382
	.byte	0x5
	.uleb128 0x17
	.long	.LASF383
	.byte	0x5
	.uleb128 0x18
	.long	.LASF384
	.byte	0x5
	.uleb128 0x19
	.long	.LASF385
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF386
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF387
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF388
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x5
	.uleb128 0x20
	.long	.LASF392
	.byte	0x5
	.uleb128 0x21
	.long	.LASF393
	.byte	0x5
	.uleb128 0x22
	.long	.LASF394
	.byte	0x5
	.uleb128 0x23
	.long	.LASF395
	.byte	0x5
	.uleb128 0x24
	.long	.LASF396
	.byte	0x5
	.uleb128 0x25
	.long	.LASF397
	.byte	0x5
	.uleb128 0x26
	.long	.LASF398
	.byte	0x5
	.uleb128 0x27
	.long	.LASF399
	.byte	0x5
	.uleb128 0x28
	.long	.LASF400
	.byte	0x5
	.uleb128 0x29
	.long	.LASF401
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF402
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF403
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF404
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF405
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF406
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF407
	.byte	0x5
	.uleb128 0x30
	.long	.LASF408
	.byte	0x5
	.uleb128 0x31
	.long	.LASF409
	.byte	0x5
	.uleb128 0x32
	.long	.LASF410
	.byte	0x5
	.uleb128 0x33
	.long	.LASF411
	.byte	0x5
	.uleb128 0x34
	.long	.LASF412
	.byte	0x5
	.uleb128 0x35
	.long	.LASF413
	.byte	0x5
	.uleb128 0x36
	.long	.LASF414
	.byte	0x5
	.uleb128 0x37
	.long	.LASF415
	.byte	0x5
	.uleb128 0x38
	.long	.LASF416
	.byte	0x5
	.uleb128 0x39
	.long	.LASF417
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF418
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF419
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF420
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF421
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF422
	.byte	0x5
	.uleb128 0x45
	.long	.LASF423
	.byte	0x5
	.uleb128 0x46
	.long	.LASF424
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF425
	.byte	0x5
	.uleb128 0xd
	.long	.LASF426
	.byte	0x5
	.uleb128 0xe
	.long	.LASF427
	.byte	0x5
	.uleb128 0xf
	.long	.LASF428
	.byte	0x5
	.uleb128 0x10
	.long	.LASF429
	.byte	0x5
	.uleb128 0x11
	.long	.LASF430
	.byte	0x5
	.uleb128 0x12
	.long	.LASF431
	.byte	0x5
	.uleb128 0x13
	.long	.LASF432
	.byte	0x5
	.uleb128 0x14
	.long	.LASF433
	.byte	0x5
	.uleb128 0x15
	.long	.LASF434
	.byte	0x5
	.uleb128 0x16
	.long	.LASF435
	.byte	0x5
	.uleb128 0x17
	.long	.LASF436
	.byte	0x5
	.uleb128 0x18
	.long	.LASF437
	.byte	0x5
	.uleb128 0x19
	.long	.LASF438
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF439
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF442
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF443
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF444
	.byte	0x5
	.uleb128 0x20
	.long	.LASF445
	.byte	0x5
	.uleb128 0x21
	.long	.LASF446
	.byte	0x5
	.uleb128 0x22
	.long	.LASF447
	.byte	0x5
	.uleb128 0x23
	.long	.LASF448
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
	.uleb128 0x27
	.long	.LASF452
	.byte	0x5
	.uleb128 0x28
	.long	.LASF453
	.byte	0x5
	.uleb128 0x29
	.long	.LASF454
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF455
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF456
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF457
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF458
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF459
	.byte	0x5
	.uleb128 0x30
	.long	.LASF460
	.byte	0x5
	.uleb128 0x31
	.long	.LASF461
	.byte	0x5
	.uleb128 0x32
	.long	.LASF462
	.byte	0x5
	.uleb128 0x33
	.long	.LASF463
	.byte	0x5
	.uleb128 0x34
	.long	.LASF464
	.byte	0x5
	.uleb128 0x35
	.long	.LASF465
	.byte	0x5
	.uleb128 0x36
	.long	.LASF466
	.byte	0x5
	.uleb128 0x37
	.long	.LASF467
	.byte	0x5
	.uleb128 0x38
	.long	.LASF468
	.byte	0x5
	.uleb128 0x39
	.long	.LASF469
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF470
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF471
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF472
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF473
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF474
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF475
	.byte	0x5
	.uleb128 0x40
	.long	.LASF476
	.byte	0x5
	.uleb128 0x41
	.long	.LASF477
	.byte	0x5
	.uleb128 0x42
	.long	.LASF478
	.byte	0x5
	.uleb128 0x43
	.long	.LASF479
	.byte	0x5
	.uleb128 0x44
	.long	.LASF480
	.byte	0x5
	.uleb128 0x45
	.long	.LASF481
	.byte	0x5
	.uleb128 0x47
	.long	.LASF482
	.byte	0x5
	.uleb128 0x49
	.long	.LASF483
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF484
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF485
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF486
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF487
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF488
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF489
	.byte	0x5
	.uleb128 0x50
	.long	.LASF490
	.byte	0x5
	.uleb128 0x51
	.long	.LASF491
	.byte	0x5
	.uleb128 0x52
	.long	.LASF492
	.byte	0x5
	.uleb128 0x53
	.long	.LASF493
	.byte	0x5
	.uleb128 0x54
	.long	.LASF494
	.byte	0x5
	.uleb128 0x55
	.long	.LASF495
	.byte	0x5
	.uleb128 0x56
	.long	.LASF496
	.byte	0x5
	.uleb128 0x57
	.long	.LASF497
	.byte	0x5
	.uleb128 0x58
	.long	.LASF498
	.byte	0x5
	.uleb128 0x59
	.long	.LASF499
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF500
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF501
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF502
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF503
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF504
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF505
	.byte	0x5
	.uleb128 0x60
	.long	.LASF506
	.byte	0x5
	.uleb128 0x61
	.long	.LASF507
	.byte	0x5
	.uleb128 0x62
	.long	.LASF508
	.byte	0x5
	.uleb128 0x63
	.long	.LASF509
	.byte	0x5
	.uleb128 0x64
	.long	.LASF510
	.byte	0x5
	.uleb128 0x65
	.long	.LASF511
	.byte	0x5
	.uleb128 0x66
	.long	.LASF512
	.byte	0x5
	.uleb128 0x67
	.long	.LASF513
	.byte	0x5
	.uleb128 0x68
	.long	.LASF514
	.byte	0x5
	.uleb128 0x69
	.long	.LASF515
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF516
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF517
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF518
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF519
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF520
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF521
	.byte	0x5
	.uleb128 0x70
	.long	.LASF522
	.byte	0x5
	.uleb128 0x71
	.long	.LASF523
	.byte	0x5
	.uleb128 0x72
	.long	.LASF524
	.byte	0x5
	.uleb128 0x73
	.long	.LASF525
	.byte	0x5
	.uleb128 0x74
	.long	.LASF526
	.byte	0x5
	.uleb128 0x75
	.long	.LASF527
	.byte	0x5
	.uleb128 0x76
	.long	.LASF528
	.byte	0x5
	.uleb128 0x77
	.long	.LASF529
	.byte	0x5
	.uleb128 0x78
	.long	.LASF530
	.byte	0x5
	.uleb128 0x79
	.long	.LASF531
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF532
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF533
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF534
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF535
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF536
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF537
	.byte	0x5
	.uleb128 0x80
	.long	.LASF538
	.byte	0x5
	.uleb128 0x81
	.long	.LASF539
	.byte	0x5
	.uleb128 0x82
	.long	.LASF540
	.byte	0x5
	.uleb128 0x83
	.long	.LASF541
	.byte	0x5
	.uleb128 0x84
	.long	.LASF542
	.byte	0x5
	.uleb128 0x85
	.long	.LASF543
	.byte	0x5
	.uleb128 0x86
	.long	.LASF544
	.byte	0x5
	.uleb128 0x87
	.long	.LASF545
	.byte	0x5
	.uleb128 0x88
	.long	.LASF546
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF547
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF548
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF549
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF550
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF551
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF552
	.byte	0x5
	.uleb128 0x90
	.long	.LASF553
	.byte	0x5
	.uleb128 0x93
	.long	.LASF554
	.byte	0x5
	.uleb128 0x94
	.long	.LASF555
	.byte	0x5
	.uleb128 0x97
	.long	.LASF556
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF558
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF559
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF560
	.byte	0x5
	.uleb128 0x21
	.long	.LASF561
	.byte	0x5
	.uleb128 0x26
	.long	.LASF562
	.byte	0x5
	.uleb128 0x29
	.long	.LASF563
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF564
	.byte	0x5
	.uleb128 0x37
	.long	.LASF565
	.byte	0x5
	.uleb128 0x38
	.long	.LASF566
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF567
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF568
	.byte	0x5
	.uleb128 0x59
	.long	.LASF569
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF570
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF571
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF572
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF573
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF574
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF575
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF576
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vfs.h.16.cddd221c8fce8abc96b253372c8dc337,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF579
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF580
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF581
	.byte	0x5
	.uleb128 0x5
	.long	.LASF582
	.byte	0x5
	.uleb128 0x6
	.long	.LASF583
	.byte	0x5
	.uleb128 0x7
	.long	.LASF584
	.byte	0x5
	.uleb128 0xa
	.long	.LASF585
	.byte	0x5
	.uleb128 0xc
	.long	.LASF586
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF587
	.byte	0x5
	.uleb128 0x11
	.long	.LASF588
	.byte	0x5
	.uleb128 0x12
	.long	.LASF589
	.byte	0x5
	.uleb128 0x14
	.long	.LASF590
	.byte	0x5
	.uleb128 0x15
	.long	.LASF591
	.byte	0x5
	.uleb128 0x18
	.long	.LASF592
	.byte	0x5
	.uleb128 0x19
	.long	.LASF593
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF594
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF595
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF596
	.byte	0x5
	.uleb128 0x20
	.long	.LASF597
	.byte	0x5
	.uleb128 0x22
	.long	.LASF598
	.byte	0x5
	.uleb128 0x23
	.long	.LASF599
	.byte	0x5
	.uleb128 0x25
	.long	.LASF600
	.byte	0x5
	.uleb128 0x26
	.long	.LASF601
	.byte	0x5
	.uleb128 0x27
	.long	.LASF602
	.byte	0x5
	.uleb128 0x28
	.long	.LASF603
	.byte	0x5
	.uleb128 0x29
	.long	.LASF604
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF605
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF606
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF607
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF608
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF609
	.byte	0x5
	.uleb128 0x30
	.long	.LASF610
	.byte	0x5
	.uleb128 0x31
	.long	.LASF611
	.byte	0x5
	.uleb128 0x32
	.long	.LASF612
	.byte	0x5
	.uleb128 0x33
	.long	.LASF613
	.byte	0x5
	.uleb128 0x34
	.long	.LASF614
	.byte	0x5
	.uleb128 0x35
	.long	.LASF615
	.byte	0x5
	.uleb128 0x37
	.long	.LASF616
	.byte	0x5
	.uleb128 0x38
	.long	.LASF617
	.byte	0x5
	.uleb128 0x39
	.long	.LASF618
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF619
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF620
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF621
	.byte	0x5
	.uleb128 0x40
	.long	.LASF622
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF623
	.byte	0x5
	.uleb128 0x8
	.long	.LASF624
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF625
	.byte	0x5
	.uleb128 0x7
	.long	.LASF626
	.byte	0x5
	.uleb128 0x8
	.long	.LASF627
	.byte	0x5
	.uleb128 0x9
	.long	.LASF628
	.byte	0x5
	.uleb128 0xa
	.long	.LASF629
	.byte	0x5
	.uleb128 0xb
	.long	.LASF630
	.byte	0x5
	.uleb128 0xc
	.long	.LASF631
	.byte	0x5
	.uleb128 0xd
	.long	.LASF632
	.byte	0x5
	.uleb128 0xe
	.long	.LASF633
	.byte	0x5
	.uleb128 0x10
	.long	.LASF634
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
	.uleb128 0x23
	.long	.LASF634
	.byte	0x5
	.uleb128 0x24
	.long	.LASF640
	.byte	0x5
	.uleb128 0x25
	.long	.LASF641
	.byte	0x5
	.uleb128 0x26
	.long	.LASF642
	.byte	0x5
	.uleb128 0x28
	.long	.LASF643
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF644
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF645
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF646
	.byte	0x5
	.uleb128 0x30
	.long	.LASF647
	.byte	0x5
	.uleb128 0x31
	.long	.LASF648
	.byte	0x5
	.uleb128 0x32
	.long	.LASF649
	.byte	0x5
	.uleb128 0x33
	.long	.LASF650
	.byte	0x5
	.uleb128 0x35
	.long	.LASF651
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF652
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF654
	.byte	0x5
	.uleb128 0xf
	.long	.LASF655
	.byte	0x5
	.uleb128 0x10
	.long	.LASF656
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF657
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF658
	.byte	0x5
	.uleb128 0x23
	.long	.LASF659
	.byte	0x5
	.uleb128 0x24
	.long	.LASF660
	.byte	0x5
	.uleb128 0x25
	.long	.LASF661
	.byte	0x5
	.uleb128 0x26
	.long	.LASF662
	.byte	0x5
	.uleb128 0x27
	.long	.LASF663
	.byte	0x5
	.uleb128 0x28
	.long	.LASF664
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF665
	.byte	0x5
	.uleb128 0x31
	.long	.LASF666
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF667
	.byte	0x5
	.uleb128 0x11
	.long	.LASF668
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF669
	.byte	0x5
	.uleb128 0xab
	.long	.LASF670
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF672
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF673
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF674
	.byte	0x5
	.uleb128 0x20
	.long	.LASF675
	.byte	0x5
	.uleb128 0x21
	.long	.LASF676
	.byte	0x5
	.uleb128 0x22
	.long	.LASF677
	.byte	0x5
	.uleb128 0x23
	.long	.LASF678
	.byte	0x5
	.uleb128 0x24
	.long	.LASF679
	.byte	0x5
	.uleb128 0x25
	.long	.LASF680
	.byte	0x5
	.uleb128 0x27
	.long	.LASF681
	.byte	0x5
	.uleb128 0x28
	.long	.LASF682
	.byte	0x5
	.uleb128 0x29
	.long	.LASF683
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF684
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF685
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF686
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF687
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF688
	.byte	0x5
	.uleb128 0x34
	.long	.LASF689
	.byte	0x5
	.uleb128 0x35
	.long	.LASF690
	.byte	0x5
	.uleb128 0x36
	.long	.LASF691
	.byte	0x5
	.uleb128 0x37
	.long	.LASF692
	.byte	0x5
	.uleb128 0x38
	.long	.LASF693
	.byte	0x5
	.uleb128 0x39
	.long	.LASF694
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF695
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF696
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF697
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF698
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF699
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF700
	.byte	0x5
	.uleb128 0x40
	.long	.LASF701
	.byte	0x5
	.uleb128 0x41
	.long	.LASF702
	.byte	0x5
	.uleb128 0x42
	.long	.LASF703
	.byte	0x5
	.uleb128 0x43
	.long	.LASF704
	.byte	0x5
	.uleb128 0x44
	.long	.LASF705
	.byte	0x5
	.uleb128 0x45
	.long	.LASF706
	.byte	0x5
	.uleb128 0x46
	.long	.LASF707
	.byte	0x5
	.uleb128 0x47
	.long	.LASF708
	.byte	0x5
	.uleb128 0x48
	.long	.LASF709
	.byte	0x5
	.uleb128 0x49
	.long	.LASF710
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF711
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF712
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF713
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF714
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF715
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF716
	.byte	0x5
	.uleb128 0x50
	.long	.LASF717
	.byte	0x5
	.uleb128 0x51
	.long	.LASF718
	.byte	0x5
	.uleb128 0x52
	.long	.LASF719
	.byte	0x5
	.uleb128 0x54
	.long	.LASF720
	.byte	0x5
	.uleb128 0x55
	.long	.LASF721
	.byte	0x5
	.uleb128 0x56
	.long	.LASF722
	.byte	0x5
	.uleb128 0x57
	.long	.LASF723
	.byte	0x5
	.uleb128 0x58
	.long	.LASF724
	.byte	0x5
	.uleb128 0x59
	.long	.LASF725
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF726
	.byte	0x5
	.uleb128 0x64
	.long	.LASF727
	.byte	0x5
	.uleb128 0x97
	.long	.LASF728
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF729
	.byte	0x5
	.uleb128 0xac
	.long	.LASF730
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF731
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF732
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF733
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF734
	.byte	0x5
	.uleb128 0xee
	.long	.LASF735
	.byte	0x5
	.uleb128 0x101
	.long	.LASF736
	.byte	0x5
	.uleb128 0x104
	.long	.LASF737
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF738
	.byte	0x5
	.uleb128 0x126
	.long	.LASF739
	.byte	0x5
	.uleb128 0x127
	.long	.LASF740
	.byte	0x5
	.uleb128 0x128
	.long	.LASF741
	.byte	0x5
	.uleb128 0x129
	.long	.LASF742
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF743
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF744
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF745
	.byte	0x5
	.uleb128 0x9
	.long	.LASF746
	.byte	0x5
	.uleb128 0xa
	.long	.LASF747
	.byte	0x5
	.uleb128 0xb
	.long	.LASF748
	.byte	0x5
	.uleb128 0xd
	.long	.LASF749
	.byte	0x5
	.uleb128 0xe
	.long	.LASF750
	.byte	0x5
	.uleb128 0x10
	.long	.LASF751
	.byte	0x5
	.uleb128 0x11
	.long	.LASF752
	.byte	0x5
	.uleb128 0x12
	.long	.LASF753
	.byte	0x5
	.uleb128 0x13
	.long	.LASF754
	.byte	0x5
	.uleb128 0x19
	.long	.LASF755
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF756
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF757
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF605:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF408:
	.string	"SYS_sched_yield 32"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF716:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF770:
	.string	"size_t"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF839:
	.string	"PROC_RUNNING"
.LASF530:
	.string	"EISCONN 106"
.LASF444:
	.string	"ENOTDIR 20"
.LASF880:
	.string	"sched_queue_init"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF638:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF827:
	.string	"kc_ctx"
.LASF722:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF415:
	.string	"SYS_set_errno 42"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF691:
	.string	"DBG_MM DBG_MODE(1)"
.LASF590:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF835:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF704:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF819:
	.string	"c_rsp"
.LASF418:
	.string	"SYS_mount 45"
.LASF535:
	.string	"ECONNREFUSED 111"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF811:
	.string	"p_cwd"
.LASF543:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF575:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF565:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF451:
	.string	"EFBIG 27"
.LASF587:
	.string	"PAGE_SHIFT 12"
.LASF764:
	.string	"int32_t"
.LASF366:
	.string	"__unix 1"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF471:
	.string	"EL3RST 47"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF629:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF681:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF412:
	.string	"SYS_errno 39"
.LASF497:
	.string	"EDOTDOT 73"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF547:
	.string	"ENOMEDIUM 123"
.LASF706:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF867:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF717:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF790:
	.string	"kt_state"
.LASF749:
	.string	"INTR_APICTIMER 0xf0"
.LASF584:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF419:
	.string	"SYS_umount 46"
.LASF865:
	.string	"sched_broadcast_on"
.LASF539:
	.string	"EINPROGRESS 115"
.LASF417:
	.string	"SYS_brk 44"
.LASF375:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF520:
	.string	"EPFNOSUPPORT 96"
.LASF434:
	.string	"ECHILD 10"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF473:
	.string	"EUNATCH 49"
.LASF552:
	.string	"EKEYREVOKED 128"
.LASF344:
	.string	"__x86_64 1"
.LASF438:
	.string	"EFAULT 14"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF396:
	.string	"SYS_ioctl 19"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF496:
	.string	"EMULTIHOP 72"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF407:
	.string	"SYS_thr_exit 31"
.LASF818:
	.string	"c_rip"
.LASF615:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF735:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF580:
	.string	"STR_MAX 32"
.LASF445:
	.string	"EISDIR 21"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF628:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF832:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF666:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF591:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF432:
	.string	"ENOEXEC 8"
.LASF614:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF643:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF452:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF887:
	.string	"lessthaneq"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF730:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF606:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF739:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF725:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF467:
	.string	"EIDRM 43"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF670:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF669:
	.string	"PID_IDLE 0"
.LASF601:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF441:
	.string	"EEXIST 17"
.LASF573:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF398:
	.string	"SYS_mkdir 22"
.LASF708:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF794:
	.string	"kt_preemption_count"
.LASF533:
	.string	"ETOOMANYREFS 109"
.LASF736:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF595:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF514:
	.string	"EMSGSIZE 90"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF697:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF622:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF492:
	.string	"EADV 68"
.LASF868:
	.string	"sched_sleep_on"
.LASF450:
	.string	"ETXTBSY 26"
.LASF766:
	.string	"long int"
.LASF645:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF758:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF885:
	.string	"ktqueue_dequeue"
.LASF642:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF847:
	.string	"curcore"
.LASF890:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF598:
	.string	"USE_2MB_PAGES 1"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF897:
	.string	"preemption_enable"
.LASF425:
	.string	"EPERM 1"
.LASF505:
	.string	"ELIBSCN 81"
.LASF385:
	.string	"SYS_waitpid 7"
.LASF881:
	.string	"preemption_reset"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF747:
	.string	"INTR_GPF 0x0d"
.LASF701:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF745:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF551:
	.string	"EKEYEXPIRED 127"
.LASF400:
	.string	"SYS_mmap 24"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF387:
	.string	"SYS_unlink 9"
.LASF600:
	.string	"PAGE_SHIFT_2MB 21"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF460:
	.string	"ENAMETOOLONG 36"
.LASF481:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF810:
	.string	"p_files"
.LASF506:
	.string	"ELIBMAX 82"
.LASF484:
	.string	"ENOSTR 60"
.LASF874:
	.string	"sched_cancel"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF448:
	.string	"EMFILE 24"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF560:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF831:
	.string	"KT_NO_STATE"
.LASF480:
	.string	"EBADRQC 56"
.LASF759:
	.string	"signed char"
.LASF763:
	.string	"uint8_t"
.LASF603:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF542:
	.string	"ENOTNAM 118"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF674:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF692:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF449:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF499:
	.string	"EOVERFLOW 75"
.LASF723:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF529:
	.string	"ENOBUFS 105"
.LASF521:
	.string	"EAFNOSUPPORT 97"
.LASF453:
	.string	"ESPIPE 29"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF760:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF525:
	.string	"ENETUNREACH 101"
.LASF825:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF377:
	.string	"INTR_SYSCALL 0x2e"
.LASF509:
	.string	"ERESTART 85"
.LASF848:
	.string	"curproc"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF401:
	.string	"SYS_mprotect 25"
.LASF713:
	.string	"DBG_THR DBG_MODE(23)"
.LASF632:
	.string	"PT_SIZE 0x080"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF472:
	.string	"ELNRNG 48"
.LASF635:
	.string	"INDEX_MASK 0b111111111"
.LASF781:
	.string	"ktqueue_t"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF437:
	.string	"EACCES 13"
.LASF756:
	.string	"IPL_HIGH 0xe0"
.LASF855:
	.string	"pt_virt_to_phys_helper"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF455:
	.string	"EMLINK 31"
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
.LASF863:
	.string	"mapped_paddr"
.LASF498:
	.string	"EBADMSG 74"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF583:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF483:
	.string	"EBFONT 59"
.LASF394:
	.string	"SYS_dup 17"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF729:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF823:
	.string	"c_kstacksz"
.LASF599:
	.string	"USE_1GB_PAGES 1"
.LASF772:
	.string	"char"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF569:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF799:
	.string	"p_pid"
.LASF816:
	.string	"pml4_t"
.LASF644:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF570:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF778:
	.string	"ktqueue"
.LASF546:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF731:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF405:
	.string	"SYS_thr_create 29"
.LASF757:
	.string	"IPL_HIGHEST 0xff"
.LASF482:
	.string	"EDEADLOCK EDEADLK"
.LASF634:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF345:
	.string	"__x86_64__ 1"
.LASF861:
	.string	"dbg_panic"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF785:
	.string	"kt_retval"
.LASF462:
	.string	"ENOSYS 38"
.LASF873:
	.string	"queue"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF821:
	.string	"c_pml4"
.LASF474:
	.string	"ENOCSI 50"
.LASF630:
	.string	"PT_ACCESSED 0x020"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF616:
	.string	"PAGE_SHIFT_512GB 39"
.LASF361:
	.string	"__SEG_FS 1"
.LASF798:
	.string	"proc"
.LASF900:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF585:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF464:
	.string	"ELOOP 40"
.LASF682:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF380:
	.string	"SYS_fork 2"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF724:
	.string	"DBG_USER DBG_MODE(38)"
.LASF838:
	.string	"kthread_t"
.LASF619:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF561:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF884:
	.string	"intr_enable"
.LASF700:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF477:
	.string	"EBADR 53"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF720:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF567:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF404:
	.string	"SYS_uname 28"
.LASF368:
	.string	"__ELF__ 1"
.LASF843:
	.string	"file"
.LASF504:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF495:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF808:
	.string	"p_pml4"
.LASF837:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF663:
	.string	"NAME_LEN 28"
.LASF894:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF886:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF526:
	.string	"ENETRESET 102"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF892:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF836:
	.string	"KT_EXITED"
.LASF536:
	.string	"EHOSTDOWN 112"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF773:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF661:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF686:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF631:
	.string	"PT_DIRTY 0x040"
.LASF435:
	.string	"EAGAIN 11"
.LASF774:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF537:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF846:
	.string	"idleproc"
.LASF710:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF458:
	.string	"ERANGE 34"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF409:
	.string	"SYS_thr_join 33"
.LASF864:
	.string	"expected_paddr"
.LASF783:
	.string	"kt_ctx"
.LASF466:
	.string	"ENOMSG 42"
.LASF683:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF734:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF527:
	.string	"ECONNABORTED 103"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF649:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF433:
	.string	"EBADF 9"
.LASF742:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF726:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF809:
	.string	"p_wait"
.LASF384:
	.string	"SYS_close 6"
.LASF822:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF715:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF411:
	.string	"SYS_getpid 35"
.LASF388:
	.string	"SYS_execve 10"
.LASF872:
	.string	"sched_switch"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF519:
	.string	"EOPNOTSUPP 95"
.LASF397:
	.string	"SYS_rmdir 21"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF768:
	.string	"long unsigned int"
.LASF680:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF711:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF508:
	.string	"EILSEQ 84"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF456:
	.string	"EPIPE 32"
.LASF439:
	.string	"ENOTBLK 15"
.LASF592:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF613:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF673:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF399:
	.string	"SYS_getdents 23"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF654:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF805:
	.string	"p_child_link"
.LASF877:
	.string	"link"
.LASF468:
	.string	"ECHRNG 44"
.LASF750:
	.string	"INTR_KEYBOARD 0xe0"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF416:
	.string	"SYS_dup2 43"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF493:
	.string	"ESRMNT 69"
.LASF515:
	.string	"EPROTOTYPE 91"
.LASF801:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF786:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF423:
	.string	"SYS_debug 9001"
.LASF641:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF579:
	.string	"name_match(fname,name,namelen) (strlen(fname) == namelen && !strncmp((fname), (name), (namelen)))"
.LASF689:
	.string	"DBG_ALL (~0ULL)"
.LASF549:
	.string	"ECANCELED 125"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF820:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF571:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF490:
	.string	"EREMOTE 66"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF668:
	.string	"PROC_NAME_LEN 256"
.LASF870:
	.string	"core_switch"
.LASF355:
	.string	"__SSE__ 1"
.LASF577:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF522:
	.string	"EADDRINUSE 98"
.LASF895:
	.string	"sched_cancellable_sleep_on"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF678:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF436:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF844:
	.string	"proc_t"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF424:
	.string	"SYS_kshell 9002"
.LASF501:
	.string	"EBADFD 77"
.LASF454:
	.string	"EROFS 30"
.LASF562:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF694:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF555:
	.string	"ENOTRECOVERABLE 131"
.LASF431:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF382:
	.string	"SYS_write 4"
.LASF732:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF782:
	.string	"kthread"
.LASF752:
	.string	"INTR_SPURIOUS 0xfe"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF528:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF851:
	.string	"last_thread_context"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF687:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF685:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF728:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF390:
	.string	"SYS_sleep 12"
.LASF788:
	.string	"kt_cancelled"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF531:
	.string	"ENOTCONN 107"
.LASF420:
	.string	"SYS_stat 47"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF443:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF676:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF888:
	.string	"greaterthan"
.LASF624:
	.string	"VMMAP_DIR_HILO 2"
.LASF544:
	.string	"EISNAM 120"
.LASF545:
	.string	"EREMOTEIO 121"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF625:
	.string	"PT_PRESENT 0x001"
.LASF784:
	.string	"kt_kstack"
.LASF876:
	.string	"sched_queue_empty"
.LASF677:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF775:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF828:
	.string	"kc_queue"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF392:
	.string	"SYS_sync 15"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF381:
	.string	"SYS_read 3"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF479:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF572:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF776:
	.string	"list_link_t"
.LASF850:
	.string	"kt_runq"
.LASF351:
	.string	"__k8 1"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF765:
	.string	"unsigned int"
.LASF391:
	.string	"SYS_lseek 14"
.LASF485:
	.string	"ENODATA 61"
.LASF857:
	.string	"list_remove"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF806:
	.string	"p_status"
.LASF754:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF386:
	.string	"SYS_link 8"
.LASF553:
	.string	"EKEYREJECTED 129"
.LASF379:
	.string	"SYS_exit 1"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF582:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF744:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF618:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF862:
	.string	"next_thread"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF771:
	.string	"pid_t"
.LASF658:
	.string	"PF_HASH_SIZE 17"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF899:
	.string	"intr_enabled"
.LASF596:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF712:
	.string	"DBG_KB DBG_MODE(22)"
.LASF446:
	.string	"EINVAL 22"
.LASF817:
	.string	"context"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF534:
	.string	"ETIMEDOUT 110"
.LASF465:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF777:
	.string	"list"
.LASF797:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF829:
	.string	"kc_csdpaddr"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF413:
	.string	"SYS_halt 40"
.LASF517:
	.string	"EPROTONOSUPPORT 93"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF815:
	.string	"phys"
.LASF395:
	.string	"SYS_pipe 18"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF780:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF705:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF637:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF621:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF860:
	.string	"list_init"
.LASF422:
	.string	"SYS_usleep 49"
.LASF589:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF826:
	.string	"kc_id"
.LASF746:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF356:
	.string	"__SSE2__ 1"
.LASF789:
	.string	"kt_wchan"
.LASF675:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF684:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF665:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF442:
	.string	"EXDEV 18"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF610:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF393:
	.string	"SYS_nuke 16"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF845:
	.string	"csd_vaddr_table"
.LASF440:
	.string	"EBUSY 16"
.LASF660:
	.string	"MAX_FILES 1024"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF751:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF421:
	.string	"SYS_time 48"
.LASF657:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF753:
	.string	"INTR_APICERR 0xff"
.LASF659:
	.string	"MAXPATHLEN 1024"
.LASF639:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF707:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF540:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF502:
	.string	"EREMCHG 78"
.LASF402:
	.string	"SYS_munmap 26"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF578:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF652:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF852:
	.string	"pt_get"
.LASF554:
	.string	"EOWNERDEAD 130"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF875:
	.string	"sched_init"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF803:
	.string	"p_pproc"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF383:
	.string	"SYS_open 5"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF378:
	.string	"SYS_syscall 0"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF406:
	.string	"SYS_thr_cancel 30"
.LASF834:
	.string	"KT_SLEEP"
.LASF574:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF721:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF568:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF357:
	.string	"__FXSR__ 1"
.LASF647:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF879:
	.string	"ktqueue_enqueue"
.LASF793:
	.string	"kt_mutexes"
.LASF802:
	.string	"p_children"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF609:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF737:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF883:
	.string	"intr_disable"
.LASF671:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF672:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF559:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF564:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF427:
	.string	"ESRCH 3"
.LASF824:
	.string	"context_t"
.LASF354:
	.string	"__MMX__ 1"
.LASF558:
	.string	"inline __attribute__((always_inline, used))"
.LASF403:
	.string	"SYS_rename 27"
.LASF662:
	.string	"MAX_VNODES 1024"
.LASF617:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF792:
	.string	"kt_qlink"
.LASF812:
	.string	"p_brk"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF651:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF494:
	.string	"ECOMM 70"
.LASF854:
	.string	"context_switch"
.LASF859:
	.string	"list_assert_sanity"
.LASF476:
	.string	"EBADE 52"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF523:
	.string	"EADDRNOTAVAIL 99"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF513:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF882:
	.string	"intr_wait"
.LASF703:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF611:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF896:
	.string	"preemption_enabled"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF656:
	.string	"TICK_MSECS 10"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF597:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF626:
	.string	"PT_WRITE 0x002"
.LASF612:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF426:
	.string	"ENOENT 2"
.LASF714:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF718:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF698:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF463:
	.string	"ENOTEMPTY 39"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF648:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF518:
	.string	"ESOCKTNOSUPPORT 94"
.LASF627:
	.string	"PT_USER 0x004"
.LASF869:
	.string	"sched_make_runnable"
.LASF524:
	.string	"ENETDOWN 100"
.LASF556:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF512:
	.string	"ENOTSOCK 88"
.LASF856:
	.string	"intr_setipl"
.LASF853:
	.string	"map_in_core_specific_data"
.LASF690:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF814:
	.string	"p_vmmap"
.LASF738:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF488:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF858:
	.string	"list_insert_head"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF702:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF581:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF709:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF511:
	.string	"EUSERS 87"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF761:
	.string	"short int"
.LASF840:
	.string	"PROC_DEAD"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF767:
	.string	"uint64_t"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF469:
	.string	"EL2NSYNC 45"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF429:
	.string	"EIO 5"
.LASF563:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF866:
	.string	"sched_wakeup_on"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF447:
	.string	"ENFILE 23"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF428:
	.string	"EINTR 4"
.LASF727:
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
.LASF478:
	.string	"EXFULL 54"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF507:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF491:
	.string	"ENOLINK 67"
.LASF510:
	.string	"ESTRPIPE 86"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF593:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF594:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF516:
	.string	"ENOPROTOOPT 92"
.LASF410:
	.string	"SYS_gettid 34"
.LASF653:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF607:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF430:
	.string	"ENXIO 6"
.LASF557:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF650:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF489:
	.string	"ENOPKG 65"
.LASF623:
	.string	"VMMAP_DIR_LOHI 1"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF830:
	.string	"core_t"
.LASF486:
	.string	"ETIME 62"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF779:
	.string	"tq_list"
.LASF487:
	.string	"ENOSR 63"
.LASF0:
	.string	"__STDC__ 1"
.LASF550:
	.string	"ENOKEY 126"
.LASF795:
	.string	"vmmap"
.LASF842:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF655:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF459:
	.string	"EDEADLK 35"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF695:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF813:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF538:
	.string	"EALREADY 114"
.LASF804:
	.string	"p_list_link"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF741:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF693:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF740:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF743:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF791:
	.string	"kt_plink"
.LASF566:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF602:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF833:
	.string	"KT_RUNNABLE"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF342:
	.string	"__amd64 1"
.LASF733:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF667:
	.string	"PROC_MAX_COUNT 65536"
.LASF461:
	.string	"ENOLCK 37"
.LASF796:
	.string	"vmm_list"
.LASF748:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF893:
	.string	"proc/sched.c"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF664:
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
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF633:
	.string	"PT_GLOBAL 0x100"
.LASF762:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF365:
	.string	"__linux__ 1"
.LASF389:
	.string	"SYS_chdir 11"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF696:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF620:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF719:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF604:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF688:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF891:
	.string	"equals"
.LASF849:
	.string	"curthr"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF787:
	.string	"kt_proc"
.LASF548:
	.string	"EMEDIUMTYPE 124"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF457:
	.string	"EDOM 33"
.LASF470:
	.string	"EL3HLT 46"
.LASF414:
	.string	"SYS_get_free_mem 41"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF755:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF769:
	.string	"uintptr_t"
.LASF841:
	.string	"proc_state_t"
.LASF640:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF699:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF541:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF800:
	.string	"p_name"
.LASF475:
	.string	"EL2HLT 51"
.LASF364:
	.string	"__linux 1"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF503:
	.string	"ELIBACC 79"
.LASF532:
	.string	"ESHUTDOWN 108"
.LASF586:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF636:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF608:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF588:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF898:
	.string	"preemption_disable"
.LASF871:
	.string	"sched_yield"
.LASF889:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF500:
	.string	"ENOTUNIQ 76"
.LASF646:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF576:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF878:
	.string	"ktqueue_remove"
.LASF679:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF807:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
