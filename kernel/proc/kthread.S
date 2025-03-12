	.file	"kthread.c"
	.text
.Ltext0:
	.file 1 "proc/kthread.c"
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
	.globl	curthr
	.section	.csd,"aw"
	.align 8
	.type	curthr, @object
	.size	curthr, 8
curthr:
	.zero	8
	.local	kthread_allocator
	.comm	kthread_allocator,8,8
	.text
	.type	alloc_stack, @function
alloc_stack:
.LFB10:
	.loc 1 28 28
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 28 37
	movl	$16, %edi
	movabsq	$page_alloc_n, %rax
	call	*%rax
.LVL0:
	.loc 1 28 77
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	alloc_stack, .-alloc_stack
	.type	free_stack, @function
free_stack:
.LFB11:
	.loc 1 34 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 35 5
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	movabsq	$page_free_n, %rax
	call	*%rax
.LVL1:
	.loc 1 36 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	free_stack, .-free_stack
	.section	.rodata
.LC0:
	.string	"kthread"
.LC1:
	.string	"kthread_allocator"
.LC2:
	.string	"assertion failed: %s"
.LC3:
	.string	"proc/kthread.c"
	.text
	.globl	kthread_init
	.type	kthread_init, @function
kthread_init:
.LFB12:
	.loc 1 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 49 25
	movl	$160, %esi
	movabsq	$.LC0, %rax
	movq	%rax, %rdi
	movabsq	$slab_allocator_create, %rax
	call	*%rax
.LVL2:
	.loc 1 49 23
	movabsq	$kthread_allocator, %rdx
	movq	%rax, (%rdx)
	.loc 1 50 5
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	.loc 1 50 5 is_stmt 0 discriminator 1
	movabsq	$.LC1, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.4, %rax
	movq	%rax, %rdx
	movl	$50, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL3:
.L23:
	.loc 1 51 1 is_stmt 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	kthread_init, .-kthread_init
	.section	.rodata
.LC4:
	.string	"proc"
.LC5:
	.string	"%s"
.LC6:
	.string	"C%ld P%ld "
.LC7:
	.string	"%s:%d %s(): "
	.align 8
.LC8:
	.string	"created thread 0x%proc of proc %d (0x%proc)\n"
.LC9:
	.string	"\033[0m"
	.text
	.globl	kthread_create
	.type	kthread_create, @function
kthread_create:
.LFB13:
	.loc 1 69 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 71 5
	cmpq	$0, -24(%rbp)
	jne	.L25
	.loc 1 71 5 is_stmt 0 discriminator 1
	movabsq	$.LC4, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$71, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL4:
.L25:
	.loc 1 72 22 is_stmt 1
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$slab_obj_alloc, %rax
	call	*%rax
.LVL5:
	movq	%rax, -8(%rbp)
	.loc 1 73 8
	cmpq	$0, -8(%rbp)
	jne	.L26
	.loc 1 74 16
	movl	$0, %eax
	jmp	.L27
.L26:
	.loc 1 76 22
	movl	$0, %eax
	movabsq	$alloc_stack, %rdx
	call	*%rdx
.LVL6:
	.loc 1 76 20
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	.loc 1 77 13
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 77 8
	testq	%rax, %rax
	jne	.L28
	.loc 1 79 9
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$slab_obj_free, %rax
	call	*%rax
.LVL7:
	.loc 1 80 16
	movl	$0, %eax
	jmp	.L27
.L28:
	.loc 1 83 5
	movq	-24(%rbp), %rax
	movq	352(%rax), %rdi
	.loc 1 83 54
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	.loc 1 83 5
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	movl	$65536, %r9d
	movq	%rax, %rdi
	movabsq	$context_setup, %rax
	call	*%rax
.LVL8:
	addq	$16, %rsp
	.loc 1 85 20
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	.loc 1 86 19
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 1 87 18
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 1 88 23
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	.loc 1 89 19
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 90 19
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	.loc 1 91 26
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	.loc 1 92 26
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	.loc 1 93 5
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 93 24
	movq	-24(%rbp), %rax
	addq	$264, %rax
	.loc 1 93 5
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_insert_before, %rax
	call	*%rax
.LVL9:
	.loc 1 94 5
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL10:
	.loc 1 96 30
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	.loc 1 98 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L29
	.loc 1 98 5 is_stmt 0 discriminator 1
	movl	$8388608, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL11:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL12:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L30
	.loc 1 98 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L31
.L30:
	.loc 1 98 5 discriminator 3
	movq	$-1, %rax
.L31:
	.loc 1 98 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL13:
	movabsq	$__func__.3, %rax
	movq	%rax, %rcx
	movl	$98, %edx
	movabsq	$.LC3, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL14:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movabsq	$.LC8, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL15:
	movabsq	$.LC9, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL16:
.L29:
	.loc 1 100 12 is_stmt 1
	movq	-8(%rbp), %rax
.L27:
	.loc 1 103 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	kthread_create, .-kthread_create
	.section	.rodata
	.align 8
.LC10:
	.string	"!list_link_is_linked(&thr->kt_qlink)"
	.align 8
.LC11:
	.string	"new_thr->kt_state != KT_EXITED"
	.text
	.globl	kthread_clone
	.type	kthread_clone, @function
kthread_clone:
.LFB14:
	.loc 1 118 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 120 26
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$slab_obj_alloc, %rax
	call	*%rax
.LVL17:
	movq	%rax, -8(%rbp)
	.loc 1 121 8
	cmpq	$0, -8(%rbp)
	jne	.L33
	.loc 1 122 16
	movl	$0, %eax
	jmp	.L34
.L33:
	.loc 1 124 26
	movl	$0, %eax
	movabsq	$alloc_stack, %rdx
	call	*%rdx
.LVL18:
	.loc 1 124 24
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	.loc 1 125 17
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 125 8
	testq	%rax, %rax
	jne	.L35
	.loc 1 127 9
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$slab_obj_free, %rax
	call	*%rax
.LVL19:
	.loc 1 128 16
	movl	$0, %eax
	jmp	.L34
.L35:
	.loc 1 131 12
	movq	-8(%rbp), %rax
	.loc 1 131 5
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL20:
	.loc 1 132 50
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 132 32
	movq	%rax, %rdx
	.loc 1 132 30
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 1 133 32
	movq	-8(%rbp), %rax
	movq	$65536, 40(%rax)
	.loc 1 134 22
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 1 136 5
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL21:
	.loc 1 138 34
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	.loc 1 140 23
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 1 141 23
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	.loc 1 143 5
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL22:
	.loc 1 144 5
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL23:
	.loc 1 146 5
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	movabsq	$list_link_is_linked, %rax
	call	*%rax
.LVL24:
	testq	%rax, %rax
	je	.L36
	.loc 1 146 5 is_stmt 0 discriminator 1
	movabsq	$.LC10, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$146, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL25:
.L36:
	.loc 1 147 29 is_stmt 1
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 1 147 24
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 1 148 28
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 1 148 23
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 1 149 32
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	.loc 1 149 27
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	.loc 1 150 5
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$5, %eax
	jne	.L37
	.loc 1 150 5 is_stmt 0 discriminator 1
	movabsq	$.LC11, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$150, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL26:
.L37:
	.loc 1 151 12 is_stmt 1
	movq	-8(%rbp), %rax
.L34:
	.loc 1 154 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	kthread_clone, .-kthread_clone
	.section	.rodata
.LC12:
	.string	"thr != curthr"
.LC13:
	.string	"thr && thr->kt_kstack"
	.align 8
.LC14:
	.string	"destroying thread in state %d\n"
	.text
	.globl	kthread_destroy
	.type	kthread_destroy, @function
kthread_destroy:
.LFB15:
	.loc 1 164 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 165 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L39
	.loc 1 165 5 is_stmt 0 discriminator 1
	movabsq	$.LC12, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$165, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL27:
.L39:
	.loc 1 166 5 is_stmt 1
	cmpq	$0, -8(%rbp)
	je	.L40
	.loc 1 166 5 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L41
.L40:
	.loc 1 166 5 discriminator 3
	movabsq	$.LC13, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$166, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL28:
.L41:
	.loc 1 167 12 is_stmt 1
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	.loc 1 167 8
	cmpl	$5, %eax
	je	.L42
	.loc 1 168 9
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %r8d
	movabsq	$.LC14, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$168, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL29:
.L42:
	.loc 1 169 5
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	movabsq	$free_stack, %rax
	call	*%rax
.LVL30:
	.loc 1 170 29
	movq	-8(%rbp), %rax
	addq	$104, %rax
	.loc 1 170 9
	movq	%rax, %rdi
	movabsq	$list_link_is_linked, %rax
	call	*%rax
.LVL31:
	.loc 1 170 8
	testq	%rax, %rax
	je	.L43
	.loc 1 171 9
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	movabsq	$list_remove, %rax
	call	*%rax
.LVL32:
.L43:
	.loc 1 173 5
	movabsq	$kthread_allocator, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$slab_obj_free, %rax
	call	*%rax
.LVL33:
	.loc 1 174 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	kthread_destroy, .-kthread_destroy
	.section	.rodata
.LC15:
	.string	"thr && thr != curthr"
	.text
	.globl	kthread_cancel
	.type	kthread_cancel, @function
kthread_cancel:
.LFB16:
	.loc 1 189 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 191 5
	cmpq	$0, -8(%rbp)
	je	.L45
	.loc 1 191 5 is_stmt 0 discriminator 2
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L46
.L45:
	.loc 1 191 5 discriminator 3
	movabsq	$.LC15, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$191, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL34:
.L46:
	.loc 1 192 20 is_stmt 1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	.loc 1 193 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$sched_cancel, %rax
	call	*%rax
.LVL35:
	.loc 1 195 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	kthread_cancel, .-kthread_cancel
	.globl	kthread_exit
	.type	kthread_exit, @function
kthread_exit:
.LFB17:
	.loc 1 201 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 203 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$proc_thread_exiting, %rax
	call	*%rax
.LVL36:
	.loc 1 205 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	kthread_exit, .-kthread_exit
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"kthread_init"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"kthread_create"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"kthread_clone"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"kthread_destroy"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"kthread_cancel"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/vm/vmmap.h"
	.file 7 "include/proc/proc.h"
	.file 8 "include/mm/pagetable.h"
	.file 9 "include/proc/context.h"
	.file 10 "include/proc/sched.h"
	.file 11 "include/proc/core.h"
	.file 12 "include/proc/kthread.h"
	.file 13 "include/globals.h"
	.file 14 "include/mm/slab.h"
	.file 15 "include/util/string.h"
	.file 16 "include/mm/page.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdc8
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF717
	.byte	0xc
	.long	.LASF718
	.long	.LASF719
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF581
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF582
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF583
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF584
	.uleb128 0x3
	.long	.LASF587
	.byte	0x4
	.byte	0xd
	.byte	0x14
	.long	0x59
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF585
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF586
	.uleb128 0x3
	.long	.LASF588
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF589
	.uleb128 0x3
	.long	.LASF590
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x7a
	.uleb128 0x3
	.long	.LASF591
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x6e
	.uleb128 0x3
	.long	.LASF592
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF597
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0xcf
	.uleb128 0x7
	.long	.LASF593
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0xcf
	.byte	0
	.uleb128 0x7
	.long	.LASF594
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0xcf
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa7
	.uleb128 0x3
	.long	.LASF595
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xa7
	.uleb128 0x3
	.long	.LASF596
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xa7
	.uleb128 0x9
	.long	0xe1
	.uleb128 0x6
	.long	.LASF598
	.byte	0x18
	.byte	0x6
	.byte	0xe
	.byte	0x10
	.long	0x11a
	.uleb128 0x7
	.long	.LASF599
	.byte	0x6
	.byte	0x10
	.byte	0xc
	.long	0xd5
	.byte	0
	.uleb128 0x7
	.long	.LASF600
	.byte	0x6
	.byte	0x11
	.byte	0x12
	.long	0x207
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	.LASF601
	.value	0x2a0
	.byte	0x7
	.byte	0x1b
	.byte	0x10
	.long	0x207
	.uleb128 0x7
	.long	.LASF602
	.byte	0x7
	.byte	0x1d
	.byte	0xb
	.long	0x99
	.byte	0
	.uleb128 0x7
	.long	.LASF603
	.byte	0x7
	.byte	0x1e
	.byte	0xa
	.long	0x4a2
	.byte	0x4
	.uleb128 0xb
	.long	.LASF604
	.byte	0x7
	.byte	0x20
	.byte	0xc
	.long	0xd5
	.value	0x108
	.uleb128 0xb
	.long	.LASF605
	.byte	0x7
	.byte	0x21
	.byte	0xc
	.long	0xd5
	.value	0x118
	.uleb128 0xb
	.long	.LASF606
	.byte	0x7
	.byte	0x22
	.byte	0x12
	.long	0x207
	.value	0x128
	.uleb128 0xb
	.long	.LASF607
	.byte	0x7
	.byte	0x24
	.byte	0x11
	.long	0xe1
	.value	0x130
	.uleb128 0xb
	.long	.LASF608
	.byte	0x7
	.byte	0x25
	.byte	0x11
	.long	0xe1
	.value	0x140
	.uleb128 0xb
	.long	.LASF609
	.byte	0x7
	.byte	0x27
	.byte	0xa
	.long	0x67
	.value	0x150
	.uleb128 0xb
	.long	.LASF610
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.long	0x496
	.value	0x158
	.uleb128 0xb
	.long	.LASF611
	.byte	0x7
	.byte	0x2a
	.byte	0xd
	.long	0x2ce
	.value	0x160
	.uleb128 0xb
	.long	.LASF612
	.byte	0x7
	.byte	0x31
	.byte	0xf
	.long	0x314
	.value	0x168
	.uleb128 0xb
	.long	.LASF613
	.byte	0x7
	.byte	0x34
	.byte	0x12
	.long	0x4b2
	.value	0x180
	.uleb128 0xb
	.long	.LASF614
	.byte	0x7
	.byte	0x35
	.byte	0x13
	.long	0x4d4
	.value	0x280
	.uleb128 0xb
	.long	.LASF615
	.byte	0x7
	.byte	0x45
	.byte	0xb
	.long	0xa5
	.value	0x288
	.uleb128 0xb
	.long	.LASF616
	.byte	0x7
	.byte	0x46
	.byte	0xb
	.long	0xa5
	.value	0x290
	.uleb128 0xb
	.long	.LASF617
	.byte	0x7
	.byte	0x47
	.byte	0x13
	.long	0x20d
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11a
	.uleb128 0x8
	.byte	0x8
	.long	0xf2
	.uleb128 0xc
	.string	"pt"
	.value	0x1000
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.long	0x22e
	.uleb128 0x7
	.long	.LASF618
	.byte	0x8
	.byte	0x1a
	.byte	0xf
	.long	0x22e
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x81
	.long	0x23f
	.uleb128 0xe
	.long	0x7a
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF619
	.byte	0x8
	.byte	0x1b
	.byte	0x16
	.long	0x213
	.uleb128 0x3
	.long	.LASF620
	.byte	0x9
	.byte	0xb
	.byte	0x11
	.long	0x257
	.uleb128 0x8
	.byte	0x8
	.long	0x25d
	.uleb128 0xf
	.byte	0x1
	.long	0xa5
	.long	0x272
	.uleb128 0x10
	.long	0x67
	.uleb128 0x10
	.long	0xa5
	.byte	0
	.uleb128 0x6
	.long	.LASF621
	.byte	0x30
	.byte	0x9
	.byte	0xd
	.byte	0x10
	.long	0x2ce
	.uleb128 0x7
	.long	.LASF622
	.byte	0x9
	.byte	0xf
	.byte	0xf
	.long	0x81
	.byte	0
	.uleb128 0x7
	.long	.LASF623
	.byte	0x9
	.byte	0x10
	.byte	0xf
	.long	0x81
	.byte	0x8
	.uleb128 0x7
	.long	.LASF624
	.byte	0x9
	.byte	0x11
	.byte	0xf
	.long	0x81
	.byte	0x10
	.uleb128 0x7
	.long	.LASF625
	.byte	0x9
	.byte	0x14
	.byte	0xa
	.long	0x2ce
	.byte	0x18
	.uleb128 0x7
	.long	.LASF626
	.byte	0x9
	.byte	0x18
	.byte	0xf
	.long	0x81
	.byte	0x20
	.uleb128 0x7
	.long	.LASF627
	.byte	0x9
	.byte	0x19
	.byte	0xc
	.long	0x8d
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x23f
	.uleb128 0x3
	.long	.LASF628
	.byte	0x9
	.byte	0x1a
	.byte	0x3
	.long	0x272
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF629
	.uleb128 0x9
	.long	0x2e0
	.uleb128 0x6
	.long	.LASF630
	.byte	0x18
	.byte	0xa
	.byte	0xf
	.byte	0x10
	.long	0x314
	.uleb128 0x7
	.long	.LASF631
	.byte	0xa
	.byte	0x11
	.byte	0xc
	.long	0xd5
	.byte	0
	.uleb128 0x7
	.long	.LASF632
	.byte	0xa
	.byte	0x12
	.byte	0xc
	.long	0x8d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF633
	.byte	0xa
	.byte	0x13
	.byte	0x3
	.long	0x2ec
	.uleb128 0x6
	.long	.LASF634
	.byte	0x48
	.byte	0xb
	.byte	0x7
	.byte	0x10
	.long	0x362
	.uleb128 0x7
	.long	.LASF635
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.long	0x67
	.byte	0
	.uleb128 0x7
	.long	.LASF636
	.byte	0xb
	.byte	0xa
	.byte	0xf
	.long	0x2d4
	.byte	0x8
	.uleb128 0x7
	.long	.LASF637
	.byte	0xb
	.byte	0xc
	.byte	0x10
	.long	0x362
	.byte	0x38
	.uleb128 0x7
	.long	.LASF638
	.byte	0xb
	.byte	0xe
	.byte	0xf
	.long	0x81
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x314
	.uleb128 0x3
	.long	.LASF639
	.byte	0xb
	.byte	0xf
	.byte	0x3
	.long	0x320
	.uleb128 0x3
	.long	.LASF640
	.byte	0xc
	.byte	0xf
	.byte	0x18
	.long	0x24b
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.long	0x3b3
	.uleb128 0x12
	.long	.LASF641
	.byte	0
	.uleb128 0x12
	.long	.LASF642
	.byte	0x1
	.uleb128 0x12
	.long	.LASF643
	.byte	0x2
	.uleb128 0x12
	.long	.LASF644
	.byte	0x3
	.uleb128 0x12
	.long	.LASF645
	.byte	0x4
	.uleb128 0x12
	.long	.LASF646
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF647
	.byte	0xc
	.byte	0x1c
	.byte	0x3
	.long	0x380
	.uleb128 0x6
	.long	.LASF648
	.byte	0xa0
	.byte	0xc
	.byte	0x21
	.byte	0x10
	.long	0x469
	.uleb128 0x7
	.long	.LASF649
	.byte	0xc
	.byte	0x23
	.byte	0xf
	.long	0x2d4
	.byte	0
	.uleb128 0x7
	.long	.LASF650
	.byte	0xc
	.byte	0x24
	.byte	0xb
	.long	0x469
	.byte	0x30
	.uleb128 0x7
	.long	.LASF651
	.byte	0xc
	.byte	0x25
	.byte	0xb
	.long	0xa5
	.byte	0x38
	.uleb128 0x7
	.long	.LASF652
	.byte	0xc
	.byte	0x26
	.byte	0xa
	.long	0x67
	.byte	0x40
	.uleb128 0x7
	.long	.LASF653
	.byte	0xc
	.byte	0x27
	.byte	0x12
	.long	0x207
	.byte	0x48
	.uleb128 0x7
	.long	.LASF654
	.byte	0xc
	.byte	0x29
	.byte	0xa
	.long	0x67
	.byte	0x50
	.uleb128 0x7
	.long	.LASF655
	.byte	0xc
	.byte	0x2a
	.byte	0x10
	.long	0x362
	.byte	0x58
	.uleb128 0x7
	.long	.LASF656
	.byte	0xc
	.byte	0x2b
	.byte	0x15
	.long	0x3b3
	.byte	0x60
	.uleb128 0x7
	.long	.LASF657
	.byte	0xc
	.byte	0x2d
	.byte	0x11
	.long	0xe1
	.byte	0x68
	.uleb128 0x7
	.long	.LASF658
	.byte	0xc
	.byte	0x2f
	.byte	0x9
	.long	0xe1
	.byte	0x78
	.uleb128 0x7
	.long	.LASF659
	.byte	0xc
	.byte	0x31
	.byte	0xc
	.long	0xd5
	.byte	0x88
	.uleb128 0x7
	.long	.LASF660
	.byte	0xc
	.byte	0x34
	.byte	0xe
	.long	0x6e
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e0
	.uleb128 0x3
	.long	.LASF661
	.byte	0xc
	.byte	0x35
	.byte	0x3
	.long	0x3bf
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x60
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.long	0x496
	.uleb128 0x12
	.long	.LASF662
	.byte	0
	.uleb128 0x12
	.long	.LASF663
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF664
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x47b
	.uleb128 0xd
	.long	0x2e0
	.long	0x4b2
	.uleb128 0x13
	.long	0x7a
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.long	0x4c2
	.long	0x4c2
	.uleb128 0x13
	.long	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4c8
	.uleb128 0x14
	.long	.LASF665
	.byte	0x1
	.uleb128 0x14
	.long	.LASF666
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x4ce
	.uleb128 0x3
	.long	.LASF667
	.byte	0x7
	.byte	0x49
	.byte	0x3
	.long	0x11a
	.uleb128 0x15
	.long	.LASF668
	.byte	0xd
	.byte	0x9
	.byte	0xf
	.long	0x368
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF669
	.byte	0xd
	.byte	0xa
	.byte	0x10
	.long	0x502
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x4da
	.uleb128 0x15
	.long	.LASF670
	.byte	0xd
	.byte	0xb
	.byte	0x13
	.long	0x516
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x46f
	.uleb128 0x3
	.long	.LASF671
	.byte	0xe
	.byte	0x14
	.byte	0x1f
	.long	0x528
	.uleb128 0x14
	.long	.LASF672
	.byte	0x1
	.uleb128 0x15
	.long	.LASF673
	.byte	0x3
	.byte	0x8c
	.byte	0x11
	.long	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x508
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.byte	0x9
	.byte	0x3
	.quad	curthr
	.uleb128 0x17
	.long	.LASF696
	.byte	0x1
	.byte	0x13
	.byte	0x1a
	.long	0x564
	.byte	0x9
	.byte	0x3
	.quad	kthread_allocator
	.uleb128 0x8
	.byte	0x8
	.long	0x51c
	.uleb128 0x18
	.byte	0x1
	.long	.LASF674
	.byte	0x7
	.byte	0x72
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x57f
	.uleb128 0x10
	.long	0xa5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF675
	.byte	0xa
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x594
	.uleb128 0x10
	.long	0x594
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3bf
	.uleb128 0x18
	.byte	0x1
	.long	.LASF676
	.byte	0x5
	.byte	0xa3
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x5af
	.uleb128 0x10
	.long	0x5af
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF678
	.byte	0x5
	.byte	0x74
	.byte	0x6
	.byte	0x1
	.long	0x67
	.byte	0x1
	.long	0x5ce
	.uleb128 0x10
	.long	0x5ce
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xed
	.uleb128 0x18
	.byte	0x1
	.long	.LASF677
	.byte	0x5
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x5e9
	.uleb128 0x10
	.long	0x5af
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF679
	.byte	0xf
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.long	0xa5
	.byte	0x1
	.long	0x60c
	.uleb128 0x10
	.long	0xa5
	.uleb128 0x10
	.long	0x59
	.uleb128 0x10
	.long	0x8d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF680
	.byte	0x3
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x622
	.uleb128 0x10
	.long	0x469
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF681
	.byte	0x3
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0x63b
	.byte	0x1
	.long	0x63b
	.uleb128 0x10
	.long	0x6e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e7
	.uleb128 0x18
	.byte	0x1
	.long	.LASF682
	.byte	0x5
	.byte	0x6c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x656
	.uleb128 0x10
	.long	0x656
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd5
	.uleb128 0x18
	.byte	0x1
	.long	.LASF683
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x676
	.uleb128 0x10
	.long	0x5af
	.uleb128 0x10
	.long	0x5af
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF684
	.byte	0x9
	.byte	0x2a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x6a9
	.uleb128 0x10
	.long	0x6a9
	.uleb128 0x10
	.long	0x24b
	.uleb128 0x10
	.long	0x67
	.uleb128 0x10
	.long	0xa5
	.uleb128 0x10
	.long	0xa5
	.uleb128 0x10
	.long	0x8d
	.uleb128 0x10
	.long	0x2ce
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2d4
	.uleb128 0x18
	.byte	0x1
	.long	.LASF685
	.byte	0xe
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x6c9
	.uleb128 0x10
	.long	0x564
	.uleb128 0x10
	.long	0xa5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF686
	.byte	0xe
	.byte	0x4d
	.byte	0x7
	.byte	0x1
	.long	0xa5
	.byte	0x1
	.long	0x6e2
	.uleb128 0x10
	.long	0x564
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF687
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x708
	.uleb128 0x10
	.long	0x63b
	.uleb128 0x10
	.long	0x59
	.uleb128 0x10
	.long	0x63b
	.uleb128 0x10
	.long	0x63b
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF688
	.byte	0xe
	.byte	0x3c
	.byte	0x13
	.byte	0x1
	.long	0x564
	.byte	0x1
	.long	0x726
	.uleb128 0x10
	.long	0x63b
	.uleb128 0x10
	.long	0x8d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF689
	.byte	0x10
	.byte	0x71
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x740
	.uleb128 0x10
	.long	0xa5
	.uleb128 0x10
	.long	0x8d
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF690
	.byte	0x10
	.byte	0x6d
	.byte	0x7
	.byte	0x1
	.long	0xa5
	.byte	0x1
	.long	0x759
	.uleb128 0x10
	.long	0x8d
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF691
	.byte	0x1
	.byte	0xc8
	.byte	0x6
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x797
	.uleb128 0x1d
	.long	.LASF693
	.byte	0x1
	.byte	0xc8
	.byte	0x19
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.quad	.LVL36
	.long	0x56a
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF692
	.byte	0x1
	.byte	0xbc
	.byte	0x6
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x805
	.uleb128 0x1f
	.string	"thr"
	.byte	0x1
	.byte	0xbc
	.byte	0x20
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF693
	.byte	0x1
	.byte	0xbc
	.byte	0x2b
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF695
	.long	0x815
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x1e
	.quad	.LVL34
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL35
	.long	0x57f
	.byte	0
	.uleb128 0xd
	.long	0x2e7
	.long	0x815
	.uleb128 0x13
	.long	0x7a
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.long	0x805
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF694
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8ba
	.uleb128 0x1f
	.string	"thr"
	.byte	0x1
	.byte	0xa3
	.byte	0x21
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF695
	.long	0x8ca
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x1e
	.quad	.LVL27
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL28
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL29
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL30
	.long	0xb51
	.uleb128 0x1e
	.quad	.LVL31
	.long	0x5b5
	.uleb128 0x1e
	.quad	.LVL32
	.long	0x59a
	.uleb128 0x1e
	.quad	.LVL33
	.long	0x6af
	.byte	0
	.uleb128 0xd
	.long	0x2e7
	.long	0x8ca
	.uleb128 0x13
	.long	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.long	0x8ba
	.uleb128 0x21
	.byte	0x1
	.long	.LASF698
	.byte	0x1
	.byte	0x75
	.byte	0xc
	.byte	0x1
	.long	0x516
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9a9
	.uleb128 0x1f
	.string	"thr"
	.byte	0x1
	.byte	0x75
	.byte	0x25
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF697
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF695
	.long	0x9b9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x1e
	.quad	.LVL17
	.long	0x6c9
	.uleb128 0x1e
	.quad	.LVL18
	.long	0xb8e
	.uleb128 0x1e
	.quad	.LVL19
	.long	0x6af
	.uleb128 0x1e
	.quad	.LVL20
	.long	0x5e9
	.uleb128 0x1e
	.quad	.LVL21
	.long	0x641
	.uleb128 0x1e
	.quad	.LVL22
	.long	0x5d4
	.uleb128 0x1e
	.quad	.LVL23
	.long	0x5d4
	.uleb128 0x1e
	.quad	.LVL24
	.long	0x5b5
	.uleb128 0x1e
	.quad	.LVL25
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL26
	.long	0x6e2
	.byte	0
	.uleb128 0xd
	.long	0x2e7
	.long	0x9b9
	.uleb128 0x13
	.long	0x7a
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0x9a9
	.uleb128 0x21
	.byte	0x1
	.long	.LASF699
	.byte	0x1
	.byte	0x43
	.byte	0xc
	.byte	0x1
	.long	0x516
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaec
	.uleb128 0x1d
	.long	.LASF601
	.byte	0x1
	.byte	0x43
	.byte	0x23
	.long	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF700
	.byte	0x1
	.byte	0x43
	.byte	0x38
	.long	0x374
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF701
	.byte	0x1
	.byte	0x43
	.byte	0x43
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF702
	.byte	0x1
	.byte	0x44
	.byte	0x21
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF695
	.long	0x815
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x22
	.string	"thr"
	.byte	0x1
	.byte	0x48
	.byte	0x10
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.quad	.LVL4
	.long	0x6e2
	.uleb128 0x1e
	.quad	.LVL5
	.long	0x6c9
	.uleb128 0x1e
	.quad	.LVL6
	.long	0xb8e
	.uleb128 0x1e
	.quad	.LVL7
	.long	0x6af
	.uleb128 0x1e
	.quad	.LVL8
	.long	0x676
	.uleb128 0x1e
	.quad	.LVL9
	.long	0x65c
	.uleb128 0x1e
	.quad	.LVL10
	.long	0x641
	.uleb128 0x1e
	.quad	.LVL11
	.long	0x622
	.uleb128 0x1e
	.quad	.LVL12
	.long	0x60c
	.uleb128 0x1e
	.quad	.LVL13
	.long	0x60c
	.uleb128 0x1e
	.quad	.LVL14
	.long	0x60c
	.uleb128 0x1e
	.quad	.LVL15
	.long	0x60c
	.uleb128 0x1e
	.quad	.LVL16
	.long	0x60c
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF703
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb3c
	.uleb128 0x20
	.long	.LASF695
	.long	0xb4c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.4
	.uleb128 0x1e
	.quad	.LVL2
	.long	0x708
	.uleb128 0x1e
	.quad	.LVL3
	.long	0x6e2
	.byte	0
	.uleb128 0xd
	.long	0x2e7
	.long	0xb4c
	.uleb128 0x13
	.long	0x7a
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0xb3c
	.uleb128 0x23
	.long	.LASF705
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb8e
	.uleb128 0x1d
	.long	.LASF704
	.byte	0x1
	.byte	0x21
	.byte	0x1e
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.quad	.LVL1
	.long	0x726
	.byte	0
	.uleb128 0x24
	.long	.LASF706
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.long	0x469
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbbf
	.uleb128 0x1e
	.quad	.LVL0
	.long	0x740
	.byte	0
	.uleb128 0x25
	.long	.LASF707
	.byte	0x3
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc01
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF708
	.byte	0x3
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc43
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF709
	.byte	0x3
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc85
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF710
	.byte	0x3
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcc7
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF711
	.byte	0x3
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd09
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF712
	.byte	0x3
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x67
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd4b
	.uleb128 0x26
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF713
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.long	.LASF714
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.long	.LASF715
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x28
	.long	.LASF720
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x6e
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x17
	.long	.LASF716
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x6e
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x87
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.file 17 "include/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xd
	.file 18 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.file 19 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.file 20 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
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
	.uleb128 0xa
	.file 21 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x8
	.long	.LASF481
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF482
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF483
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF488
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 22 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x10
	.long	.LASF504
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.file 23 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro15
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
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF388
	.byte	0x5
	.uleb128 0x5
	.long	.LASF389
	.byte	0x5
	.uleb128 0x6
	.long	.LASF390
	.byte	0x5
	.uleb128 0x7
	.long	.LASF391
	.byte	0x5
	.uleb128 0xa
	.long	.LASF392
	.byte	0x5
	.uleb128 0xc
	.long	.LASF393
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.5.ce5cf6e0f5e04c88197477365e766aac,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF394
	.byte	0x5
	.uleb128 0x7
	.long	.LASF395
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF396
	.byte	0x5
	.uleb128 0x11
	.long	.LASF397
	.byte	0x5
	.uleb128 0x12
	.long	.LASF398
	.byte	0x5
	.uleb128 0x14
	.long	.LASF399
	.byte	0x5
	.uleb128 0x15
	.long	.LASF400
	.byte	0x5
	.uleb128 0x18
	.long	.LASF401
	.byte	0x5
	.uleb128 0x19
	.long	.LASF402
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF404
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF405
	.byte	0x5
	.uleb128 0x20
	.long	.LASF406
	.byte	0x5
	.uleb128 0x22
	.long	.LASF407
	.byte	0x5
	.uleb128 0x23
	.long	.LASF408
	.byte	0x5
	.uleb128 0x25
	.long	.LASF409
	.byte	0x5
	.uleb128 0x26
	.long	.LASF410
	.byte	0x5
	.uleb128 0x27
	.long	.LASF411
	.byte	0x5
	.uleb128 0x28
	.long	.LASF412
	.byte	0x5
	.uleb128 0x29
	.long	.LASF413
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF414
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF415
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF416
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF417
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF418
	.byte	0x5
	.uleb128 0x30
	.long	.LASF419
	.byte	0x5
	.uleb128 0x31
	.long	.LASF420
	.byte	0x5
	.uleb128 0x32
	.long	.LASF421
	.byte	0x5
	.uleb128 0x33
	.long	.LASF422
	.byte	0x5
	.uleb128 0x34
	.long	.LASF423
	.byte	0x5
	.uleb128 0x35
	.long	.LASF424
	.byte	0x5
	.uleb128 0x37
	.long	.LASF425
	.byte	0x5
	.uleb128 0x38
	.long	.LASF426
	.byte	0x5
	.uleb128 0x39
	.long	.LASF427
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF428
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF429
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF430
	.byte	0x5
	.uleb128 0x40
	.long	.LASF431
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF434
	.byte	0x5
	.uleb128 0x21
	.long	.LASF435
	.byte	0x5
	.uleb128 0x26
	.long	.LASF436
	.byte	0x5
	.uleb128 0x29
	.long	.LASF437
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x37
	.long	.LASF439
	.byte	0x5
	.uleb128 0x38
	.long	.LASF440
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF441
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF442
	.byte	0x5
	.uleb128 0x59
	.long	.LASF443
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF444
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF445
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF446
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF447
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF448
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF449
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF450
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF451
	.byte	0x5
	.uleb128 0x8
	.long	.LASF452
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF453
	.byte	0x5
	.uleb128 0x7
	.long	.LASF454
	.byte	0x5
	.uleb128 0x8
	.long	.LASF455
	.byte	0x5
	.uleb128 0x9
	.long	.LASF456
	.byte	0x5
	.uleb128 0xa
	.long	.LASF457
	.byte	0x5
	.uleb128 0xb
	.long	.LASF458
	.byte	0x5
	.uleb128 0xc
	.long	.LASF459
	.byte	0x5
	.uleb128 0xd
	.long	.LASF460
	.byte	0x5
	.uleb128 0xe
	.long	.LASF461
	.byte	0x5
	.uleb128 0x10
	.long	.LASF462
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF463
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF465
	.byte	0x5
	.uleb128 0x20
	.long	.LASF466
	.byte	0x5
	.uleb128 0x21
	.long	.LASF467
	.byte	0x5
	.uleb128 0x23
	.long	.LASF462
	.byte	0x5
	.uleb128 0x24
	.long	.LASF468
	.byte	0x5
	.uleb128 0x25
	.long	.LASF469
	.byte	0x5
	.uleb128 0x26
	.long	.LASF470
	.byte	0x5
	.uleb128 0x28
	.long	.LASF471
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF472
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF473
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF474
	.byte	0x5
	.uleb128 0x30
	.long	.LASF475
	.byte	0x5
	.uleb128 0x31
	.long	.LASF476
	.byte	0x5
	.uleb128 0x32
	.long	.LASF477
	.byte	0x5
	.uleb128 0x33
	.long	.LASF478
	.byte	0x5
	.uleb128 0x35
	.long	.LASF479
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF480
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
	.section	.debug_macro,"G",@progbits,wm4.slab.h.6.8470dc308bec9d4f2bece37a0e7db0fd,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF489
	.byte	0x5
	.uleb128 0xa
	.long	.LASF490
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF491
	.byte	0x5
	.uleb128 0x9
	.long	.LASF492
	.byte	0x5
	.uleb128 0xa
	.long	.LASF493
	.byte	0x5
	.uleb128 0xb
	.long	.LASF494
	.byte	0x5
	.uleb128 0xd
	.long	.LASF495
	.byte	0x5
	.uleb128 0xe
	.long	.LASF496
	.byte	0x5
	.uleb128 0x10
	.long	.LASF497
	.byte	0x5
	.uleb128 0x11
	.long	.LASF498
	.byte	0x5
	.uleb128 0x12
	.long	.LASF499
	.byte	0x5
	.uleb128 0x13
	.long	.LASF500
	.byte	0x5
	.uleb128 0x19
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF503
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF505
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF507
	.byte	0x5
	.uleb128 0x20
	.long	.LASF508
	.byte	0x5
	.uleb128 0x21
	.long	.LASF509
	.byte	0x5
	.uleb128 0x22
	.long	.LASF510
	.byte	0x5
	.uleb128 0x23
	.long	.LASF511
	.byte	0x5
	.uleb128 0x24
	.long	.LASF512
	.byte	0x5
	.uleb128 0x25
	.long	.LASF513
	.byte	0x5
	.uleb128 0x27
	.long	.LASF514
	.byte	0x5
	.uleb128 0x28
	.long	.LASF515
	.byte	0x5
	.uleb128 0x29
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF519
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF520
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF521
	.byte	0x5
	.uleb128 0x34
	.long	.LASF522
	.byte	0x5
	.uleb128 0x35
	.long	.LASF523
	.byte	0x5
	.uleb128 0x36
	.long	.LASF524
	.byte	0x5
	.uleb128 0x37
	.long	.LASF525
	.byte	0x5
	.uleb128 0x38
	.long	.LASF526
	.byte	0x5
	.uleb128 0x39
	.long	.LASF527
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF528
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF529
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF530
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF531
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF532
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF533
	.byte	0x5
	.uleb128 0x40
	.long	.LASF534
	.byte	0x5
	.uleb128 0x41
	.long	.LASF535
	.byte	0x5
	.uleb128 0x42
	.long	.LASF536
	.byte	0x5
	.uleb128 0x43
	.long	.LASF537
	.byte	0x5
	.uleb128 0x44
	.long	.LASF538
	.byte	0x5
	.uleb128 0x45
	.long	.LASF539
	.byte	0x5
	.uleb128 0x46
	.long	.LASF540
	.byte	0x5
	.uleb128 0x47
	.long	.LASF541
	.byte	0x5
	.uleb128 0x48
	.long	.LASF542
	.byte	0x5
	.uleb128 0x49
	.long	.LASF543
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF544
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF545
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF546
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF547
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF548
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF549
	.byte	0x5
	.uleb128 0x50
	.long	.LASF550
	.byte	0x5
	.uleb128 0x51
	.long	.LASF551
	.byte	0x5
	.uleb128 0x52
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
	.uleb128 0x64
	.long	.LASF560
	.byte	0x5
	.uleb128 0x97
	.long	.LASF561
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF562
	.byte	0x5
	.uleb128 0xac
	.long	.LASF563
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF564
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF565
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF566
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF567
	.byte	0x5
	.uleb128 0xee
	.long	.LASF568
	.byte	0x5
	.uleb128 0x101
	.long	.LASF569
	.byte	0x5
	.uleb128 0x104
	.long	.LASF570
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF571
	.byte	0x5
	.uleb128 0x126
	.long	.LASF572
	.byte	0x5
	.uleb128 0x127
	.long	.LASF573
	.byte	0x5
	.uleb128 0x128
	.long	.LASF574
	.byte	0x5
	.uleb128 0x129
	.long	.LASF575
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF576
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF577
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF578
	.byte	0x5
	.uleb128 0x6
	.long	.LASF579
	.byte	0x5
	.uleb128 0x7
	.long	.LASF580
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF442:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF595:
	.string	"list_t"
.LASF386:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF471:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF396:
	.string	"PAGE_SHIFT 12"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF678:
	.string	"list_link_is_linked"
.LASF411:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF680:
	.string	"dbg_print"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF466:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF574:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF718:
	.string	"proc/kthread.c"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF441:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF609:
	.string	"p_status"
.LASF482:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF489:
	.string	"SLAB_REDZONE 0xdeadbeefdeadbeef"
.LASF708:
	.string	"lessthaneq"
.LASF488:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF616:
	.string	"p_start_brk"
.LASF690:
	.string	"page_alloc_n"
.LASF631:
	.string	"tq_list"
.LASF691:
	.string	"kthread_exit"
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
.LASF626:
	.string	"c_kstack"
.LASF716:
	.string	"flags"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF362:
	.string	"__SEG_GS 1"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF571:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF504:
	.string	"MAX_LAPICS 8"
.LASF573:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF532:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF503:
	.string	"IPL_HIGHEST 0xff"
.LASF681:
	.string	"dbg_color"
.LASF413:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF585:
	.string	"unsigned int"
.LASF543:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF397:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF463:
	.string	"INDEX_MASK 0b111111111"
.LASF444:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF568:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF542:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF525:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF694:
	.string	"kthread_destroy"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
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
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF578:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF686:
	.string	"slab_obj_alloc"
.LASF709:
	.string	"greaterthan"
.LASF548:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF623:
	.string	"c_rsp"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF692:
	.string	"kthread_cancel"
.LASF469:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF602:
	.string	"p_pid"
.LASF551:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF576:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF440:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF710:
	.string	"lessthan"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF562:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF596:
	.string	"list_link_t"
.LASF426:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF464:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF659:
	.string	"kt_mutexes"
.LASF356:
	.string	"__SSE2__ 1"
.LASF494:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF342:
	.string	"__amd64 1"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF485:
	.string	"PROC_NAME_LEN 256"
.LASF646:
	.string	"KT_EXITED"
.LASF567:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF597:
	.string	"list"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF516:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF611:
	.string	"p_pml4"
.LASF515:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF699:
	.string	"kthread_create"
.LASF475:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF455:
	.string	"PT_USER 0x004"
.LASF436:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF637:
	.string	"kc_queue"
.LASF633:
	.string	"ktqueue_t"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF439:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF451:
	.string	"VMMAP_DIR_LOHI 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF502:
	.string	"IPL_HIGH 0xe0"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF412:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF689:
	.string	"page_free_n"
.LASF390:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF667:
	.string	"proc_t"
.LASF663:
	.string	"PROC_DEAD"
.LASF552:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF3:
	.string	"__GNUC__ 12"
.LASF546:
	.string	"DBG_THR DBG_MODE(23)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF665:
	.string	"file"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF383:
	.string	"MAX_VNODES 1024"
.LASF580:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF468:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF527:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF513:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF649:
	.string	"kt_ctx"
.LASF717:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF593:
	.string	"l_next"
.LASF437:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF387:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF407:
	.string	"USE_2MB_PAGES 1"
.LASF613:
	.string	"p_files"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF445:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF385:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF535:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF688:
	.string	"slab_allocator_create"
.LASF394:
	.string	"NULL 0"
.LASF493:
	.string	"INTR_GPF 0x0d"
.LASF510:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF634:
	.string	"core"
.LASF697:
	.string	"new_thr"
.LASF404:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF492:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF530:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF605:
	.string	"p_children"
.LASF577:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF480:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF545:
	.string	"DBG_KB DBG_MODE(22)"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF462:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF625:
	.string	"c_pml4"
.LASF417:
	.string	"PAGE_SHIFT_1GB 30"
.LASF454:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF591:
	.string	"size_t"
.LASF498:
	.string	"INTR_SPURIOUS 0xfe"
.LASF508:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF630:
	.string	"ktqueue"
.LASF420:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF700:
	.string	"func"
.LASF612:
	.string	"p_wait"
.LASF415:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF354:
	.string	"__MMX__ 1"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF501:
	.string	"IPL_LOW 0"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF564:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF343:
	.string	"__amd64__ 1"
.LASF523:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF438:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF424:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF456:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF457:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF430:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF671:
	.string	"slab_allocator_t"
.LASF443:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF642:
	.string	"KT_ON_CPU"
.LASF418:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF481:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF703:
	.string	"kthread_init"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF461:
	.string	"PT_GLOBAL 0x100"
.LASF410:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF712:
	.string	"equals"
.LASF608:
	.string	"p_child_link"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF677:
	.string	"list_link_init"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF684:
	.string	"context_setup"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF627:
	.string	"c_kstacksz"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF497:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF629:
	.string	"char"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF526:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF534:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF423:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF620:
	.string	"context_func_t"
.LASF648:
	.string	"kthread"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF384:
	.string	"NAME_LEN 28"
.LASF658:
	.string	"kt_qlink"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF531:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF520:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF361:
	.string	"__SEG_FS 1"
.LASF401:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF566:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF635:
	.string	"kc_id"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF557:
	.string	"DBG_USER DBG_MODE(38)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF389:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF376:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF599:
	.string	"vmm_list"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF533:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF575:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF495:
	.string	"INTR_APICTIMER 0xf0"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF610:
	.string	"p_state"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF615:
	.string	"p_brk"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF622:
	.string	"c_rip"
.LASF550:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF711:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF693:
	.string	"retval"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF618:
	.string	"phys"
.LASF14:
	.string	"_LP64 1"
.LASF460:
	.string	"PT_SIZE 0x080"
.LASF719:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF668:
	.string	"curcore"
.LASF344:
	.string	"__x86_64 1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF650:
	.string	"kt_kstack"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF592:
	.string	"pid_t"
.LASF453:
	.string	"PT_PRESENT 0x001"
.LASF522:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF459:
	.string	"PT_DIRTY 0x040"
.LASF661:
	.string	"kthread_t"
.LASF656:
	.string	"kt_state"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF621:
	.string	"context"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF474:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF705:
	.string	"free_stack"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF406:
	.string	"PAGE_NSIZES 8"
.LASF632:
	.string	"tq_size"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF478:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF355:
	.string	"__SSE__ 1"
.LASF514:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF506:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF653:
	.string	"kt_proc"
.LASF507:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF0:
	.string	"__STDC__ 1"
.LASF679:
	.string	"memset"
.LASF540:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF645:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF409:
	.string	"PAGE_SHIFT_2MB 21"
.LASF428:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF701:
	.string	"arg1"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF560:
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
.LASF682:
	.string	"list_init"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF432:
	.string	"inline __attribute__((always_inline, used))"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF377:
	.string	"TICK_MSECS 10"
.LASF422:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF607:
	.string	"p_list_link"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF554:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF647:
	.string	"kthread_state_t"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF706:
	.string	"alloc_stack"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF685:
	.string	"slab_obj_free"
.LASF393:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF640:
	.string	"kthread_func_t"
.LASF419:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF379:
	.string	"PF_HASH_SIZE 17"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF707:
	.string	"greaterthaneq"
.LASF594:
	.string	"l_prev"
.LASF606:
	.string	"p_pproc"
.LASF619:
	.string	"pml4_t"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF672:
	.string	"slab_allocator"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF375:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF698:
	.string	"kthread_clone"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF490:
	.string	"SLAB_CHECK_FREE "
.LASF539:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF563:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF603:
	.string	"p_name"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF517:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF696:
	.string	"kthread_allocator"
.LASF447:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF670:
	.string	"curthr"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF636:
	.string	"kc_ctx"
.LASF529:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF499:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF652:
	.string	"kt_errno"
.LASF662:
	.string	"PROC_RUNNING"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF638:
	.string	"kc_csdpaddr"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF538:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF572:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF416:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF421:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF536:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF583:
	.string	"short int"
.LASF403:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF676:
	.string	"list_remove"
.LASF586:
	.string	"long int"
.LASF378:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF483:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF628:
	.string	"context_t"
.LASF624:
	.string	"c_rbp"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF654:
	.string	"kt_cancelled"
.LASF467:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF715:
	.string	"intr_enable"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF434:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
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
.LASF364:
	.string	"__linux 1"
.LASF556:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF425:
	.string	"PAGE_SHIFT_512GB 39"
.LASF431:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF392:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF588:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF465:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF674:
	.string	"proc_thread_exiting"
.LASF570:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF448:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF511:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF559:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF458:
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
.LASF579:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF509:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF427:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF477:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF486:
	.string	"PID_IDLE 0"
.LASF414:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF673:
	.string	"dbg_modes"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF704:
	.string	"stack"
.LASF391:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF720:
	.string	"intr_enabled"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF398:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF660:
	.string	"kt_preemption_count"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF590:
	.string	"uintptr_t"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF657:
	.string	"kt_plink"
.LASF683:
	.string	"list_insert_before"
.LASF713:
	.string	"intr_wait"
.LASF601:
	.string	"proc"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF519:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF589:
	.string	"long unsigned int"
.LASF435:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF479:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF452:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF518:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF476:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF644:
	.string	"KT_SLEEP"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF555:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF400:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF512:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF388:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF528:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF351:
	.string	"__k8 1"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF664:
	.string	"proc_state_t"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF537:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF582:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF496:
	.string	"INTR_KEYBOARD 0xe0"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF651:
	.string	"kt_retval"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF357:
	.string	"__FXSR__ 1"
.LASF687:
	.string	"dbg_panic"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF541:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF484:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF473:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF565:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF553:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF395:
	.string	"packed __attribute__((packed))"
.LASF666:
	.string	"vnode"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF641:
	.string	"KT_NO_STATE"
.LASF472:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF449:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF433:
	.string	"noreturn __attribute__((noreturn))"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF382:
	.string	"MAX_VFS 8"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF617:
	.string	"p_vmmap"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF655:
	.string	"kt_wchan"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF614:
	.string	"p_cwd"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF561:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF408:
	.string	"USE_1GB_PAGES 1"
.LASF450:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF581:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF584:
	.string	"short unsigned int"
.LASF399:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF446:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF544:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF639:
	.string	"core_t"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF549:
	.string	"DBG_VM DBG_MODE(28)"
.LASF695:
	.string	"__func__"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF600:
	.string	"vmm_proc"
.LASF487:
	.string	"PID_INIT 1"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF429:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF675:
	.string	"sched_cancel"
.LASF702:
	.string	"arg2"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF402:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF587:
	.string	"int32_t"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF598:
	.string	"vmmap"
.LASF405:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF524:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF558:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF604:
	.string	"p_threads"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF547:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF380:
	.string	"MAXPATHLEN 1024"
.LASF505:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF491:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF521:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF643:
	.string	"KT_RUNNABLE"
.LASF470:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF714:
	.string	"intr_disable"
.LASF669:
	.string	"curproc"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF381:
	.string	"MAX_FILES 1024"
.LASF500:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF569:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
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
