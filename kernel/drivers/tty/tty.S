	.file	"tty.c"
	.text
.Ltext0:
	.file 1 "drivers/tty/tty.c"
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
	.globl	tty_cdev_ops
	.data
	.align 32
	.type	tty_cdev_ops, @object
	.size	tty_cdev_ops, 40
tty_cdev_ops:
	.quad	tty_read
	.quad	tty_write
	.quad	0
	.quad	0
	.quad	0
	.globl	ttys
	.bss
	.align 16
	.type	ttys, @object
	.size	ttys, 24
ttys:
	.zero	24
	.globl	active_tty
	.align 8
	.type	active_tty, @object
	.size	active_tty, 8
active_tty:
	.zero	8
	.section	.rodata
.LC0:
	.string	"!ret"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/tty/tty.c"
.LC3:
	.string	"ttys[active_tty]"
	.text
	.globl	tty_init
	.type	tty_init, @function
tty_init:
.LFB10:
	.loc 1 30 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
.LBB2:
	.loc 1 31 19
	movl	$0, -4(%rbp)
	.loc 1 31 5
	jmp	.L19
.L21:
.LBB3:
	.loc 1 33 32
	movl	$456, %edi
	movabsq	$kmalloc, %rax
	call	*%rax
.LVL0:
	.loc 1 33 30
	movabsq	$ttys, %rcx
	movl	-4(%rbp), %edx
	movq	%rax, (%rcx,%rdx,8)
	.loc 1 33 16
	movabsq	$ttys, %rdx
	movl	-4(%rbp), %eax
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	.loc 1 34 9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vterminal_init, %rax
	call	*%rax
.LVL1:
	.loc 1 35 9
	movq	-16(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	movabsq	$ldisc_init, %rax
	call	*%rax
.LVL2:
	.loc 1 37 31
	movl	-4(%rbp), %eax
	orb	$2, %ah
	movl	%eax, %edx
	.loc 1 37 29
	movq	-16(%rbp), %rax
	movl	%edx, 328(%rax)
	.loc 1 38 9
	movq	-16(%rbp), %rax
	addq	$344, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL3:
	.loc 1 39 30
	movq	-16(%rbp), %rax
	movabsq	$tty_cdev_ops, %rsi
	movq	%rsi, 336(%rax)
	.loc 1 41 9
	movq	-16(%rbp), %rax
	addq	$408, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_init, %rax
	call	*%rax
.LVL4:
	.loc 1 42 9
	movq	-16(%rbp), %rax
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_init, %rax
	call	*%rax
.LVL5:
	.loc 1 44 20
	movq	-16(%rbp), %rax
	addq	$328, %rax
	movq	%rax, %rdi
	movabsq	$chardev_register, %rax
	call	*%rax
.LVL6:
	movq	%rax, -24(%rbp)
	.loc 1 45 9
	cmpq	$0, -24(%rbp)
	je	.L20
	.loc 1 45 9 is_stmt 0 discriminator 1
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$45, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL7:
.L20:
.LBE3:
	.loc 1 31 39 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)
.L19:
	.loc 1 31 28 discriminator 1
	cmpl	$2, -4(%rbp)
	jbe	.L21
.LBE2:
	.loc 1 47 16
	movabsq	$active_tty, %rax
	movq	$0, (%rax)
	.loc 1 48 32
	movabsq	$active_tty, %rax
	movq	(%rax), %rax
	movabsq	$ttys, %rdx
	movq	(%rdx,%rax,8), %rax
	.loc 1 48 5
	movq	%rax, %rdi
	movabsq	$vterminal_make_active, %rax
	call	*%rax
.LVL8:
	.loc 1 49 5
	movabsq	$active_tty, %rax
	movq	(%rax), %rax
	movabsq	$ttys, %rdx
	movq	(%rdx,%rax,8), %rax
	testq	%rax, %rax
	jne	.L22
	.loc 1 49 5 is_stmt 0 discriminator 1
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$49, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL9:
.L22:
	.loc 1 51 5 is_stmt 1
	movabsq	$tty_receive_char_multiplexer, %rax
	movq	%rax, %rdi
	movabsq	$keyboard_init, %rax
	call	*%rax
.LVL10:
	.loc 1 52 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	tty_init, .-tty_init
	.globl	tty_read
	.type	tty_read, @function
tty_read:
.LFB11:
	.loc 1 71 1
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
	movq	%rcx, -64(%rbp)
	.loc 1 73 8
	cmpq	$0, -64(%rbp)
	jne	.L24
	.loc 1 74 16
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 1 77 12
	movq	-40(%rbp), %rax
	subq	$328, %rax
	movq	%rax, -16(%rbp)
	.loc 1 78 5
	movq	-16(%rbp), %rax
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_lock, %rax
	call	*%rax
.LVL11:
	.loc 1 80 19
	movl	$224, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL12:
	movb	%al, -17(%rbp)
	.loc 1 82 19
	movq	-16(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	movabsq	$ldisc_wait_read, %rax
	call	*%rax
.LVL13:
	movq	%rax, -8(%rbp)
	.loc 1 83 8
	cmpq	$0, -8(%rbp)
	jne	.L26
	.loc 1 84 15
	movq	-16(%rbp), %rax
	leaq	144(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$ldisc_read, %rax
	call	*%rax
.LVL14:
	.loc 1 84 13
	movq	%rax, -8(%rbp)
.L26:
	.loc 1 86 5
	movzbl	-17(%rbp), %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL15:
	.loc 1 88 5
	movq	-16(%rbp), %rax
	addq	$360, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_unlock, %rax
	call	*%rax
.LVL16:
	.loc 1 89 12
	movq	-8(%rbp), %rax
.L25:
	.loc 1 92 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	tty_read, .-tty_read
	.globl	tty_write
	.type	tty_write, @function
tty_write:
.LFB12:
	.loc 1 108 1
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
	movq	%rcx, -64(%rbp)
	.loc 1 110 8
	cmpq	$0, -64(%rbp)
	jne	.L28
	.loc 1 111 16
	movl	$0, %eax
	jmp	.L29
.L28:
	.loc 1 112 12
	movq	-40(%rbp), %rax
	subq	$328, %rax
	movq	%rax, -8(%rbp)
	.loc 1 113 5
	movq	-8(%rbp), %rax
	addq	$408, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_lock, %rax
	call	*%rax
.LVL17:
	.loc 1 115 19
	movl	$224, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL18:
	movb	%al, -9(%rbp)
	.loc 1 117 19
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vterminal_write, %rax
	call	*%rax
.LVL19:
	.loc 1 117 13
	movq	%rax, -24(%rbp)
	.loc 1 119 5
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL20:
	.loc 1 121 5
	movq	-8(%rbp), %rax
	addq	$408, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_unlock, %rax
	call	*%rax
.LVL21:
	.loc 1 122 12
	movq	-24(%rbp), %rax
.L29:
	.loc 1 125 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	tty_write, .-tty_write
	.type	tty_receive_char_multiplexer, @function
tty_receive_char_multiplexer:
.LFB13:
	.loc 1 128 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 1 129 22
	movabsq	$active_tty, %rax
	movq	(%rax), %rax
	.loc 1 129 12
	movabsq	$ttys, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	.loc 1 131 11
	movzbl	-20(%rbp), %eax
	.loc 1 131 8
	testb	%al, %al
	jns	.L31
	.loc 1 131 17 discriminator 1
	cmpb	$-117, -20(%rbp)
	ja	.L31
	.loc 1 133 12
	cmpb	$-126, -20(%rbp)
	ja	.L41
	.loc 1 136 26
	movzbl	-20(%rbp), %eax
	.loc 1 136 38
	addl	$-128, %eax
	movl	%eax, %edx
	.loc 1 136 24
	movabsq	$active_tty, %rax
	movq	%rdx, (%rax)
	.loc 1 137 23
	movabsq	$active_tty, %rax
	movq	(%rax), %rax
	.loc 1 137 17
	movabsq	$ttys, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	.loc 1 138 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vterminal_make_active, %rax
	call	*%rax
.LVL22:
	.loc 1 140 9
	jmp	.L41
.L31:
	.loc 1 142 8
	cmpb	$13, -20(%rbp)
	jne	.L34
	.loc 1 143 11
	movb	$10, -20(%rbp)
	jmp	.L35
.L34:
	.loc 1 144 13
	cmpb	$127, -20(%rbp)
	jne	.L35
	.loc 1 145 11
	movb	$8, -20(%rbp)
.L35:
	.loc 1 147 18
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 148 13
	movzbl	-20(%rbp), %eax
	.loc 1 148 5
	subl	$14, %eax
	cmpl	$15, %eax
	ja	.L36
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movabsq	$.L38, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L38:
	.quad	.L42
	.quad	.L42
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.text
.L36:
	.loc 1 163 9
	movzbl	-20(%rbp), %eax
	movsbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$144, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movabsq	$ldisc_key_pressed, %rax
	call	*%rax
.LVL23:
	.loc 1 165 9
	jmp	.L30
.L41:
	.loc 1 140 9
	nop
	jmp	.L30
.L42:
	.loc 1 153 9
	nop
.L30:
	.loc 1 167 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	tty_receive_char_multiplexer, .-tty_receive_char_multiplexer
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 9
__func__.0:
	.string	"tty_init"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/drivers/chardev.h"
	.file 7 "include/proc/sched.h"
	.file 8 "include/proc/kmutex.h"
	.file 9 "include/proc/kthread.h"
	.file 10 "include/drivers/tty/ldisc.h"
	.file 11 "include/drivers/tty/vterminal.h"
	.file 12 "include/drivers/tty/tty.h"
	.file 13 "include/drivers/keyboard.h"
	.file 14 "include/vm/vmmap.h"
	.file 15 "include/proc/proc.h"
	.file 16 "include/mm/pagetable.h"
	.file 17 "include/proc/context.h"
	.file 18 "include/mm/kmalloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1104
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF948
	.byte	0xc
	.long	.LASF949
	.long	.LASF950
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
	.long	0x44
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
	.long	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF765
	.byte	0x4
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF766
	.uleb128 0x3
	.long	.LASF767
	.byte	0x4
	.byte	0x10
	.byte	0x15
	.long	0x8b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF768
	.uleb128 0x3
	.long	.LASF769
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x9e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF770
	.uleb128 0x3
	.long	.LASF771
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x9e
	.uleb128 0x3
	.long	.LASF772
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x92
	.uleb128 0x3
	.long	.LASF773
	.byte	0x4
	.byte	0x15
	.byte	0x11
	.long	0x7f
	.uleb128 0x3
	.long	.LASF774
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.long	0x59
	.uleb128 0x3
	.long	.LASF775
	.byte	0x4
	.byte	0x1c
	.byte	0x12
	.long	0x6c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF780
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0x10b
	.uleb128 0x7
	.long	.LASF776
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0x10b
	.byte	0
	.uleb128 0x7
	.long	.LASF777
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0x10b
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe3
	.uleb128 0x3
	.long	.LASF778
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xe3
	.uleb128 0x3
	.long	.LASF779
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xe3
	.uleb128 0x6
	.long	.LASF781
	.byte	0x20
	.byte	0x6
	.byte	0xc
	.byte	0x10
	.long	0x15e
	.uleb128 0x7
	.long	.LASF782
	.byte	0x6
	.byte	0xe
	.byte	0xd
	.long	0xd5
	.byte	0
	.uleb128 0x7
	.long	.LASF783
	.byte	0x6
	.byte	0xf
	.byte	0x19
	.long	0x1ad
	.byte	0x8
	.uleb128 0x7
	.long	.LASF784
	.byte	0x6
	.byte	0x10
	.byte	0x11
	.long	0x11d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF785
	.byte	0x28
	.byte	0x6
	.byte	0x13
	.byte	0x10
	.long	0x1ad
	.uleb128 0x7
	.long	.LASF786
	.byte	0x6
	.byte	0x15
	.byte	0xf
	.long	0x1e4
	.byte	0
	.uleb128 0x7
	.long	.LASF787
	.byte	0x6
	.byte	0x17
	.byte	0xf
	.long	0x210
	.byte	0x8
	.uleb128 0x7
	.long	.LASF788
	.byte	0x6
	.byte	0x19
	.byte	0xc
	.long	0x249
	.byte	0x10
	.uleb128 0x7
	.long	.LASF789
	.byte	0x6
	.byte	0x1b
	.byte	0xc
	.long	0x270
	.byte	0x18
	.uleb128 0x7
	.long	.LASF790
	.byte	0x6
	.byte	0x1d
	.byte	0xc
	.long	0x270
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x15e
	.uleb128 0x3
	.long	.LASF791
	.byte	0x6
	.byte	0x11
	.byte	0x3
	.long	0x129
	.uleb128 0x9
	.byte	0x1
	.long	0xbd
	.long	0x1de
	.uleb128 0xa
	.long	0x1de
	.uleb128 0xa
	.long	0xb1
	.uleb128 0xa
	.long	0xe1
	.uleb128 0xa
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1b3
	.uleb128 0x8
	.byte	0x8
	.long	0x1bf
	.uleb128 0x9
	.byte	0x1
	.long	0xbd
	.long	0x209
	.uleb128 0xa
	.long	0x1de
	.uleb128 0xa
	.long	0xb1
	.uleb128 0xa
	.long	0x209
	.uleb128 0xa
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x20f
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x8
	.long	0x1ea
	.uleb128 0x9
	.byte	0x1
	.long	0x8b
	.long	0x22b
	.uleb128 0xa
	.long	0x22b
	.uleb128 0xa
	.long	0x237
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x231
	.uleb128 0xc
	.long	.LASF792
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x23d
	.uleb128 0x8
	.byte	0x8
	.long	0x243
	.uleb128 0xc
	.long	.LASF793
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x216
	.uleb128 0x9
	.byte	0x1
	.long	0x8b
	.long	0x264
	.uleb128 0xa
	.long	0x22b
	.uleb128 0xa
	.long	0x264
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x26a
	.uleb128 0xc
	.long	.LASF794
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x24f
	.uleb128 0x3
	.long	.LASF795
	.byte	0x6
	.byte	0x1e
	.byte	0x3
	.long	0x15e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF796
	.uleb128 0xd
	.long	0x282
	.uleb128 0x6
	.long	.LASF797
	.byte	0x18
	.byte	0x7
	.byte	0xf
	.byte	0x10
	.long	0x2b6
	.uleb128 0x7
	.long	.LASF798
	.byte	0x7
	.byte	0x11
	.byte	0xc
	.long	0x111
	.byte	0
	.uleb128 0x7
	.long	.LASF799
	.byte	0x7
	.byte	0x12
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF800
	.byte	0x7
	.byte	0x13
	.byte	0x3
	.long	0x28e
	.uleb128 0x6
	.long	.LASF801
	.byte	0x30
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x2f7
	.uleb128 0x7
	.long	.LASF802
	.byte	0x8
	.byte	0xc
	.byte	0xf
	.long	0x2b6
	.byte	0
	.uleb128 0x7
	.long	.LASF803
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.long	0x3a1
	.byte	0x18
	.uleb128 0x7
	.long	.LASF804
	.byte	0x8
	.byte	0xe
	.byte	0x11
	.long	0x11d
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF805
	.byte	0xa0
	.byte	0x9
	.byte	0x21
	.byte	0x10
	.long	0x3a1
	.uleb128 0x7
	.long	.LASF806
	.byte	0x9
	.byte	0x23
	.byte	0xf
	.long	0x903
	.byte	0
	.uleb128 0x7
	.long	.LASF807
	.byte	0x9
	.byte	0x24
	.byte	0xb
	.long	0x954
	.byte	0x30
	.uleb128 0x7
	.long	.LASF808
	.byte	0x9
	.byte	0x25
	.byte	0xb
	.long	0xe1
	.byte	0x38
	.uleb128 0x7
	.long	.LASF809
	.byte	0x9
	.byte	0x26
	.byte	0xa
	.long	0x8b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF810
	.byte	0x9
	.byte	0x27
	.byte	0x12
	.long	0x85d
	.byte	0x48
	.uleb128 0x7
	.long	.LASF811
	.byte	0x9
	.byte	0x29
	.byte	0xa
	.long	0x8b
	.byte	0x50
	.uleb128 0x7
	.long	.LASF812
	.byte	0x9
	.byte	0x2a
	.byte	0x10
	.long	0x90f
	.byte	0x58
	.uleb128 0x7
	.long	.LASF813
	.byte	0x9
	.byte	0x2b
	.byte	0x15
	.long	0x948
	.byte	0x60
	.uleb128 0x7
	.long	.LASF814
	.byte	0x9
	.byte	0x2d
	.byte	0x11
	.long	0x11d
	.byte	0x68
	.uleb128 0x7
	.long	.LASF815
	.byte	0x9
	.byte	0x2f
	.byte	0x9
	.long	0x11d
	.byte	0x78
	.uleb128 0x7
	.long	.LASF816
	.byte	0x9
	.byte	0x31
	.byte	0xc
	.long	0x111
	.byte	0x88
	.uleb128 0x7
	.long	.LASF817
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.long	0x92
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2f7
	.uleb128 0x3
	.long	.LASF818
	.byte	0x8
	.byte	0xf
	.byte	0x3
	.long	0x2c2
	.uleb128 0x6
	.long	.LASF819
	.byte	0xb8
	.byte	0xa
	.byte	0x2f
	.byte	0x10
	.long	0x40f
	.uleb128 0x7
	.long	.LASF820
	.byte	0xa
	.byte	0x31
	.byte	0xc
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.long	.LASF821
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0xb1
	.byte	0x8
	.uleb128 0x7
	.long	.LASF822
	.byte	0xa
	.byte	0x33
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.uleb128 0x7
	.long	.LASF823
	.byte	0xa
	.byte	0x34
	.byte	0xa
	.long	0x282
	.byte	0x18
	.uleb128 0x7
	.long	.LASF824
	.byte	0xa
	.byte	0x38
	.byte	0xf
	.long	0x2b6
	.byte	0x20
	.uleb128 0x7
	.long	.LASF825
	.byte	0xa
	.byte	0x39
	.byte	0xa
	.long	0x40f
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.long	0x282
	.long	0x41f
	.uleb128 0xf
	.long	0x9e
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.long	.LASF826
	.byte	0xa
	.byte	0x3a
	.byte	0x3
	.long	0x3b3
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xb
	.byte	0x99
	.byte	0x1
	.long	0x46a
	.uleb128 0x11
	.long	.LASF827
	.byte	0
	.uleb128 0x11
	.long	.LASF828
	.byte	0x1
	.uleb128 0x11
	.long	.LASF829
	.byte	0x2
	.uleb128 0x11
	.long	.LASF830
	.byte	0x3
	.uleb128 0x11
	.long	.LASF831
	.byte	0x4
	.uleb128 0x11
	.long	.LASF832
	.byte	0x5
	.uleb128 0x11
	.long	.LASF833
	.byte	0x6
	.uleb128 0x11
	.long	.LASF834
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF835
	.byte	0xb
	.byte	0xa2
	.byte	0x3
	.long	0x42b
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xb
	.byte	0xa5
	.byte	0x1
	.long	0x49d
	.uleb128 0x11
	.long	.LASF836
	.byte	0
	.uleb128 0x11
	.long	.LASF837
	.byte	0x1
	.uleb128 0x11
	.long	.LASF838
	.byte	0x2
	.uleb128 0x11
	.long	.LASF839
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF840
	.byte	0xb
	.byte	0xaa
	.byte	0x3
	.long	0x476
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0xac
	.byte	0x9
	.long	0x4cd
	.uleb128 0x7
	.long	.LASF841
	.byte	0xb
	.byte	0xae
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x7
	.long	.LASF842
	.byte	0xb
	.byte	0xaf
	.byte	0x9
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF843
	.byte	0xb
	.byte	0xb0
	.byte	0x3
	.long	0x4a9
	.uleb128 0x12
	.byte	0x48
	.byte	0xb
	.byte	0xb2
	.byte	0x9
	.long	0x50a
	.uleb128 0x7
	.long	.LASF844
	.byte	0xb
	.byte	0xb4
	.byte	0x1b
	.long	0x49d
	.byte	0
	.uleb128 0x7
	.long	.LASF845
	.byte	0xb
	.byte	0xb5
	.byte	0x12
	.long	0x50a
	.byte	0x4
	.uleb128 0x7
	.long	.LASF846
	.byte	0xb
	.byte	0xb6
	.byte	0x9
	.long	0x65
	.byte	0x44
	.byte	0
	.uleb128 0xe
	.long	0x4cd
	.long	0x51a
	.uleb128 0xf
	.long	0x9e
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF847
	.byte	0xb
	.byte	0xb7
	.byte	0x3
	.long	0x4d9
	.uleb128 0x12
	.byte	0xc
	.byte	0xb
	.byte	0xb9
	.byte	0x9
	.long	0x555
	.uleb128 0x7
	.long	.LASF848
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
	.long	0x46a
	.byte	0x4
	.uleb128 0x13
	.string	"bg"
	.byte	0xb
	.byte	0xbd
	.byte	0xf
	.long	0x46a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF849
	.byte	0xb
	.byte	0xbe
	.byte	0x3
	.long	0x526
	.uleb128 0x12
	.byte	0x10
	.byte	0xb
	.byte	0xc0
	.byte	0x9
	.long	0x583
	.uleb128 0x13
	.string	"c"
	.byte	0xb
	.byte	0xc2
	.byte	0xa
	.long	0x282
	.byte	0
	.uleb128 0x7
	.long	.LASF850
	.byte	0xb
	.byte	0xc3
	.byte	0xe
	.long	0x555
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF851
	.byte	0xb
	.byte	0xc4
	.byte	0x3
	.long	0x561
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0xc6
	.byte	0x9
	.long	0x5af
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
	.long	.LASF852
	.byte	0xb
	.byte	0xca
	.byte	0x3
	.long	0x58f
	.uleb128 0x3
	.long	.LASF853
	.byte	0xb
	.byte	0xcc
	.byte	0x10
	.long	0x5c7
	.uleb128 0x8
	.byte	0x8
	.long	0x5cd
	.uleb128 0x14
	.byte	0x1
	.long	0x5e8
	.uleb128 0xa
	.long	0x5e8
	.uleb128 0xa
	.long	0x67e
	.uleb128 0xa
	.long	0x65
	.uleb128 0xa
	.long	0x65
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5ee
	.uleb128 0x6
	.long	.LASF854
	.byte	0x90
	.byte	0xb
	.byte	0xd0
	.byte	0x10
	.long	0x67e
	.uleb128 0x7
	.long	.LASF855
	.byte	0xb
	.byte	0xd2
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0x7
	.long	.LASF856
	.byte	0xb
	.byte	0xd3
	.byte	0x9
	.long	0x65
	.byte	0x4
	.uleb128 0x7
	.long	.LASF850
	.byte	0xb
	.byte	0xd5
	.byte	0xe
	.long	0x555
	.byte	0x8
	.uleb128 0x7
	.long	.LASF857
	.byte	0xb
	.byte	0xd6
	.byte	0x15
	.long	0x51a
	.byte	0x14
	.uleb128 0x7
	.long	.LASF858
	.byte	0xb
	.byte	0xd8
	.byte	0xf
	.long	0x67e
	.byte	0x60
	.uleb128 0x7
	.long	.LASF859
	.byte	0xb
	.byte	0xd9
	.byte	0xa
	.long	0x6ad
	.byte	0x68
	.uleb128 0x7
	.long	.LASF860
	.byte	0xb
	.byte	0xda
	.byte	0x9
	.long	0x65
	.byte	0x70
	.uleb128 0x7
	.long	.LASF861
	.byte	0xb
	.byte	0xdb
	.byte	0x10
	.long	0x5af
	.byte	0x74
	.uleb128 0x7
	.long	.LASF862
	.byte	0xb
	.byte	0xdd
	.byte	0x19
	.long	0x5bb
	.byte	0x80
	.uleb128 0x7
	.long	.LASF863
	.byte	0xb
	.byte	0xde
	.byte	0x1a
	.long	0x684
	.byte	0x88
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x583
	.uleb128 0x3
	.long	.LASF864
	.byte	0xb
	.byte	0xce
	.byte	0x10
	.long	0x690
	.uleb128 0x8
	.byte	0x8
	.long	0x696
	.uleb128 0x14
	.byte	0x1
	.long	0x6a7
	.uleb128 0xa
	.long	0x5e8
	.uleb128 0xa
	.long	0x6a7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5af
	.uleb128 0x8
	.byte	0x8
	.long	0x65
	.uleb128 0x3
	.long	.LASF865
	.byte	0xb
	.byte	0xdf
	.byte	0x3
	.long	0x5ee
	.uleb128 0x3
	.long	.LASF866
	.byte	0xb
	.byte	0xe1
	.byte	0x15
	.long	0x6b3
	.uleb128 0x15
	.string	"tty"
	.value	0x1c8
	.byte	0xc
	.byte	0xb
	.byte	0x10
	.long	0x71e
	.uleb128 0x7
	.long	.LASF867
	.byte	0xc
	.byte	0xd
	.byte	0x11
	.long	0x6bf
	.byte	0
	.uleb128 0x7
	.long	.LASF868
	.byte	0xc
	.byte	0xe
	.byte	0xd
	.long	0x41f
	.byte	0x90
	.uleb128 0x16
	.long	.LASF869
	.byte	0xc
	.byte	0xf
	.byte	0xf
	.long	0x1b3
	.value	0x148
	.uleb128 0x16
	.long	.LASF870
	.byte	0xc
	.byte	0x10
	.byte	0xe
	.long	0x3a7
	.value	0x168
	.uleb128 0x16
	.long	.LASF871
	.byte	0xc
	.byte	0x11
	.byte	0xe
	.long	0x3a7
	.value	0x198
	.byte	0
	.uleb128 0x3
	.long	.LASF872
	.byte	0xc
	.byte	0x12
	.byte	0x3
	.long	0x6cb
	.uleb128 0x3
	.long	.LASF873
	.byte	0xd
	.byte	0x26
	.byte	0x10
	.long	0x736
	.uleb128 0x8
	.byte	0x8
	.long	0x73c
	.uleb128 0x14
	.byte	0x1
	.long	0x748
	.uleb128 0xa
	.long	0x38
	.byte	0
	.uleb128 0x6
	.long	.LASF874
	.byte	0x18
	.byte	0xe
	.byte	0xe
	.byte	0x10
	.long	0x770
	.uleb128 0x7
	.long	.LASF875
	.byte	0xe
	.byte	0x10
	.byte	0xc
	.long	0x111
	.byte	0
	.uleb128 0x7
	.long	.LASF876
	.byte	0xe
	.byte	0x11
	.byte	0x12
	.long	0x85d
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	.LASF877
	.value	0x2a0
	.byte	0xf
	.byte	0x1b
	.byte	0x10
	.long	0x85d
	.uleb128 0x7
	.long	.LASF878
	.byte	0xf
	.byte	0x1d
	.byte	0xb
	.long	0xc9
	.byte	0
	.uleb128 0x7
	.long	.LASF879
	.byte	0xf
	.byte	0x1e
	.byte	0xa
	.long	0x981
	.byte	0x4
	.uleb128 0x16
	.long	.LASF880
	.byte	0xf
	.byte	0x20
	.byte	0xc
	.long	0x111
	.value	0x108
	.uleb128 0x16
	.long	.LASF881
	.byte	0xf
	.byte	0x21
	.byte	0xc
	.long	0x111
	.value	0x118
	.uleb128 0x16
	.long	.LASF882
	.byte	0xf
	.byte	0x22
	.byte	0x12
	.long	0x85d
	.value	0x128
	.uleb128 0x16
	.long	.LASF883
	.byte	0xf
	.byte	0x24
	.byte	0x11
	.long	0x11d
	.value	0x130
	.uleb128 0x16
	.long	.LASF884
	.byte	0xf
	.byte	0x25
	.byte	0x11
	.long	0x11d
	.value	0x140
	.uleb128 0x16
	.long	.LASF885
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x8b
	.value	0x150
	.uleb128 0x16
	.long	.LASF886
	.byte	0xf
	.byte	0x28
	.byte	0x12
	.long	0x975
	.value	0x158
	.uleb128 0x16
	.long	.LASF887
	.byte	0xf
	.byte	0x2a
	.byte	0xd
	.long	0x8fd
	.value	0x160
	.uleb128 0x16
	.long	.LASF888
	.byte	0xf
	.byte	0x31
	.byte	0xf
	.long	0x2b6
	.value	0x168
	.uleb128 0x16
	.long	.LASF889
	.byte	0xf
	.byte	0x34
	.byte	0x12
	.long	0x991
	.value	0x180
	.uleb128 0x16
	.long	.LASF890
	.byte	0xf
	.byte	0x35
	.byte	0x13
	.long	0x22b
	.value	0x280
	.uleb128 0x16
	.long	.LASF891
	.byte	0xf
	.byte	0x45
	.byte	0xb
	.long	0xe1
	.value	0x288
	.uleb128 0x16
	.long	.LASF892
	.byte	0xf
	.byte	0x46
	.byte	0xb
	.long	0xe1
	.value	0x290
	.uleb128 0x16
	.long	.LASF893
	.byte	0xf
	.byte	0x47
	.byte	0x13
	.long	0x863
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x770
	.uleb128 0x8
	.byte	0x8
	.long	0x748
	.uleb128 0x15
	.string	"pt"
	.value	0x1000
	.byte	0x10
	.byte	0x18
	.byte	0x10
	.long	0x884
	.uleb128 0x7
	.long	.LASF894
	.byte	0x10
	.byte	0x1a
	.byte	0xf
	.long	0x884
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xa5
	.long	0x895
	.uleb128 0x18
	.long	0x9e
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF895
	.byte	0x10
	.byte	0x1b
	.byte	0x16
	.long	0x869
	.uleb128 0x6
	.long	.LASF896
	.byte	0x30
	.byte	0x11
	.byte	0xd
	.byte	0x10
	.long	0x8fd
	.uleb128 0x7
	.long	.LASF897
	.byte	0x11
	.byte	0xf
	.byte	0xf
	.long	0xa5
	.byte	0
	.uleb128 0x7
	.long	.LASF898
	.byte	0x11
	.byte	0x10
	.byte	0xf
	.long	0xa5
	.byte	0x8
	.uleb128 0x7
	.long	.LASF899
	.byte	0x11
	.byte	0x11
	.byte	0xf
	.long	0xa5
	.byte	0x10
	.uleb128 0x7
	.long	.LASF900
	.byte	0x11
	.byte	0x14
	.byte	0xa
	.long	0x8fd
	.byte	0x18
	.uleb128 0x7
	.long	.LASF901
	.byte	0x11
	.byte	0x18
	.byte	0xf
	.long	0xa5
	.byte	0x20
	.uleb128 0x7
	.long	.LASF902
	.byte	0x11
	.byte	0x19
	.byte	0xc
	.long	0xb1
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x895
	.uleb128 0x3
	.long	.LASF903
	.byte	0x11
	.byte	0x1a
	.byte	0x3
	.long	0x8a1
	.uleb128 0x8
	.byte	0x8
	.long	0x2b6
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.long	0x948
	.uleb128 0x11
	.long	.LASF904
	.byte	0
	.uleb128 0x11
	.long	.LASF905
	.byte	0x1
	.uleb128 0x11
	.long	.LASF906
	.byte	0x2
	.uleb128 0x11
	.long	.LASF907
	.byte	0x3
	.uleb128 0x11
	.long	.LASF908
	.byte	0x4
	.uleb128 0x11
	.long	.LASF909
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF910
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.long	0x915
	.uleb128 0x8
	.byte	0x8
	.long	0x282
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x78
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.long	0x975
	.uleb128 0x11
	.long	.LASF911
	.byte	0
	.uleb128 0x11
	.long	.LASF912
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF913
	.byte	0xf
	.byte	0x18
	.byte	0x3
	.long	0x95a
	.uleb128 0xe
	.long	0x282
	.long	0x991
	.uleb128 0xf
	.long	0x9e
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.long	0x9a1
	.long	0x9a1
	.uleb128 0xf
	.long	0x9e
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9a7
	.uleb128 0xc
	.long	.LASF914
	.byte	0x1
	.uleb128 0x19
	.long	.LASF915
	.byte	0x1
	.byte	0x11
	.byte	0xf
	.long	0x276
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tty_cdev_ops
	.uleb128 0xe
	.long	0x9d4
	.long	0x9d4
	.uleb128 0xf
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x71e
	.uleb128 0x19
	.long	.LASF916
	.byte	0x1
	.byte	0x17
	.byte	0x8
	.long	0x9c4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ttys
	.uleb128 0x19
	.long	.LASF917
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.long	0xb1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	active_tty
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF918
	.byte	0xa
	.byte	0x42
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa22
	.uleb128 0xa
	.long	0xa22
	.uleb128 0xa
	.long	0x282
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x41f
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF920
	.byte	0xb
	.byte	0xef
	.byte	0x8
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0xa4b
	.uleb128 0xa
	.long	0xa4b
	.uleb128 0xa
	.long	0xa51
	.uleb128 0xa
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6bf
	.uleb128 0x8
	.byte	0x8
	.long	0x289
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF919
	.byte	0x8
	.byte	0x32
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa6c
	.uleb128 0xa
	.long	0xa6c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3a7
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF921
	.byte	0xa
	.byte	0x40
	.byte	0x8
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0xa95
	.uleb128 0xa
	.long	0xa22
	.uleb128 0xa
	.long	0x954
	.uleb128 0xa
	.long	0xb1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF922
	.byte	0xa
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.long	0x8b
	.byte	0x1
	.long	0xaae
	.uleb128 0xa
	.long	0xa22
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF923
	.byte	0x2
	.byte	0x70
	.byte	0x9
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0xac7
	.uleb128 0xa
	.long	0x38
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF924
	.byte	0x8
	.byte	0x2b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xadc
	.uleb128 0xa
	.long	0xa6c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF925
	.byte	0xd
	.byte	0x2b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xaf1
	.uleb128 0xa
	.long	0x72a
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF926
	.byte	0xb
	.byte	0xf9
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xb06
	.uleb128 0xa
	.long	0xa4b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF927
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0xb2c
	.uleb128 0xa
	.long	0xa51
	.uleb128 0xa
	.long	0x65
	.uleb128 0xa
	.long	0xa51
	.uleb128 0xa
	.long	0xa51
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF928
	.byte	0x6
	.byte	0x2a
	.byte	0x6
	.byte	0x1
	.long	0x8b
	.byte	0x1
	.long	0xb45
	.uleb128 0xa
	.long	0x1de
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF929
	.byte	0x8
	.byte	0x20
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xb5a
	.uleb128 0xa
	.long	0xa6c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF930
	.byte	0x5
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xb6f
	.uleb128 0xa
	.long	0xb6f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11d
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF931
	.byte	0xa
	.byte	0x3c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xb8a
	.uleb128 0xa
	.long	0xa22
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF932
	.byte	0xb
	.byte	0xf7
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xb9f
	.uleb128 0xa
	.long	0xa4b
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF933
	.byte	0x12
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.long	0xe1
	.byte	0x1
	.long	0xbb8
	.uleb128 0xa
	.long	0xb1
	.byte	0
	.uleb128 0x1e
	.long	.LASF951
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.byte	0x1
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc1d
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x7f
	.byte	0x32
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"tty"
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.long	0x9d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"vt"
	.byte	0x1
	.byte	0x93
	.byte	0x12
	.long	0xa4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.quad	.LVL22
	.long	0xaf1
	.uleb128 0x21
	.quad	.LVL23
	.long	0xa08
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF936
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.byte	0x1
	.long	0xbd
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcef
	.uleb128 0x23
	.long	.LASF934
	.byte	0x1
	.byte	0x6b
	.byte	0x1e
	.long	0x1de
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"pos"
	.byte	0x1
	.byte	0x6b
	.byte	0x2b
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.byte	0x6b
	.byte	0x3c
	.long	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF935
	.byte	0x1
	.byte	0x6b
	.byte	0x48
	.long	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"tty"
	.byte	0x1
	.byte	0x70
	.byte	0xc
	.long	0x9d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"ipl"
	.byte	0x1
	.byte	0x73
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LVL17
	.long	0xac7
	.uleb128 0x21
	.quad	.LVL18
	.long	0xaae
	.uleb128 0x21
	.quad	.LVL19
	.long	0xa28
	.uleb128 0x21
	.quad	.LVL20
	.long	0xaae
	.uleb128 0x21
	.quad	.LVL21
	.long	0xa57
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF937
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.byte	0x1
	.long	0xbd
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdce
	.uleb128 0x23
	.long	.LASF934
	.byte	0x1
	.byte	0x46
	.byte	0x1d
	.long	0x1de
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"pos"
	.byte	0x1
	.byte	0x46
	.byte	0x2a
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.byte	0x46
	.byte	0x35
	.long	0xe1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF935
	.byte	0x1
	.byte	0x46
	.byte	0x41
	.long	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"tty"
	.byte	0x1
	.byte	0x4d
	.byte	0xc
	.long	0x9d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"ipl"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LVL11
	.long	0xac7
	.uleb128 0x21
	.quad	.LVL12
	.long	0xaae
	.uleb128 0x21
	.quad	.LVL13
	.long	0xa95
	.uleb128 0x21
	.quad	.LVL14
	.long	0xa72
	.uleb128 0x21
	.quad	.LVL15
	.long	0xaae
	.uleb128 0x21
	.quad	.LVL16
	.long	0xa57
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF952
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xee6
	.uleb128 0x25
	.long	.LASF953
	.long	0xef6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2
	.long	0xebe
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x20
	.string	"tty"
	.byte	0x1
	.byte	0x21
	.byte	0x10
	.long	0x9d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LVL0
	.long	0xb9f
	.uleb128 0x21
	.quad	.LVL1
	.long	0xb8a
	.uleb128 0x21
	.quad	.LVL2
	.long	0xb75
	.uleb128 0x21
	.quad	.LVL3
	.long	0xb5a
	.uleb128 0x21
	.quad	.LVL4
	.long	0xb45
	.uleb128 0x21
	.quad	.LVL5
	.long	0xb45
	.uleb128 0x21
	.quad	.LVL6
	.long	0xb2c
	.uleb128 0x21
	.quad	.LVL7
	.long	0xb06
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL8
	.long	0xaf1
	.uleb128 0x21
	.quad	.LVL9
	.long	0xb06
	.uleb128 0x21
	.quad	.LVL10
	.long	0xadc
	.byte	0
	.uleb128 0xe
	.long	0x289
	.long	0xef6
	.uleb128 0xf
	.long	0x9e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0xee6
	.uleb128 0x28
	.long	.LASF938
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
	.long	0xf3d
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF939
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
	.long	0xf7f
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF940
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
	.long	0xfc1
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF941
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
	.long	0x1003
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF942
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
	.long	0x1045
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF943
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
	.long	0x1087
	.uleb128 0x29
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF944
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF945
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF946
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF954
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x92
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF947
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.file 19 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
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
	.uleb128 0x4
	.uleb128 0x5
	.file 20 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x7
	.file 21 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x8
	.long	.LASF408
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF409
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF410
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF411
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.file 22 "include/drivers/screen.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 23 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.file 24 "include/globals.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.file 25 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.file 26 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.file 27 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF520
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.file 28 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1c
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF538
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.file 29 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x10
	.long	.LASF552
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.file 30 "include/errno.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF758
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
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF377
	.byte	0x5
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.uleb128 0x24
	.long	.LASF379
	.byte	0x5
	.uleb128 0x25
	.long	.LASF380
	.byte	0x5
	.uleb128 0x26
	.long	.LASF381
	.byte	0x5
	.uleb128 0x29
	.long	.LASF382
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF383
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF384
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF385
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF386
	.byte	0x5
	.uleb128 0x30
	.long	.LASF387
	.byte	0x5
	.uleb128 0x31
	.long	.LASF388
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF391
	.byte	0x5
	.uleb128 0x21
	.long	.LASF392
	.byte	0x5
	.uleb128 0x26
	.long	.LASF393
	.byte	0x5
	.uleb128 0x29
	.long	.LASF394
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF395
	.byte	0x5
	.uleb128 0x37
	.long	.LASF396
	.byte	0x5
	.uleb128 0x38
	.long	.LASF397
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF398
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF399
	.byte	0x5
	.uleb128 0x59
	.long	.LASF400
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF401
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF402
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF403
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF404
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF405
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF406
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF407
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.screen.h.51.6629e140a1f99b39f2df4938dfb36814,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF412
	.byte	0x5
	.uleb128 0x34
	.long	.LASF413
	.byte	0x5
	.uleb128 0x35
	.long	.LASF414
	.byte	0x5
	.uleb128 0x36
	.long	.LASF415
	.byte	0x5
	.uleb128 0x37
	.long	.LASF416
	.byte	0x5
	.uleb128 0x38
	.long	.LASF417
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF418
	.byte	0x5
	.uleb128 0x11
	.long	.LASF419
	.byte	0x5
	.uleb128 0x12
	.long	.LASF420
	.byte	0x5
	.uleb128 0x14
	.long	.LASF421
	.byte	0x5
	.uleb128 0x15
	.long	.LASF422
	.byte	0x5
	.uleb128 0x18
	.long	.LASF423
	.byte	0x5
	.uleb128 0x19
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x5
	.uleb128 0x20
	.long	.LASF428
	.byte	0x5
	.uleb128 0x22
	.long	.LASF429
	.byte	0x5
	.uleb128 0x23
	.long	.LASF430
	.byte	0x5
	.uleb128 0x25
	.long	.LASF431
	.byte	0x5
	.uleb128 0x26
	.long	.LASF432
	.byte	0x5
	.uleb128 0x27
	.long	.LASF433
	.byte	0x5
	.uleb128 0x28
	.long	.LASF434
	.byte	0x5
	.uleb128 0x29
	.long	.LASF435
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF436
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF437
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF439
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF440
	.byte	0x5
	.uleb128 0x30
	.long	.LASF441
	.byte	0x5
	.uleb128 0x31
	.long	.LASF442
	.byte	0x5
	.uleb128 0x32
	.long	.LASF443
	.byte	0x5
	.uleb128 0x33
	.long	.LASF444
	.byte	0x5
	.uleb128 0x34
	.long	.LASF445
	.byte	0x5
	.uleb128 0x35
	.long	.LASF446
	.byte	0x5
	.uleb128 0x37
	.long	.LASF447
	.byte	0x5
	.uleb128 0x38
	.long	.LASF448
	.byte	0x5
	.uleb128 0x39
	.long	.LASF449
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF450
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF451
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF452
	.byte	0x5
	.uleb128 0x40
	.long	.LASF453
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vterminal.h.144.357f6396a89a60727d038f4896641812,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x90
	.long	.LASF454
	.byte	0x5
	.uleb128 0x91
	.long	.LASF455
	.byte	0x5
	.uleb128 0x92
	.long	.LASF456
	.byte	0x5
	.uleb128 0x94
	.long	.LASF457
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.tty.h.7.b5deb4bd8ae44334d0ec82c7532061a1,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF458
	.byte	0x5
	.uleb128 0x8
	.long	.LASF459
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.keyboard.h.5.54a55c0e186ae89b578b4d25e56d476a,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF460
	.byte	0x5
	.uleb128 0x6
	.long	.LASF461
	.byte	0x5
	.uleb128 0x7
	.long	.LASF462
	.byte	0x5
	.uleb128 0x8
	.long	.LASF463
	.byte	0x5
	.uleb128 0x9
	.long	.LASF464
	.byte	0x5
	.uleb128 0xa
	.long	.LASF465
	.byte	0x5
	.uleb128 0xd
	.long	.LASF466
	.byte	0x5
	.uleb128 0x10
	.long	.LASF467
	.byte	0x5
	.uleb128 0x13
	.long	.LASF468
	.byte	0x5
	.uleb128 0x14
	.long	.LASF469
	.byte	0x5
	.uleb128 0x15
	.long	.LASF470
	.byte	0x5
	.uleb128 0x16
	.long	.LASF471
	.byte	0x5
	.uleb128 0x19
	.long	.LASF472
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF475
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF476
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF478
	.byte	0x5
	.uleb128 0x20
	.long	.LASF479
	.byte	0x5
	.uleb128 0x21
	.long	.LASF480
	.byte	0x5
	.uleb128 0x22
	.long	.LASF481
	.byte	0x5
	.uleb128 0x23
	.long	.LASF482
	.byte	0x5
	.uleb128 0x24
	.long	.LASF483
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF484
	.byte	0x5
	.uleb128 0x5
	.long	.LASF485
	.byte	0x5
	.uleb128 0x6
	.long	.LASF486
	.byte	0x5
	.uleb128 0x7
	.long	.LASF487
	.byte	0x5
	.uleb128 0xa
	.long	.LASF488
	.byte	0x5
	.uleb128 0xc
	.long	.LASF489
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF490
	.byte	0x5
	.uleb128 0x8
	.long	.LASF491
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF492
	.byte	0x5
	.uleb128 0x7
	.long	.LASF493
	.byte	0x5
	.uleb128 0x8
	.long	.LASF494
	.byte	0x5
	.uleb128 0x9
	.long	.LASF495
	.byte	0x5
	.uleb128 0xa
	.long	.LASF496
	.byte	0x5
	.uleb128 0xb
	.long	.LASF497
	.byte	0x5
	.uleb128 0xc
	.long	.LASF498
	.byte	0x5
	.uleb128 0xd
	.long	.LASF499
	.byte	0x5
	.uleb128 0xe
	.long	.LASF500
	.byte	0x5
	.uleb128 0x10
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF504
	.byte	0x5
	.uleb128 0x20
	.long	.LASF505
	.byte	0x5
	.uleb128 0x21
	.long	.LASF506
	.byte	0x5
	.uleb128 0x23
	.long	.LASF501
	.byte	0x5
	.uleb128 0x24
	.long	.LASF507
	.byte	0x5
	.uleb128 0x25
	.long	.LASF508
	.byte	0x5
	.uleb128 0x26
	.long	.LASF509
	.byte	0x5
	.uleb128 0x28
	.long	.LASF510
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF511
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF512
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF513
	.byte	0x5
	.uleb128 0x30
	.long	.LASF514
	.byte	0x5
	.uleb128 0x31
	.long	.LASF515
	.byte	0x5
	.uleb128 0x32
	.long	.LASF516
	.byte	0x5
	.uleb128 0x33
	.long	.LASF517
	.byte	0x5
	.uleb128 0x35
	.long	.LASF518
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF519
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF521
	.byte	0x5
	.uleb128 0xf
	.long	.LASF522
	.byte	0x5
	.uleb128 0x10
	.long	.LASF523
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF524
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF525
	.byte	0x5
	.uleb128 0x23
	.long	.LASF526
	.byte	0x5
	.uleb128 0x24
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
	.uleb128 0x2b
	.long	.LASF532
	.byte	0x5
	.uleb128 0x31
	.long	.LASF533
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF534
	.byte	0x5
	.uleb128 0x11
	.long	.LASF535
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF536
	.byte	0x5
	.uleb128 0xab
	.long	.LASF537
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF539
	.byte	0x5
	.uleb128 0x9
	.long	.LASF540
	.byte	0x5
	.uleb128 0xa
	.long	.LASF541
	.byte	0x5
	.uleb128 0xb
	.long	.LASF542
	.byte	0x5
	.uleb128 0xd
	.long	.LASF543
	.byte	0x5
	.uleb128 0xe
	.long	.LASF544
	.byte	0x5
	.uleb128 0x10
	.long	.LASF545
	.byte	0x5
	.uleb128 0x11
	.long	.LASF546
	.byte	0x5
	.uleb128 0x12
	.long	.LASF547
	.byte	0x5
	.uleb128 0x13
	.long	.LASF548
	.byte	0x5
	.uleb128 0x19
	.long	.LASF549
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF550
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF551
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF553
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF554
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF555
	.byte	0x5
	.uleb128 0x20
	.long	.LASF556
	.byte	0x5
	.uleb128 0x21
	.long	.LASF557
	.byte	0x5
	.uleb128 0x22
	.long	.LASF558
	.byte	0x5
	.uleb128 0x23
	.long	.LASF559
	.byte	0x5
	.uleb128 0x24
	.long	.LASF560
	.byte	0x5
	.uleb128 0x25
	.long	.LASF561
	.byte	0x5
	.uleb128 0x27
	.long	.LASF562
	.byte	0x5
	.uleb128 0x28
	.long	.LASF563
	.byte	0x5
	.uleb128 0x29
	.long	.LASF564
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF565
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF566
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF567
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF568
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF569
	.byte	0x5
	.uleb128 0x34
	.long	.LASF570
	.byte	0x5
	.uleb128 0x35
	.long	.LASF571
	.byte	0x5
	.uleb128 0x36
	.long	.LASF572
	.byte	0x5
	.uleb128 0x37
	.long	.LASF573
	.byte	0x5
	.uleb128 0x38
	.long	.LASF574
	.byte	0x5
	.uleb128 0x39
	.long	.LASF575
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF576
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF577
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF578
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF579
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF580
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF581
	.byte	0x5
	.uleb128 0x40
	.long	.LASF582
	.byte	0x5
	.uleb128 0x41
	.long	.LASF583
	.byte	0x5
	.uleb128 0x42
	.long	.LASF584
	.byte	0x5
	.uleb128 0x43
	.long	.LASF585
	.byte	0x5
	.uleb128 0x44
	.long	.LASF586
	.byte	0x5
	.uleb128 0x45
	.long	.LASF587
	.byte	0x5
	.uleb128 0x46
	.long	.LASF588
	.byte	0x5
	.uleb128 0x47
	.long	.LASF589
	.byte	0x5
	.uleb128 0x48
	.long	.LASF590
	.byte	0x5
	.uleb128 0x49
	.long	.LASF591
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF592
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF593
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF594
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF595
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF596
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF597
	.byte	0x5
	.uleb128 0x50
	.long	.LASF598
	.byte	0x5
	.uleb128 0x51
	.long	.LASF599
	.byte	0x5
	.uleb128 0x52
	.long	.LASF600
	.byte	0x5
	.uleb128 0x54
	.long	.LASF601
	.byte	0x5
	.uleb128 0x55
	.long	.LASF602
	.byte	0x5
	.uleb128 0x56
	.long	.LASF603
	.byte	0x5
	.uleb128 0x57
	.long	.LASF604
	.byte	0x5
	.uleb128 0x58
	.long	.LASF605
	.byte	0x5
	.uleb128 0x59
	.long	.LASF606
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF607
	.byte	0x5
	.uleb128 0x64
	.long	.LASF608
	.byte	0x5
	.uleb128 0x97
	.long	.LASF609
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF610
	.byte	0x5
	.uleb128 0xac
	.long	.LASF611
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF612
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF613
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF614
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF615
	.byte	0x5
	.uleb128 0xee
	.long	.LASF616
	.byte	0x5
	.uleb128 0x101
	.long	.LASF617
	.byte	0x5
	.uleb128 0x104
	.long	.LASF618
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF619
	.byte	0x5
	.uleb128 0x126
	.long	.LASF620
	.byte	0x5
	.uleb128 0x127
	.long	.LASF621
	.byte	0x5
	.uleb128 0x128
	.long	.LASF622
	.byte	0x5
	.uleb128 0x129
	.long	.LASF623
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF624
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF625
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF626
	.byte	0x5
	.uleb128 0xd
	.long	.LASF627
	.byte	0x5
	.uleb128 0xe
	.long	.LASF628
	.byte	0x5
	.uleb128 0xf
	.long	.LASF629
	.byte	0x5
	.uleb128 0x10
	.long	.LASF630
	.byte	0x5
	.uleb128 0x11
	.long	.LASF631
	.byte	0x5
	.uleb128 0x12
	.long	.LASF632
	.byte	0x5
	.uleb128 0x13
	.long	.LASF633
	.byte	0x5
	.uleb128 0x14
	.long	.LASF634
	.byte	0x5
	.uleb128 0x15
	.long	.LASF635
	.byte	0x5
	.uleb128 0x16
	.long	.LASF636
	.byte	0x5
	.uleb128 0x17
	.long	.LASF637
	.byte	0x5
	.uleb128 0x18
	.long	.LASF638
	.byte	0x5
	.uleb128 0x19
	.long	.LASF639
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF640
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF641
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF642
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF643
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF644
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF645
	.byte	0x5
	.uleb128 0x20
	.long	.LASF646
	.byte	0x5
	.uleb128 0x21
	.long	.LASF647
	.byte	0x5
	.uleb128 0x22
	.long	.LASF648
	.byte	0x5
	.uleb128 0x23
	.long	.LASF649
	.byte	0x5
	.uleb128 0x24
	.long	.LASF650
	.byte	0x5
	.uleb128 0x25
	.long	.LASF651
	.byte	0x5
	.uleb128 0x26
	.long	.LASF652
	.byte	0x5
	.uleb128 0x27
	.long	.LASF653
	.byte	0x5
	.uleb128 0x28
	.long	.LASF654
	.byte	0x5
	.uleb128 0x29
	.long	.LASF655
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF656
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF657
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF658
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF659
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF660
	.byte	0x5
	.uleb128 0x30
	.long	.LASF661
	.byte	0x5
	.uleb128 0x31
	.long	.LASF662
	.byte	0x5
	.uleb128 0x32
	.long	.LASF663
	.byte	0x5
	.uleb128 0x33
	.long	.LASF664
	.byte	0x5
	.uleb128 0x34
	.long	.LASF665
	.byte	0x5
	.uleb128 0x35
	.long	.LASF666
	.byte	0x5
	.uleb128 0x36
	.long	.LASF667
	.byte	0x5
	.uleb128 0x37
	.long	.LASF668
	.byte	0x5
	.uleb128 0x38
	.long	.LASF669
	.byte	0x5
	.uleb128 0x39
	.long	.LASF670
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF671
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF672
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF673
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF674
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF675
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF676
	.byte	0x5
	.uleb128 0x40
	.long	.LASF677
	.byte	0x5
	.uleb128 0x41
	.long	.LASF678
	.byte	0x5
	.uleb128 0x42
	.long	.LASF679
	.byte	0x5
	.uleb128 0x43
	.long	.LASF680
	.byte	0x5
	.uleb128 0x44
	.long	.LASF681
	.byte	0x5
	.uleb128 0x45
	.long	.LASF682
	.byte	0x5
	.uleb128 0x47
	.long	.LASF683
	.byte	0x5
	.uleb128 0x49
	.long	.LASF684
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF685
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF686
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF687
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF688
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF689
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF690
	.byte	0x5
	.uleb128 0x50
	.long	.LASF691
	.byte	0x5
	.uleb128 0x51
	.long	.LASF692
	.byte	0x5
	.uleb128 0x52
	.long	.LASF693
	.byte	0x5
	.uleb128 0x53
	.long	.LASF694
	.byte	0x5
	.uleb128 0x54
	.long	.LASF695
	.byte	0x5
	.uleb128 0x55
	.long	.LASF696
	.byte	0x5
	.uleb128 0x56
	.long	.LASF697
	.byte	0x5
	.uleb128 0x57
	.long	.LASF698
	.byte	0x5
	.uleb128 0x58
	.long	.LASF699
	.byte	0x5
	.uleb128 0x59
	.long	.LASF700
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF701
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF702
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF703
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF704
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF705
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF706
	.byte	0x5
	.uleb128 0x60
	.long	.LASF707
	.byte	0x5
	.uleb128 0x61
	.long	.LASF708
	.byte	0x5
	.uleb128 0x62
	.long	.LASF709
	.byte	0x5
	.uleb128 0x63
	.long	.LASF710
	.byte	0x5
	.uleb128 0x64
	.long	.LASF711
	.byte	0x5
	.uleb128 0x65
	.long	.LASF712
	.byte	0x5
	.uleb128 0x66
	.long	.LASF713
	.byte	0x5
	.uleb128 0x67
	.long	.LASF714
	.byte	0x5
	.uleb128 0x68
	.long	.LASF715
	.byte	0x5
	.uleb128 0x69
	.long	.LASF716
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF717
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF718
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF719
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF720
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF721
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF722
	.byte	0x5
	.uleb128 0x70
	.long	.LASF723
	.byte	0x5
	.uleb128 0x71
	.long	.LASF724
	.byte	0x5
	.uleb128 0x72
	.long	.LASF725
	.byte	0x5
	.uleb128 0x73
	.long	.LASF726
	.byte	0x5
	.uleb128 0x74
	.long	.LASF727
	.byte	0x5
	.uleb128 0x75
	.long	.LASF728
	.byte	0x5
	.uleb128 0x76
	.long	.LASF729
	.byte	0x5
	.uleb128 0x77
	.long	.LASF730
	.byte	0x5
	.uleb128 0x78
	.long	.LASF731
	.byte	0x5
	.uleb128 0x79
	.long	.LASF732
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF733
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF734
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF735
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF736
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF737
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF738
	.byte	0x5
	.uleb128 0x80
	.long	.LASF739
	.byte	0x5
	.uleb128 0x81
	.long	.LASF740
	.byte	0x5
	.uleb128 0x82
	.long	.LASF741
	.byte	0x5
	.uleb128 0x83
	.long	.LASF742
	.byte	0x5
	.uleb128 0x84
	.long	.LASF743
	.byte	0x5
	.uleb128 0x85
	.long	.LASF744
	.byte	0x5
	.uleb128 0x86
	.long	.LASF745
	.byte	0x5
	.uleb128 0x87
	.long	.LASF746
	.byte	0x5
	.uleb128 0x88
	.long	.LASF747
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF748
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF749
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF750
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF751
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF752
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF753
	.byte	0x5
	.uleb128 0x90
	.long	.LASF754
	.byte	0x5
	.uleb128 0x93
	.long	.LASF755
	.byte	0x5
	.uleb128 0x94
	.long	.LASF756
	.byte	0x5
	.uleb128 0x97
	.long	.LASF757
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF365:
	.string	"__linux__ 1"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF597:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF772:
	.string	"size_t"
.LASF419:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF731:
	.string	"EISCONN 106"
.LASF645:
	.string	"ENOTDIR 20"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF603:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF820:
	.string	"ldisc_cooked"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF572:
	.string	"DBG_MM DBG_MODE(1)"
.LASF421:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF585:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF898:
	.string	"c_rsp"
.LASF496:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF890:
	.string	"p_cwd"
.LASF744:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF406:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF505:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF864:
	.string	"vtc_cursor_handler_t"
.LASF418:
	.string	"PAGE_SHIFT 12"
.LASF764:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF672:
	.string	"EL3RST 47"
.LASF592:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF562:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF900:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF748:
	.string	"ENOMEDIUM 123"
.LASF587:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF480:
	.string	"F9 ((uint8_t)(F1 + 8))"
.LASF953:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF868:
	.string	"tty_ldisc"
.LASF787:
	.string	"write"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF598:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF813:
	.string	"kt_state"
.LASF926:
	.string	"vterminal_make_active"
.LASF543:
	.string	"INTR_APICTIMER 0xf0"
.LASF487:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF407:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF740:
	.string	"EINPROGRESS 115"
.LASF375:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF462:
	.string	"ESC 0x1B"
.LASF721:
	.string	"EPFNOSUPPORT 96"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF703:
	.string	"EREMCHG 78"
.LASF453:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF753:
	.string	"EKEYREVOKED 128"
.LASF344:
	.string	"__x86_64 1"
.LASF872:
	.string	"tty_t"
.LASF639:
	.string	"EFAULT 14"
.LASF785:
	.string	"chardev_ops"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF648:
	.string	"ENFILE 23"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF581:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF897:
	.string	"c_rip"
.LASF483:
	.string	"F12 ((uint8_t)(F1 + 11))"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF616:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF822:
	.string	"ldisc_head"
.LASF646:
	.string	"EISDIR 21"
.LASF381:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF495:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF905:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF533:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF422:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF830:
	.string	"VTCOLOR_YELLOW"
.LASF633:
	.string	"ENOEXEC 8"
.LASF445:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF510:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF653:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF939:
	.string	"lessthaneq"
.LASF908:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF611:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF802:
	.string	"km_waitq"
.LASF871:
	.string	"tty_write_mutex"
.LASF515:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF473:
	.string	"F2 ((uint8_t)(F1 + 1))"
.LASF620:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF414:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF506:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF606:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF668:
	.string	"EIDRM 43"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF537:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF838:
	.string	"VTSTATE_ATTR"
.LASF432:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF642:
	.string	"EEXIST 17"
.LASF404:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF733:
	.string	"ESHUTDOWN 108"
.LASF817:
	.string	"kt_preemption_count"
.LASF713:
	.string	"ENOTSOCK 88"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF751:
	.string	"ENOKEY 126"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF426:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF715:
	.string	"EMSGSIZE 90"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF578:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF804:
	.string	"km_link"
.LASF477:
	.string	"F6 ((uint8_t)(F1 + 5))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF651:
	.string	"ETXTBSY 26"
.LASF782:
	.string	"cd_id"
.LASF768:
	.string	"long int"
.LASF463:
	.string	"LF 0x0A"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF552:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF851:
	.string	"vtcell_t"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF519:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF509:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF536:
	.string	"PID_IDLE 0"
.LASF942:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF429:
	.string	"USE_2MB_PAGES 1"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF706:
	.string	"ELIBSCN 81"
.LASF836:
	.string	"VTSTATE_ESC"
.LASF865:
	.string	"vtconsole_t"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF541:
	.string	"INTR_GPF 0x0d"
.LASF582:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF539:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF588:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF682:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF388:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF889:
	.string	"p_files"
.LASF707:
	.string	"ELIBMAX 82"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF775:
	.string	"devid_t"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF736:
	.string	"ECONNREFUSED 111"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF560:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF920:
	.string	"vterminal_write"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF661:
	.string	"ENAMETOOLONG 36"
.LASF757:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF904:
	.string	"KT_NO_STATE"
.LASF681:
	.string	"EBADRQC 56"
.LASF759:
	.string	"signed char"
.LASF763:
	.string	"uint8_t"
.LASF434:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF555:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF573:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF650:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF700:
	.string	"EOVERFLOW 75"
.LASF604:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF896:
	.string	"context"
.LASF794:
	.string	"pframe"
.LASF610:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF654:
	.string	"ESPIPE 29"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF737:
	.string	"EHOSTDOWN 112"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF760:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF478:
	.string	"F7 ((uint8_t)(F1 + 6))"
.LASF710:
	.string	"ERESTART 85"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF491:
	.string	"VMMAP_DIR_HILO 2"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF594:
	.string	"DBG_THR DBG_MODE(23)"
.LASF499:
	.string	"PT_SIZE 0x080"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF673:
	.string	"ELNRNG 48"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF800:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF638:
	.string	"EACCES 13"
.LASF550:
	.string	"IPL_HIGH 0xe0"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF656:
	.string	"EMLINK 31"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF455:
	.string	"VTC_DEFAULT_BACKGROUND VTCOLOR_BLACK"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF569:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF699:
	.string	"EBADMSG 74"
.LASF726:
	.string	"ENETUNREACH 101"
.LASF498:
	.string	"PT_DIRTY 0x040"
.LASF486:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF468:
	.string	"SCROLL_UP 0x0e"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF841:
	.string	"value"
.LASF684:
	.string	"EBFONT 59"
.LASF554:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF902:
	.string	"c_kstacksz"
.LASF430:
	.string	"USE_1GB_PAGES 1"
.LASF796:
	.string	"char"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF400:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF878:
	.string	"p_pid"
.LASF895:
	.string	"pml4_t"
.LASF720:
	.string	"EOPNOTSUPP 95"
.LASF401:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF797:
	.string	"ktqueue"
.LASF747:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF612:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF551:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF501:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF345:
	.string	"__x86_64__ 1"
.LASF927:
	.string	"dbg_panic"
.LASF643:
	.string	"EXDEV 18"
.LASF835:
	.string	"vtcolor_t"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF589:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF675:
	.string	"ENOCSI 50"
.LASF497:
	.string	"PT_ACCESSED 0x020"
.LASF466:
	.string	"EOT 0x04"
.LASF412:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF915:
	.string	"tty_cdev_ops"
.LASF447:
	.string	"PAGE_SHIFT_512GB 39"
.LASF850:
	.string	"attr"
.LASF413:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF361:
	.string	"__SEG_FS 1"
.LASF877:
	.string	"proc"
.LASF947:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF728:
	.string	"ECONNABORTED 103"
.LASF722:
	.string	"EAFNOSUPPORT 97"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF378:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF488:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF665:
	.string	"ELOOP 40"
.LASF563:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF833:
	.string	"VTCOLOR_CYAN"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF852:
	.string	"vtcursor_t"
.LASF364:
	.string	"__linux 1"
.LASF944:
	.string	"intr_wait"
.LASF636:
	.string	"EAGAIN 11"
.LASF450:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF392:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF946:
	.string	"intr_enable"
.LASF854:
	.string	"vtconsole"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF678:
	.string	"EBADR 53"
.LASF870:
	.string	"tty_read_mutex"
.LASF657:
	.string	"EPIPE 32"
.LASF788:
	.string	"mmap"
.LASF936:
	.string	"tty_write"
.LASF469:
	.string	"SCROLL_DOWN 0x1c"
.LASF601:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF819:
	.string	"ldisc"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF398:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF513:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF914:
	.string	"file"
.LASF705:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF696:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF887:
	.string	"p_pml4"
.LASF910:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF530:
	.string	"NAME_LEN 28"
.LASF950:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF866:
	.string	"vterminal_t"
.LASF801:
	.string	"kmutex"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF938:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF685:
	.string	"ENOSTR 60"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF858:
	.string	"buffer"
.LASF909:
	.string	"KT_EXITED"
.LASF387:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF776:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF528:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF567:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF631:
	.string	"ENXIO 6"
.LASF777:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF738:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF591:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF615:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF565:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF806:
	.string	"kt_ctx"
.LASF667:
	.string	"ENOMSG 42"
.LASF424:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF464:
	.string	"CR 0x0D"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF634:
	.string	"EBADF 9"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF930:
	.string	"list_link_init"
.LASF911:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF516:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF623:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF607:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF888:
	.string	"p_wait"
.LASF901:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF596:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF564:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF867:
	.string	"tty_vterminal"
.LASF457:
	.string	"VTC_ANSI_PARSER_STACK_SIZE 8"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF507:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF727:
	.string	"ENETRESET 102"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF691:
	.string	"EREMOTE 66"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF745:
	.string	"EISNAM 120"
.LASF465:
	.string	"SPACE 0x20"
.LASF561:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF523:
	.string	"TICK_MSECS 10"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF828:
	.string	"VTCOLOR_RED"
.LASF853:
	.string	"vtc_paint_handler_t"
.LASF922:
	.string	"ldisc_wait_read"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF493:
	.string	"PT_WRITE 0x002"
.LASF709:
	.string	"EILSEQ 84"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF839:
	.string	"VTSTATE_ENDVAL"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF640:
	.string	"ENOTBLK 15"
.LASF423:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF773:
	.string	"ssize_t"
.LASF444:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF686:
	.string	"ENODATA 61"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF695:
	.string	"ECOMM 70"
.LASF521:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF781:
	.string	"chardev"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF923:
	.string	"intr_setipl"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF694:
	.string	"ESRMNT 69"
.LASF716:
	.string	"EPROTOTYPE 91"
.LASF880:
	.string	"p_threads"
.LASF482:
	.string	"F11 ((uint8_t)(F1 + 10))"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF809:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF860:
	.string	"tab_index"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF508:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF570:
	.string	"DBG_ALL (~0ULL)"
.LASF750:
	.string	"ECANCELED 125"
.LASF437:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF899:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF402:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF546:
	.string	"INTR_SPURIOUS 0xfe"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF535:
	.string	"PROC_NAME_LEN 256"
.LASF355:
	.string	"__SSE__ 1"
.LASF409:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF857:
	.string	"ansiparser"
.LASF723:
	.string	"EADDRINUSE 98"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF559:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF637:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF734:
	.string	"ETOOMANYREFS 109"
.LASF385:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF702:
	.string	"EBADFD 77"
.LASF655:
	.string	"EROFS 30"
.LASF393:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF575:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF873:
	.string	"keyboard_char_handler_t"
.LASF756:
	.string	"ENOTRECOVERABLE 131"
.LASF632:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF613:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF805:
	.string	"kthread"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF917:
	.string	"active_tty"
.LASF729:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF855:
	.string	"width"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF568:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF683:
	.string	"EDEADLOCK EDEADLK"
.LASF925:
	.string	"keyboard_init"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF842:
	.string	"empty"
.LASF609:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF471:
	.string	"SCROLL_DOWN_PAGE 0x1d"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF687:
	.string	"ETIME 62"
.LASF811:
	.string	"kt_cancelled"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF952:
	.string	"tty_init"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF845:
	.string	"stack"
.LASF659:
	.string	"ERANGE 34"
.LASF732:
	.string	"ENOTCONN 107"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF644:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF849:
	.string	"vtattr_t"
.LASF481:
	.string	"F10 ((uint8_t)(F1 + 9))"
.LASF557:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF940:
	.string	"greaterthan"
.LASF343:
	.string	"__amd64__ 1"
.LASF380:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF746:
	.string	"EREMOTEIO 121"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF492:
	.string	"PT_PRESENT 0x001"
.LASF951:
	.string	"tty_receive_char_multiplexer"
.LASF807:
	.string	"kt_kstack"
.LASF566:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF558:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF778:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF391:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF674:
	.string	"EUNATCH 49"
.LASF379:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF935:
	.string	"count"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF680:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF403:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF779:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF786:
	.string	"read"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF766:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF435:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF885:
	.string	"p_status"
.LASF548:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF514:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF754:
	.string	"EKEYREJECTED 129"
.LASF456:
	.string	"VTC_DEFAULT_ATTR (vtattr_t) { 0, VTC_DEFAULT_FOREGROUND, VTC_DEFAULT_BACKGROUND }"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF485:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF625:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF449:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF919:
	.string	"kmutex_unlock"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF774:
	.string	"pid_t"
.LASF525:
	.string	"PF_HASH_SIZE 17"
.LASF829:
	.string	"VTCOLOR_GREEN"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF553:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF954:
	.string	"intr_enabled"
.LASF427:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF593:
	.string	"DBG_KB DBG_MODE(22)"
.LASF0:
	.string	"__STDC__ 1"
.LASF511:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF934:
	.string	"cdev"
.LASF735:
	.string	"ETIMEDOUT 110"
.LASF758:
	.string	"NTERMS 3"
.LASF666:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF472:
	.string	"F1 ((uint8_t)128)"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF780:
	.string	"list"
.LASF670:
	.string	"EL2NSYNC 45"
.LASF876:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF821:
	.string	"ldisc_tail"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF647:
	.string	"EINVAL 22"
.LASF383:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF470:
	.string	"SCROLL_UP_PAGE 0x0f"
.LASF718:
	.string	"EPROTONOSUPPORT 93"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF894:
	.string	"phys"
.LASF789:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF799:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF586:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF504:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF452:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF714:
	.string	"EDESTADDRREQ 89"
.LASF617:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF420:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF579:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF540:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF848:
	.string	"bright"
.LASF479:
	.string	"F8 ((uint8_t)(F1 + 7))"
.LASF812:
	.string	"kt_wchan"
.LASF556:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF641:
	.string	"EBUSY 16"
.LASF921:
	.string	"ldisc_read"
.LASF532:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF443:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF441:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF411:
	.string	"LDISC_BUFFER_SIZE 128"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF928:
	.string	"chardev_register"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF545:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF524:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF823:
	.string	"ldisc_full"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF526:
	.string	"MAXPATHLEN 1024"
.LASF931:
	.string	"ldisc_init"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF916:
	.string	"ttys"
.LASF741:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF626:
	.string	"EPERM 1"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF862:
	.string	"on_paint"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF410:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF755:
	.string	"EOWNERDEAD 130"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF590:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF882:
	.string	"p_pproc"
.LASF454:
	.string	"VTC_DEFAULT_FOREGROUND VTCOLOR_GREY"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF790:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF907:
	.string	"KT_SLEEP"
.LASF711:
	.string	"ESTRPIPE 86"
.LASF602:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF929:
	.string	"kmutex_init"
.LASF791:
	.string	"chardev_t"
.LASF399:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF357:
	.string	"__FXSR__ 1"
.LASF816:
	.string	"kt_mutexes"
.LASF881:
	.string	"p_children"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF440:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF827:
	.string	"VTCOLOR_BLACK"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF618:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF945:
	.string	"intr_disable"
.LASF538:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF476:
	.string	"F5 ((uint8_t)(F1 + 4))"
.LASF390:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF395:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF739:
	.string	"EALREADY 114"
.LASF628:
	.string	"ESRCH 3"
.LASF903:
	.string	"context_t"
.LASF818:
	.string	"kmutex_t"
.LASF730:
	.string	"ENOBUFS 105"
.LASF354:
	.string	"__MMX__ 1"
.LASF389:
	.string	"inline __attribute__((always_inline, used))"
.LASF448:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF815:
	.string	"kt_qlink"
.LASF924:
	.string	"kmutex_lock"
.LASF891:
	.string	"p_brk"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF527:
	.string	"MAX_FILES 1024"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF518:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF619:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF459:
	.string	"cd_to_tty(bd) CONTAINER_OF((bd), tty_t, tty_cdev)"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF793:
	.string	"mobj"
.LASF724:
	.string	"EADDRNOTAVAIL 99"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF660:
	.string	"EDEADLK 35"
.LASF584:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF442:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF386:
	.string	"MEM_MAJOR 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF377:
	.string	"MINOR_BITS 8"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF428:
	.string	"PAGE_NSIZES 8"
.LASF652:
	.string	"EFBIG 27"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF512:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF783:
	.string	"cd_ops"
.LASF627:
	.string	"ENOENT 2"
.LASF595:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF599:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF664:
	.string	"ENOTEMPTY 39"
.LASF489:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF719:
	.string	"ESOCKTNOSUPPORT 94"
.LASF494:
	.string	"PT_USER 0x004"
.LASF725:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF832:
	.string	"VTCOLOR_MAGENTA"
.LASF571:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF502:
	.string	"INDEX_MASK 0b111111111"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF893:
	.string	"p_vmmap"
.LASF859:
	.string	"tabs"
.LASF461:
	.string	"DEL 0x7F"
.LASF689:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF933:
	.string	"kmalloc"
.LASF583:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF837:
	.string	"VTSTATE_BRACKET"
.LASF416:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF484:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF677:
	.string	"EBADE 52"
.LASF834:
	.string	"VTCOLOR_GREY"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF396:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF712:
	.string	"EUSERS 87"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF534:
	.string	"PROC_MAX_COUNT 65536"
.LASF761:
	.string	"short int"
.LASF912:
	.string	"PROC_DEAD"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF417:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF769:
	.string	"uint64_t"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF795:
	.string	"chardev_ops_t"
.LASF663:
	.string	"ENOSYS 38"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF847:
	.string	"vtansi_parser_t"
.LASF394:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF808:
	.string	"kt_retval"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF415:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF517:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF629:
	.string	"EINTR 4"
.LASF869:
	.string	"tty_cdev"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF608:
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
.LASF679:
	.string	"EXFULL 54"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF708:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF692:
	.string	"ENOLINK 67"
.LASF831:
	.string	"VTCOLOR_BLUE"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF803:
	.string	"km_holder"
.LASF846:
	.string	"index"
.LASF425:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF717:
	.string	"ENOPROTOOPT 92"
.LASF658:
	.string	"EDOM 33"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF520:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF438:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF918:
	.string	"ldisc_key_pressed"
.LASF408:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF544:
	.string	"INTR_KEYBOARD 0xe0"
.LASF446:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF690:
	.string	"ENOPKG 65"
.LASF490:
	.string	"VMMAP_DIR_LOHI 1"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF798:
	.string	"tq_list"
.LASF688:
	.string	"ENOSR 63"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF436:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF874:
	.string	"vmmap"
.LASF843:
	.string	"vtansi_arg_t"
.LASF792:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF522:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF405:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF576:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF892:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF669:
	.string	"ECHRNG 44"
.LASF824:
	.string	"ldisc_read_queue"
.LASF883:
	.string	"p_list_link"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF622:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF475:
	.string	"F4 ((uint8_t)(F1 + 3))"
.LASF574:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF697:
	.string	"EMULTIHOP 72"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF605:
	.string	"DBG_USER DBG_MODE(38)"
.LASF621:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF458:
	.string	"TTY_MAJOR 2"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF624:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF814:
	.string	"kt_plink"
.LASF397:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF765:
	.string	"uint32_t"
.LASF433:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF649:
	.string	"EMFILE 24"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF948:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF784:
	.string	"cd_link"
.LASF743:
	.string	"ENOTNAM 118"
.LASF342:
	.string	"__amd64 1"
.LASF614:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF474:
	.string	"F3 ((uint8_t)(F1 + 2))"
.LASF662:
	.string	"ENOLCK 37"
.LASF875:
	.string	"vmm_list"
.LASF542:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF531:
	.string	"NFILES 32"
.LASF826:
	.string	"ldisc_t"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF825:
	.string	"ldisc_buffer"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF906:
	.string	"KT_RUNNABLE"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF635:
	.string	"ECHILD 10"
.LASF500:
	.string	"PT_GLOBAL 0x100"
.LASF762:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF949:
	.string	"drivers/tty/tty.c"
.LASF863:
	.string	"on_move"
.LASF384:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF382:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF577:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF451:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF600:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF460:
	.string	"BS 0x08"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF943:
	.string	"equals"
.LASF467:
	.string	"ETX 0x03"
.LASF844:
	.string	"state"
.LASF767:
	.string	"int64_t"
.LASF932:
	.string	"vterminal_init"
.LASF693:
	.string	"EADV 68"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF810:
	.string	"kt_proc"
.LASF749:
	.string	"EMEDIUMTYPE 124"
.LASF431:
	.string	"PAGE_SHIFT_2MB 21"
.LASF529:
	.string	"MAX_VNODES 1024"
.LASF671:
	.string	"EL3HLT 46"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF549:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF771:
	.string	"uintptr_t"
.LASF913:
	.string	"proc_state_t"
.LASF752:
	.string	"EKEYEXPIRED 127"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF580:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF742:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF879:
	.string	"p_name"
.LASF676:
	.string	"EL2HLT 51"
.LASF884:
	.string	"p_child_link"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF937:
	.string	"tty_read"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF704:
	.string	"ELIBACC 79"
.LASF547:
	.string	"INTR_APICERR 0xff"
.LASF861:
	.string	"cursor"
.LASF630:
	.string	"EIO 5"
.LASF503:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF439:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF701:
	.string	"ENOTUNIQ 76"
.LASF770:
	.string	"long unsigned int"
.LASF941:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF840:
	.string	"vtansi_parser_state_t"
.LASF856:
	.string	"height"
.LASF698:
	.string	"EDOTDOT 73"
.LASF886:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
