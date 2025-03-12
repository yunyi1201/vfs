	.file	"screen.c"
	.text
.Ltext0:
	.file 1 "drivers/screen.c"
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
	.type	outb, @function
outb:
.LFB10:
	.file 4 "include/main/io.h"
	.loc 4 7 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movb	%al, -8(%rbp)
	.loc 4 8 5
	movzbl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	outb, .-outb
	.type	inb, @function
inb:
.LFB11:
	.loc 4 12 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 4 14 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -1(%rbp)
	.loc 4 17 12
	movzbl	-1(%rbp), %eax
	.loc 4 18 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	inb, .-inb
	.type	outw, @function
outw:
.LFB12:
	.loc 4 21 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	.loc 4 22 5
	movzwl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 22 "include/main/io.h" 1
	outw %ax,%dx
# 0 "" 2
	.loc 4 23 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	outw, .-outw
	.type	inw, @function
inw:
.LFB13:
	.loc 4 26 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 4 28 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 28 "include/main/io.h" 1
	inw %dx,%ax
# 0 "" 2
#NO_APP
	movw	%ax, -2(%rbp)
	.loc 4 31 12
	movzwl	-2(%rbp), %eax
	.loc 4 32 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	inw, .-inw
	.type	outl, @function
outl:
.LFB14:
	.loc 4 35 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movw	%ax, -4(%rbp)
	.loc 4 36 5
	movl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 36 "include/main/io.h" 1
	outl %eax,%dx
# 0 "" 2
	.loc 4 37 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	outl, .-outl
	.type	inl, @function
inl:
.LFB15:
	.loc 4 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 4 42 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 42 "include/main/io.h" 1
	inl %dx,%eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 4 45 12
	movl	-4(%rbp), %eax
	.loc 4 46 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	inl, .-inl
	.data
	.align 8
	.type	vga_textbuffer_phys, @object
	.size	vga_textbuffer_phys, 8
vga_textbuffer_phys:
	.quad	753664
	.local	vga_textbuffer
	.comm	vga_textbuffer,8,8
	.local	vga_blank_screen
	.comm	vga_blank_screen,4000,32
	.globl	vga_blank_row
	.bss
	.align 32
	.type	vga_blank_row, @object
	.size	vga_blank_row, 160
vga_blank_row:
	.zero	160
	.text
	.globl	vga_enable_cursor
	.type	vga_enable_cursor, @function
vga_enable_cursor:
.LFB16:
	.loc 1 437 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movw	$980, -22(%rbp)
	movb	$10, -23(%rbp)
.LBB26:
.LBB27:
	.loc 4 8 5
	movzbl	-23(%rbp), %eax
	movzwl	-22(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	movw	$981, -18(%rbp)
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 4 14 5
	movzwl	-18(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -19(%rbp)
	.loc 4 17 12
	movzbl	-19(%rbp), %eax
.LBE29:
.LBE28:
	.loc 1 439 37
	movzbl	%al, %eax
	.loc 1 439 5
	andl	$192, %eax
	movw	$981, -14(%rbp)
	movb	%al, -15(%rbp)
.LBB30:
.LBB31:
	.loc 4 8 5
	movzbl	-15(%rbp), %eax
	movzwl	-14(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	movw	$980, -10(%rbp)
	movb	$11, -11(%rbp)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 4 8 5
	movzbl	-11(%rbp), %eax
	movzwl	-10(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	movw	$981, -6(%rbp)
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 4 14 5
	movzwl	-6(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -7(%rbp)
	.loc 4 17 12
	movzbl	-7(%rbp), %eax
.LBE35:
.LBE34:
	.loc 1 442 29
	andl	$-32, %eax
	.loc 1 442 37
	orl	$15, %eax
	.loc 1 442 5
	movzbl	%al, %eax
	movw	$981, -2(%rbp)
	movb	%al, -3(%rbp)
.LBB36:
.LBB37:
	.loc 4 8 5
	movzbl	-3(%rbp), %eax
	movzwl	-2(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
.LBE37:
.LBE36:
	.loc 1 443 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	vga_enable_cursor, .-vga_enable_cursor
	.globl	vga_disable_cursor
	.type	vga_disable_cursor, @function
vga_disable_cursor:
.LFB17:
	.loc 1 446 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movw	$980, -6(%rbp)
	movb	$10, -7(%rbp)
.LBB38:
.LBB39:
	.loc 4 8 5
	movzbl	-7(%rbp), %eax
	movzwl	-6(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	movw	$981, -2(%rbp)
	movb	$32, -3(%rbp)
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 4 8 5
	movzbl	-3(%rbp), %eax
	movzwl	-2(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
.LBE41:
.LBE40:
	.loc 1 449 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	vga_disable_cursor, .-vga_disable_cursor
	.section	.rodata
.LC0:
	.string	"vga_textbuffer"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/screen.c"
	.text
	.globl	vga_init
	.type	vga_init, @function
vga_init:
.LFB18:
	.loc 1 452 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 454 12
	movq	$1, -56(%rbp)
	.loc 1 456 22
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$page_alloc_n, %rax
	call	*%rax
.LVL0:
	.loc 1 456 20
	movabsq	$vga_textbuffer, %rdx
	movq	%rax, (%rdx)
	.loc 1 457 5
	movabsq	$vga_textbuffer, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	.loc 1 457 5 is_stmt 0 discriminator 1
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$457, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL1:
.L32:
	.loc 1 461 47 is_stmt 1
	movq	-56(%rbp), %rax
	salq	$12, %rax
	movq	%rax, %rdx
	.loc 1 461 18
	movabsq	$vga_textbuffer, %rax
	movq	(%rax), %rax
	.loc 1 459 5
	leaq	(%rdx,%rax), %r12
	movabsq	$vga_textbuffer, %rax
	movq	(%rax), %rax
	movq	%rax, %r13
	movabsq	$vga_textbuffer_phys, %rax
	movq	(%rax), %rbx
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL2:
	movl	$3, %r9d
	movl	$3, %r8d
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_map_range, %rax
	call	*%rax
.LVL3:
	.loc 1 463 5
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL4:
	movq	%rax, %rdi
	movabsq	$pt_set, %rax
	call	*%rax
.LVL5:
.LBB42:
	.loc 1 465 17
	movq	$0, -40(%rbp)
	.loc 1 465 5
	jmp	.L33
.L34:
	.loc 1 467 26 discriminator 3
	movabsq	$vga_blank_row, %rdx
	movq	-40(%rbp), %rax
	movw	$3872, (%rdx,%rax,2)
	.loc 1 465 40 discriminator 3
	addq	$1, -40(%rbp)
.L33:
	.loc 1 465 26 discriminator 1
	cmpq	$79, -40(%rbp)
	jbe	.L34
.LBE42:
.LBB43:
	.loc 1 469 17
	movq	$0, -48(%rbp)
	.loc 1 469 5
	jmp	.L35
.L36:
	.loc 1 471 16 discriminator 3
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movabsq	$vga_blank_screen, %rdx
	addq	%rdx, %rax
	.loc 1 471 9 discriminator 3
	movl	$160, %edx
	movabsq	$vga_blank_row, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL6:
	.loc 1 469 41 discriminator 3
	addq	$1, -48(%rbp)
.L35:
	.loc 1 469 26 discriminator 1
	cmpq	$24, -48(%rbp)
	jbe	.L36
.LBE43:
	.loc 1 474 5
	movl	$0, %eax
	movabsq	$vga_enable_cursor, %rdx
	call	*%rdx
.LVL7:
	.loc 1 475 5
	movl	$0, %eax
	movabsq	$vga_clear_screen, %rdx
	call	*%rdx
.LVL8:
	.loc 1 476 1
	nop
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	vga_init, .-vga_init
	.globl	vga_set_cursor
	.type	vga_set_cursor, @function
vga_set_cursor:
.LFB19:
	.loc 1 479 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 480 38
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	.loc 1 480 14
	addl	%edx, %eax
	movw	%ax, -2(%rbp)
	movw	$980, -16(%rbp)
	movb	$15, -17(%rbp)
.LBB44:
.LBB45:
	.loc 4 8 5
	movzbl	-17(%rbp), %eax
	movzwl	-16(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
.LBE45:
.LBE44:
	.loc 1 482 17
	movzwl	-2(%rbp), %eax
	.loc 1 482 5
	movzbl	%al, %eax
	movw	$981, -12(%rbp)
	movb	%al, -13(%rbp)
.LBB46:
.LBB47:
	.loc 4 8 5
	movzbl	-13(%rbp), %eax
	movzwl	-12(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
	movw	$980, -8(%rbp)
	movb	$14, -9(%rbp)
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	.loc 4 8 5
	movzbl	-9(%rbp), %eax
	movzwl	-8(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
.LBE49:
.LBE48:
	.loc 1 484 17
	movzwl	-2(%rbp), %eax
	shrw	$8, %ax
	.loc 1 484 5
	movzbl	%al, %eax
	movw	$981, -4(%rbp)
	movb	%al, -5(%rbp)
.LBB50:
.LBB51:
	.loc 4 8 5
	movzbl	-5(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 4 9 1
#NO_APP
	nop
.LBE51:
.LBE50:
	.loc 1 485 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	vga_set_cursor, .-vga_set_cursor
	.globl	vga_clear_screen
	.type	vga_clear_screen, @function
vga_clear_screen:
.LFB20:
	.loc 1 488 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 489 5
	movabsq	$vga_textbuffer, %rax
	movq	(%rax), %rax
	movl	$4000, %edx
	movabsq	$vga_blank_screen, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL9:
	.loc 1 490 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	vga_clear_screen, .-vga_clear_screen
	.section	.rodata
	.align 8
.LC3:
	.string	"row < VGA_HEIGHT && col < VGA_WIDTH"
	.text
	.globl	vga_write_char_at
	.type	vga_write_char_at, @function
vga_write_char_at:
.LFB21:
	.loc 1 493 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movw	%ax, -20(%rbp)
	.loc 1 494 5
	cmpq	$24, -8(%rbp)
	ja	.L40
	.loc 1 494 5 is_stmt 0 discriminator 2
	cmpq	$79, -16(%rbp)
	jbe	.L41
.L40:
	.loc 1 494 5 discriminator 3
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$494, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL10:
.L41:
	.loc 1 495 19 is_stmt 1
	movabsq	$vga_textbuffer, %rax
	movq	(%rax), %rcx
	.loc 1 495 25
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 1 495 38
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 495 19
	addq	%rax, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 1 495 45
	movzwl	-20(%rbp), %eax
	movw	%ax, (%rdx)
	.loc 1 496 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	vga_write_char_at, .-vga_write_char_at
	.section	.rodata
.LC4:
	.string	"Weenix has halted cleanly!"
	.data
	.align 8
	.type	shutdown_message, @object
	.size	shutdown_message, 8
shutdown_message:
	.quad	.LC4
	.text
	.globl	screen_print_shutdown
	.type	screen_print_shutdown, @function
screen_print_shutdown:
.LFB22:
	.loc 1 500 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 501 5
	movl	$0, %eax
	movabsq	$vga_disable_cursor, %rdx
	call	*%rdx
.LVL11:
	.loc 1 502 5
	movl	$0, %eax
	movabsq	$vga_clear_screen, %rdx
	call	*%rdx
.LVL12:
	.loc 1 503 26
	movabsq	$shutdown_message, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$strlen, %rax
	call	*%rax
.LVL13:
	.loc 1 503 24
	movl	$80, %edx
	subq	%rax, %rdx
	.loc 1 503 52
	movq	%rdx, %rax
	shrq	%rax
	.loc 1 503 9
	movl	%eax, -12(%rbp)
	.loc 1 504 9
	movl	$12, -16(%rbp)
.LBB52:
	.loc 1 506 17
	movq	$0, -8(%rbp)
	.loc 1 506 5
	jmp	.L43
.L44:
	.loc 1 509 71 discriminator 3
	movabsq	$shutdown_message, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cbtw
	.loc 1 509 53 discriminator 3
	orb	$15, %ah
	.loc 1 508 9 discriminator 3
	movzwl	%ax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vga_write_char_at, %rax
	call	*%rax
.LVL14:
	.loc 1 506 55 discriminator 3
	addq	$1, -8(%rbp)
.L43:
	.loc 1 506 28 discriminator 1
	movabsq	$shutdown_message, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movabsq	$strlen, %rax
	call	*%rax
.LVL15:
	.loc 1 506 26 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L44
.LBE52:
	.loc 1 511 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	screen_print_shutdown, .-screen_print_shutdown
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"vga_init"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"vga_write_char_at"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/mm/pagetable.h"
	.file 7 "include/util/string.h"
	.file 8 "include/mm/page.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb6b
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF697
	.byte	0xc
	.long	.LASF698
	.long	.LASF699
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF647
	.uleb128 0x3
	.long	.LASF650
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF648
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF649
	.uleb128 0x3
	.long	.LASF651
	.byte	0x5
	.byte	0xc
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF652
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF653
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF654
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF655
	.uleb128 0x3
	.long	.LASF656
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF657
	.uleb128 0x3
	.long	.LASF658
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x92
	.uleb128 0x3
	.long	.LASF659
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF660
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF661
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.string	"pt"
	.value	0x1000
	.byte	0x6
	.byte	0x18
	.byte	0x10
	.long	0xe1
	.uleb128 0x8
	.long	.LASF700
	.byte	0x6
	.byte	0x1a
	.byte	0xf
	.long	0xe1
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x99
	.long	0xf2
	.uleb128 0xa
	.long	0x92
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF662
	.byte	0x6
	.byte	0x1b
	.byte	0x16
	.long	0xc6
	.uleb128 0xb
	.byte	0x8
	.long	0xf2
	.uleb128 0xb
	.byte	0x8
	.long	0xb8
	.uleb128 0xb
	.byte	0x8
	.long	0x110
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF663
	.byte	0x1
	.value	0x1af
	.byte	0x12
	.long	0x99
	.byte	0x9
	.byte	0x3
	.quad	vga_textbuffer_phys
	.uleb128 0xd
	.long	.LASF664
	.byte	0x1
	.value	0x1b0
	.byte	0x12
	.long	0x13f
	.byte	0x9
	.byte	0x3
	.quad	vga_textbuffer
	.uleb128 0xb
	.byte	0x8
	.long	0x52
	.uleb128 0x9
	.long	0x52
	.long	0x15b
	.uleb128 0xe
	.long	0x92
	.byte	0x18
	.uleb128 0xe
	.long	0x92
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.long	.LASF665
	.byte	0x1
	.value	0x1b1
	.byte	0x11
	.long	0x145
	.byte	0x9
	.byte	0x3
	.quad	vga_blank_screen
	.uleb128 0x9
	.long	0x52
	.long	0x182
	.uleb128 0xe
	.long	0x92
	.byte	0x4f
	.byte	0
	.uleb128 0xf
	.long	.LASF701
	.byte	0x1
	.value	0x1b2
	.byte	0xa
	.long	0x172
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vga_blank_row
	.uleb128 0xd
	.long	.LASF666
	.byte	0x1
	.value	0x1f2
	.byte	0xe
	.long	0x104
	.byte	0x9
	.byte	0x3
	.quad	shutdown_message
	.uleb128 0x10
	.byte	0x1
	.long	.LASF667
	.byte	0x7
	.byte	0x4e
	.byte	0x8
	.byte	0x1
	.long	0xa5
	.byte	0x1
	.long	0x1ca
	.uleb128 0x11
	.long	0x1ca
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xbf
	.uleb128 0x10
	.byte	0x1
	.long	.LASF668
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.byte	0x1
	.long	0xc4
	.byte	0x1
	.long	0x1f3
	.uleb128 0x11
	.long	0xc4
	.uleb128 0x11
	.long	0x10a
	.uleb128 0x11
	.long	0xa5
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF670
	.byte	0x6
	.byte	0x4c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x208
	.uleb128 0x11
	.long	0xfe
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF669
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.byte	0x1
	.long	0x23a
	.uleb128 0x11
	.long	0xfe
	.uleb128 0x11
	.long	0x99
	.uleb128 0x11
	.long	0x99
	.uleb128 0x11
	.long	0x99
	.uleb128 0x11
	.long	0x6c
	.uleb128 0x11
	.long	0x6c
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF671
	.byte	0x6
	.byte	0x4a
	.byte	0x9
	.long	0xfe
	.byte	0x1
	.long	0x24e
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF672
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x274
	.uleb128 0x11
	.long	0x1ca
	.uleb128 0x11
	.long	0x65
	.uleb128 0x11
	.long	0x1ca
	.uleb128 0x11
	.long	0x1ca
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF673
	.byte	0x8
	.byte	0x6d
	.byte	0x7
	.byte	0x1
	.long	0xc4
	.byte	0x1
	.long	0x28d
	.uleb128 0x11
	.long	0xa5
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF674
	.byte	0x1
	.value	0x1f3
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x330
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x1f7
	.byte	0x9
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.value	0x1f8
	.byte	0x9
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.quad	.LBB52
	.quad	.LBE52
	.long	0x308
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1fa
	.byte	0x11
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.quad	.LVL14
	.long	0x330
	.uleb128 0x19
	.quad	.LVL15
	.long	0x1b1
	.byte	0
	.uleb128 0x19
	.quad	.LVL11
	.long	0x606
	.uleb128 0x19
	.quad	.LVL12
	.long	0x3b7
	.uleb128 0x19
	.quad	.LVL13
	.long	0x1b1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF676
	.byte	0x1
	.value	0x1ec
	.byte	0x6
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3a2
	.uleb128 0x1b
	.string	"row"
	.byte	0x1
	.value	0x1ec
	.byte	0x1f
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"col"
	.byte	0x1
	.value	0x1ec
	.byte	0x2b
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.value	0x1ec
	.byte	0x39
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF680
	.long	0x3b2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x19
	.quad	.LVL10
	.long	0x24e
	.byte	0
	.uleb128 0x9
	.long	0xbf
	.long	0x3b2
	.uleb128 0xe
	.long	0x92
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.long	0x3a2
	.uleb128 0x16
	.byte	0x1
	.long	.LASF675
	.byte	0x1
	.value	0x1e7
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3e6
	.uleb128 0x19
	.quad	.LVL9
	.long	0x1d0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF677
	.byte	0x1
	.value	0x1de
	.byte	0x6
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ed
	.uleb128 0x1b
	.string	"row"
	.byte	0x1
	.value	0x1de
	.byte	0x1c
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"col"
	.byte	0x1
	.value	0x1de
	.byte	0x28
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"pos"
	.byte	0x1
	.value	0x1e0
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB44
	.quad	.LBE44
	.byte	0x1
	.value	0x1e1
	.byte	0x5
	.long	0x466
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB46
	.quad	.LBE46
	.byte	0x1
	.value	0x1e2
	.byte	0x5
	.long	0x494
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB48
	.quad	.LBE48
	.byte	0x1
	.value	0x1e3
	.byte	0x5
	.long	0x4c2
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	0x8e1
	.quad	.LBB50
	.quad	.LBE50
	.byte	0x1
	.value	0x1e4
	.byte	0x5
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF678
	.byte	0x1
	.value	0x1c3
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5f1
	.uleb128 0xd
	.long	.LASF679
	.byte	0x1
	.value	0x1c6
	.byte	0xc
	.long	0xa5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF680
	.long	0x601
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x18
	.quad	.LBB42
	.quad	.LBE42
	.long	0x557
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1d1
	.byte	0x11
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x18
	.quad	.LBB43
	.quad	.LBE43
	.long	0x588
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x1d5
	.byte	0x11
	.long	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.quad	.LVL6
	.long	0x1d0
	.byte	0
	.uleb128 0x19
	.quad	.LVL0
	.long	0x274
	.uleb128 0x19
	.quad	.LVL1
	.long	0x24e
	.uleb128 0x19
	.quad	.LVL2
	.long	0x23a
	.uleb128 0x19
	.quad	.LVL3
	.long	0x208
	.uleb128 0x19
	.quad	.LVL4
	.long	0x23a
	.uleb128 0x19
	.quad	.LVL5
	.long	0x1f3
	.uleb128 0x19
	.quad	.LVL7
	.long	0x680
	.uleb128 0x19
	.quad	.LVL8
	.long	0x3b7
	.byte	0
	.uleb128 0x9
	.long	0xbf
	.long	0x601
	.uleb128 0xe
	.long	0x92
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x5f1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF681
	.byte	0x1
	.value	0x1bd
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x680
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB38
	.quad	.LBE38
	.byte	0x1
	.value	0x1bf
	.byte	0x5
	.long	0x655
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x1f
	.long	0x8e1
	.quad	.LBB40
	.quad	.LBE40
	.byte	0x1
	.value	0x1c0
	.byte	0x5
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF682
	.byte	0x1
	.value	0x1b4
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7b2
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB26
	.quad	.LBE26
	.byte	0x1
	.value	0x1b6
	.byte	0x5
	.long	0x6cf
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x1d
	.long	0x8b6
	.quad	.LBB28
	.quad	.LBE28
	.byte	0x1
	.value	0x1b7
	.byte	0x12
	.long	0x6fd
	.uleb128 0x1e
	.long	0x8c8
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x20
	.long	0x8d4
	.byte	0x2
	.byte	0x91
	.sleb128 -35
	.byte	0
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB30
	.quad	.LBE30
	.byte	0x1
	.value	0x1b7
	.byte	0x5
	.long	0x72b
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x1d
	.long	0x8e1
	.quad	.LBB32
	.quad	.LBE32
	.byte	0x1
	.value	0x1b9
	.byte	0x5
	.long	0x759
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x1d
	.long	0x8b6
	.quad	.LBB34
	.quad	.LBE34
	.byte	0x1
	.value	0x1ba
	.byte	0x12
	.long	0x787
	.uleb128 0x1e
	.long	0x8c8
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x20
	.long	0x8d4
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x1f
	.long	0x8e1
	.quad	.LBB36
	.quad	.LBE36
	.byte	0x1
	.value	0x1ba
	.byte	0x5
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"inl"
	.byte	0x4
	.byte	0x27
	.byte	0x18
	.byte	0x1
	.long	0x6c
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7f5
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x27
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"ret"
	.byte	0x4
	.byte	0x29
	.byte	0xe
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF684
	.byte	0x4
	.byte	0x22
	.byte	0x14
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x834
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x22
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"val"
	.byte	0x4
	.byte	0x22
	.byte	0x31
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.string	"inw"
	.byte	0x4
	.byte	0x19
	.byte	0x18
	.byte	0x1
	.long	0x52
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x877
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x19
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"ret"
	.byte	0x4
	.byte	0x1b
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x24
	.long	.LASF685
	.byte	0x4
	.byte	0x14
	.byte	0x14
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8b6
	.uleb128 0x22
	.long	.LASF683
	.byte	0x4
	.byte	0x14
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"val"
	.byte	0x4
	.byte	0x14
	.byte	0x31
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.string	"inb"
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0x8e1
	.uleb128 0x27
	.long	.LASF683
	.byte	0x4
	.byte	0xb
	.byte	0x24
	.long	0x52
	.uleb128 0x28
	.string	"ret"
	.byte	0x4
	.byte	0xd
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x29
	.long	.LASF702
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x908
	.uleb128 0x27
	.long	.LASF683
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.long	0x52
	.uleb128 0x2a
	.string	"val"
	.byte	0x4
	.byte	0x6
	.byte	0x30
	.long	0x38
	.byte	0
	.uleb128 0x2b
	.long	.LASF686
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
	.long	0x94a
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF687
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
	.long	0x98c
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF688
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
	.long	0x9ce
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF689
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
	.long	0xa10
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF690
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
	.long	0xa52
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF691
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
	.long	0xa94
	.uleb128 0x1b
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF692
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF693
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF694
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF695
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x86
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb18
	.uleb128 0x2e
	.long	.LASF696
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x86
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	0x8e1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb45
	.uleb128 0x1e
	.long	0x8ef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	0x8fb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	0x8b6
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.long	0x8c8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	0x8d4
	.byte	0x2
	.byte	0x91
	.sleb128 -17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.file 9 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 10 "include/boot/multiboot_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x4
	.long	.LASF381
	.byte	0x4
	.file 11 "include/drivers/screen.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 12 "include/multiboot.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.file 13 "include/globals.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.file 14 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 15 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.file 16 "include/proc/context.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.file 17 "include/vm/vmmap.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x11
	.file 18 "include/util/list.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x12
	.file 19 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x4
	.file 20 "include/proc/sched.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.file 21 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x8
	.long	.LASF532
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF533
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF534
	.byte	0x4
	.file 22 "include/proc/kthread.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x4
	.file 23 "include/proc/proc.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.file 24 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF552
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 25 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x10
	.long	.LASF566
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x7
	.file 26 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x1a5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF643
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF644
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF645
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF646
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
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF375
	.byte	0x5
	.uleb128 0x5
	.long	.LASF376
	.byte	0x5
	.uleb128 0x6
	.long	.LASF377
	.byte	0x5
	.uleb128 0x7
	.long	.LASF378
	.byte	0x5
	.uleb128 0xa
	.long	.LASF379
	.byte	0x5
	.uleb128 0xc
	.long	.LASF380
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.5.ce5cf6e0f5e04c88197477365e766aac,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF382
	.byte	0x5
	.uleb128 0x7
	.long	.LASF383
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.screen.h.51.6629e140a1f99b39f2df4938dfb36814,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF384
	.byte	0x5
	.uleb128 0x34
	.long	.LASF385
	.byte	0x5
	.uleb128 0x35
	.long	.LASF386
	.byte	0x5
	.uleb128 0x36
	.long	.LASF387
	.byte	0x5
	.uleb128 0x37
	.long	.LASF388
	.byte	0x5
	.uleb128 0x38
	.long	.LASF389
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.multiboot.h.24.f9e37d8e06a0ee07270adbb2234c4e96,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF392
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF393
	.byte	0x5
	.uleb128 0x22
	.long	.LASF394
	.byte	0x5
	.uleb128 0x25
	.long	.LASF395
	.byte	0x5
	.uleb128 0x28
	.long	.LASF396
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF397
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF398
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF399
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF400
	.byte	0x5
	.uleb128 0x30
	.long	.LASF401
	.byte	0x5
	.uleb128 0x31
	.long	.LASF402
	.byte	0x5
	.uleb128 0x32
	.long	.LASF403
	.byte	0x5
	.uleb128 0x33
	.long	.LASF404
	.byte	0x5
	.uleb128 0x34
	.long	.LASF405
	.byte	0x5
	.uleb128 0x35
	.long	.LASF406
	.byte	0x5
	.uleb128 0x36
	.long	.LASF407
	.byte	0x5
	.uleb128 0x37
	.long	.LASF408
	.byte	0x5
	.uleb128 0x38
	.long	.LASF409
	.byte	0x5
	.uleb128 0x39
	.long	.LASF410
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF411
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF412
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF413
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF414
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF415
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF416
	.byte	0x5
	.uleb128 0x40
	.long	.LASF417
	.byte	0x5
	.uleb128 0x41
	.long	.LASF418
	.byte	0x5
	.uleb128 0x42
	.long	.LASF419
	.byte	0x5
	.uleb128 0x44
	.long	.LASF420
	.byte	0x5
	.uleb128 0x45
	.long	.LASF421
	.byte	0x5
	.uleb128 0x46
	.long	.LASF422
	.byte	0x5
	.uleb128 0x47
	.long	.LASF423
	.byte	0x5
	.uleb128 0x48
	.long	.LASF424
	.byte	0x5
	.uleb128 0x49
	.long	.LASF425
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF426
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF427
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF428
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF429
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF430
	.byte	0x5
	.uleb128 0x50
	.long	.LASF431
	.byte	0x5
	.uleb128 0x51
	.long	.LASF432
	.byte	0x5
	.uleb128 0x52
	.long	.LASF433
	.byte	0x5
	.uleb128 0x54
	.long	.LASF434
	.byte	0x5
	.uleb128 0x55
	.long	.LASF435
	.byte	0x5
	.uleb128 0x56
	.long	.LASF436
	.byte	0x5
	.uleb128 0x58
	.long	.LASF437
	.byte	0x5
	.uleb128 0x59
	.long	.LASF438
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF439
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF440
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF441
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF442
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF443
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF444
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF445
	.byte	0x5
	.uleb128 0x120
	.long	.LASF446
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF447
	.byte	0x5
	.uleb128 0x11
	.long	.LASF448
	.byte	0x5
	.uleb128 0x12
	.long	.LASF449
	.byte	0x5
	.uleb128 0x14
	.long	.LASF450
	.byte	0x5
	.uleb128 0x15
	.long	.LASF451
	.byte	0x5
	.uleb128 0x18
	.long	.LASF452
	.byte	0x5
	.uleb128 0x19
	.long	.LASF453
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF455
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x5
	.uleb128 0x20
	.long	.LASF457
	.byte	0x5
	.uleb128 0x22
	.long	.LASF458
	.byte	0x5
	.uleb128 0x23
	.long	.LASF459
	.byte	0x5
	.uleb128 0x25
	.long	.LASF460
	.byte	0x5
	.uleb128 0x26
	.long	.LASF461
	.byte	0x5
	.uleb128 0x27
	.long	.LASF462
	.byte	0x5
	.uleb128 0x28
	.long	.LASF463
	.byte	0x5
	.uleb128 0x29
	.long	.LASF464
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF465
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF466
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF467
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF468
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF469
	.byte	0x5
	.uleb128 0x30
	.long	.LASF470
	.byte	0x5
	.uleb128 0x31
	.long	.LASF471
	.byte	0x5
	.uleb128 0x32
	.long	.LASF472
	.byte	0x5
	.uleb128 0x33
	.long	.LASF473
	.byte	0x5
	.uleb128 0x34
	.long	.LASF474
	.byte	0x5
	.uleb128 0x35
	.long	.LASF475
	.byte	0x5
	.uleb128 0x37
	.long	.LASF476
	.byte	0x5
	.uleb128 0x38
	.long	.LASF477
	.byte	0x5
	.uleb128 0x39
	.long	.LASF478
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF479
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF480
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF481
	.byte	0x5
	.uleb128 0x40
	.long	.LASF482
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF484
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x5
	.uleb128 0x21
	.long	.LASF486
	.byte	0x5
	.uleb128 0x26
	.long	.LASF487
	.byte	0x5
	.uleb128 0x29
	.long	.LASF488
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF489
	.byte	0x5
	.uleb128 0x37
	.long	.LASF490
	.byte	0x5
	.uleb128 0x38
	.long	.LASF491
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF492
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF493
	.byte	0x5
	.uleb128 0x59
	.long	.LASF494
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF495
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF496
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF497
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF498
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF499
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF500
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF501
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF502
	.byte	0x5
	.uleb128 0x8
	.long	.LASF503
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF504
	.byte	0x5
	.uleb128 0x7
	.long	.LASF505
	.byte	0x5
	.uleb128 0x8
	.long	.LASF506
	.byte	0x5
	.uleb128 0x9
	.long	.LASF507
	.byte	0x5
	.uleb128 0xa
	.long	.LASF508
	.byte	0x5
	.uleb128 0xb
	.long	.LASF509
	.byte	0x5
	.uleb128 0xc
	.long	.LASF510
	.byte	0x5
	.uleb128 0xd
	.long	.LASF511
	.byte	0x5
	.uleb128 0xe
	.long	.LASF512
	.byte	0x5
	.uleb128 0x10
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF514
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x5
	.uleb128 0x20
	.long	.LASF517
	.byte	0x5
	.uleb128 0x21
	.long	.LASF518
	.byte	0x5
	.uleb128 0x23
	.long	.LASF513
	.byte	0x5
	.uleb128 0x24
	.long	.LASF519
	.byte	0x5
	.uleb128 0x25
	.long	.LASF520
	.byte	0x5
	.uleb128 0x26
	.long	.LASF521
	.byte	0x5
	.uleb128 0x28
	.long	.LASF522
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF523
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF524
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF525
	.byte	0x5
	.uleb128 0x30
	.long	.LASF526
	.byte	0x5
	.uleb128 0x31
	.long	.LASF527
	.byte	0x5
	.uleb128 0x32
	.long	.LASF528
	.byte	0x5
	.uleb128 0x33
	.long	.LASF529
	.byte	0x5
	.uleb128 0x35
	.long	.LASF530
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF531
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF535
	.byte	0x5
	.uleb128 0xf
	.long	.LASF536
	.byte	0x5
	.uleb128 0x10
	.long	.LASF537
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF538
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF539
	.byte	0x5
	.uleb128 0x23
	.long	.LASF540
	.byte	0x5
	.uleb128 0x24
	.long	.LASF541
	.byte	0x5
	.uleb128 0x25
	.long	.LASF542
	.byte	0x5
	.uleb128 0x26
	.long	.LASF543
	.byte	0x5
	.uleb128 0x27
	.long	.LASF544
	.byte	0x5
	.uleb128 0x28
	.long	.LASF545
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF546
	.byte	0x5
	.uleb128 0x31
	.long	.LASF547
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF548
	.byte	0x5
	.uleb128 0x11
	.long	.LASF549
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF550
	.byte	0x5
	.uleb128 0xab
	.long	.LASF551
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF553
	.byte	0x5
	.uleb128 0x9
	.long	.LASF554
	.byte	0x5
	.uleb128 0xa
	.long	.LASF555
	.byte	0x5
	.uleb128 0xb
	.long	.LASF556
	.byte	0x5
	.uleb128 0xd
	.long	.LASF557
	.byte	0x5
	.uleb128 0xe
	.long	.LASF558
	.byte	0x5
	.uleb128 0x10
	.long	.LASF559
	.byte	0x5
	.uleb128 0x11
	.long	.LASF560
	.byte	0x5
	.uleb128 0x12
	.long	.LASF561
	.byte	0x5
	.uleb128 0x13
	.long	.LASF562
	.byte	0x5
	.uleb128 0x19
	.long	.LASF563
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF564
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF565
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF567
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF568
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF569
	.byte	0x5
	.uleb128 0x20
	.long	.LASF570
	.byte	0x5
	.uleb128 0x21
	.long	.LASF571
	.byte	0x5
	.uleb128 0x22
	.long	.LASF572
	.byte	0x5
	.uleb128 0x23
	.long	.LASF573
	.byte	0x5
	.uleb128 0x24
	.long	.LASF574
	.byte	0x5
	.uleb128 0x25
	.long	.LASF575
	.byte	0x5
	.uleb128 0x27
	.long	.LASF576
	.byte	0x5
	.uleb128 0x28
	.long	.LASF577
	.byte	0x5
	.uleb128 0x29
	.long	.LASF578
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF580
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF581
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF583
	.byte	0x5
	.uleb128 0x34
	.long	.LASF584
	.byte	0x5
	.uleb128 0x35
	.long	.LASF585
	.byte	0x5
	.uleb128 0x36
	.long	.LASF586
	.byte	0x5
	.uleb128 0x37
	.long	.LASF587
	.byte	0x5
	.uleb128 0x38
	.long	.LASF588
	.byte	0x5
	.uleb128 0x39
	.long	.LASF589
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF590
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF591
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF592
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF593
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF594
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF595
	.byte	0x5
	.uleb128 0x40
	.long	.LASF596
	.byte	0x5
	.uleb128 0x41
	.long	.LASF597
	.byte	0x5
	.uleb128 0x42
	.long	.LASF598
	.byte	0x5
	.uleb128 0x43
	.long	.LASF599
	.byte	0x5
	.uleb128 0x44
	.long	.LASF600
	.byte	0x5
	.uleb128 0x45
	.long	.LASF601
	.byte	0x5
	.uleb128 0x46
	.long	.LASF602
	.byte	0x5
	.uleb128 0x47
	.long	.LASF603
	.byte	0x5
	.uleb128 0x48
	.long	.LASF604
	.byte	0x5
	.uleb128 0x49
	.long	.LASF605
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF606
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF607
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF608
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF609
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF610
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF611
	.byte	0x5
	.uleb128 0x50
	.long	.LASF612
	.byte	0x5
	.uleb128 0x51
	.long	.LASF613
	.byte	0x5
	.uleb128 0x52
	.long	.LASF614
	.byte	0x5
	.uleb128 0x54
	.long	.LASF615
	.byte	0x5
	.uleb128 0x55
	.long	.LASF616
	.byte	0x5
	.uleb128 0x56
	.long	.LASF617
	.byte	0x5
	.uleb128 0x57
	.long	.LASF618
	.byte	0x5
	.uleb128 0x58
	.long	.LASF619
	.byte	0x5
	.uleb128 0x59
	.long	.LASF620
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF621
	.byte	0x5
	.uleb128 0x64
	.long	.LASF622
	.byte	0x5
	.uleb128 0x97
	.long	.LASF623
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF624
	.byte	0x5
	.uleb128 0xac
	.long	.LASF625
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF626
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF627
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF628
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF629
	.byte	0x5
	.uleb128 0xee
	.long	.LASF630
	.byte	0x5
	.uleb128 0x101
	.long	.LASF631
	.byte	0x5
	.uleb128 0x104
	.long	.LASF632
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF633
	.byte	0x5
	.uleb128 0x126
	.long	.LASF634
	.byte	0x5
	.uleb128 0x127
	.long	.LASF635
	.byte	0x5
	.uleb128 0x128
	.long	.LASF636
	.byte	0x5
	.uleb128 0x129
	.long	.LASF637
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF638
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF639
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF640
	.byte	0x5
	.uleb128 0x6
	.long	.LASF641
	.byte	0x5
	.uleb128 0x7
	.long	.LASF642
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
.LASF380:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF522:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF547:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF664:
	.string	"vga_textbuffer"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF517:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF636:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF492:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF533:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF667:
	.string	"strlen"
.LASF572:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF687:
	.string	"lessthaneq"
.LASF669:
	.string	"pt_map_range"
.LASF444:
	.string	"MULTIBOOT_FRAMEBUFFER_TYPE_INDEXED 0"
.LASF673:
	.string	"page_alloc_n"
.LASF456:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF670:
	.string	"pt_set"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF352:
	.string	"__k8__ 1"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF677:
	.string	"vga_set_cursor"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF521:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF552:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF633:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF566:
	.string	"MAX_LAPICS 8"
.LASF635:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF594:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF404:
	.string	"MULTIBOOT_TAG_TYPE_MMAP 6"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF565:
	.string	"IPL_HIGHEST 0xff"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF654:
	.string	"unsigned int"
.LASF430:
	.string	"MULTIBOOT_HEADER_TAG_RELOCATABLE 10"
.LASF605:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF407:
	.string	"MULTIBOOT_TAG_TYPE_ELF_SECTIONS 9"
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
.LASF663:
	.string	"vga_textbuffer_phys"
.LASF422:
	.string	"MULTIBOOT_HEADER_TAG_ADDRESS 2"
.LASF562:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF587:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF389:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF535:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF665:
	.string	"vga_blank_screen"
.LASF415:
	.string	"MULTIBOOT_TAG_TYPE_EFI_MMAP 17"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF410:
	.string	"MULTIBOOT_TAG_TYPE_EFI64 12"
.LASF574:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF409:
	.string	"MULTIBOOT_TAG_TYPE_EFI32 11"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF394:
	.string	"MULTIBOOT2_BOOTLOADER_MAGIC 0x36d76289"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF439:
	.string	"MULTIBOOT_MEMORY_AVAILABLE 1"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF399:
	.string	"MULTIBOOT_TAG_TYPE_CMDLINE 1"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF638:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF491:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF689:
	.string	"lessthan"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF398:
	.string	"MULTIBOOT_TAG_TYPE_END 0"
.LASF624:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF645:
	.string	"CURSOR_HIGH 0x0e"
.LASF419:
	.string	"MULTIBOOT_TAG_TYPE_LOAD_BASE_ADDR 21"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF630:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF499:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF477:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF515:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF447:
	.string	"PAGE_SHIFT 12"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF556:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF549:
	.string	"PROC_NAME_LEN 256"
.LASF383:
	.string	"packed __attribute__((packed))"
.LASF629:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF604:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF387:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF578:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF392:
	.string	"MULTIBOOT_HEADER_ALIGN 8"
.LASF577:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF653:
	.string	"uint32_t"
.LASF610:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF458:
	.string	"USE_2MB_PAGES 1"
.LASF526:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF506:
	.string	"PT_USER 0x004"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF453:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF490:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF502:
	.string	"VMMAP_DIR_LOHI 1"
.LASF440:
	.string	"MULTIBOOT_MEMORY_RESERVED 2"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF564:
	.string	"IPL_HIGH 0xe0"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF416:
	.string	"MULTIBOOT_TAG_TYPE_EFI_BS 18"
.LASF464:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF377:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF660:
	.string	"long long unsigned int"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF614:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF3:
	.string	"__GNUC__ 12"
.LASF405:
	.string	"MULTIBOOT_TAG_TYPE_VBE 7"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF675:
	.string	"vga_clear_screen"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF543:
	.string	"MAX_VNODES 1024"
.LASF642:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF519:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF553:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF414:
	.string	"MULTIBOOT_TAG_TYPE_NETWORK 16"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF666:
	.string	"shutdown_message"
.LASF676:
	.string	"vga_write_char_at"
.LASF442:
	.string	"MULTIBOOT_MEMORY_NVS 4"
.LASF697:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF488:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF693:
	.string	"intr_disable"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF496:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF545:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF597:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF607:
	.string	"DBG_KB DBG_MODE(22)"
.LASF382:
	.string	"NULL 0"
.LASF555:
	.string	"INTR_GPF 0x0d"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF671:
	.string	"pt_get"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF354:
	.string	"__MMX__ 1"
.LASF455:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF554:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF478:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF592:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF639:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF531:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF513:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF468:
	.string	"PAGE_SHIFT_1GB 30"
.LASF505:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF659:
	.string	"size_t"
.LASF589:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF620:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF570:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF493:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF437:
	.string	"MULTIBOOT_CONSOLE_FLAGS_CONSOLE_REQUIRED 1"
.LASF448:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF471:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF632:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF451:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF579:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF626:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF696:
	.string	"flags"
.LASF343:
	.string	"__amd64__ 1"
.LASF585:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF489:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF475:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF507:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF508:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF481:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF546:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF462:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF391:
	.string	"MULTIBOOT_SEARCH 32768"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF379:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF512:
	.string	"PT_GLOBAL 0x100"
.LASF463:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF691:
	.string	"equals"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF575:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF411:
	.string	"MULTIBOOT_TAG_TYPE_SMBIOS 13"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF486:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF460:
	.string	"PAGE_SHIFT_2MB 21"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF559:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF661:
	.string	"char"
.LASF445:
	.string	"MULTIBOOT_FRAMEBUFFER_TYPE_RGB 1"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF588:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF406:
	.string	"MULTIBOOT_TAG_TYPE_FRAMEBUFFER 8"
.LASF596:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF650:
	.string	"uint8_t"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF483:
	.string	"inline __attribute__((always_inline, used))"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF525:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF593:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF582:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF438:
	.string	"MULTIBOOT_CONSOLE_FLAGS_EGA_TEXT_SUPPORTED 2"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF600:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF413:
	.string	"MULTIBOOT_TAG_TYPE_ACPI_NEW 15"
.LASF420:
	.string	"MULTIBOOT_HEADER_TAG_END 0"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF628:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF681:
	.string	"vga_disable_cursor"
.LASF388:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF619:
	.string	"DBG_USER DBG_MODE(38)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF376:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF536:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF467:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF623:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF637:
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
.LASF557:
	.string	"INTR_APICTIMER 0xf0"
.LASF609:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF679:
	.string	"pages"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF612:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF690:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF474:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF537:
	.string	"TICK_MSECS 10"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF700:
	.string	"phys"
.LASF443:
	.string	"MULTIBOOT_MEMORY_BADRAM 5"
.LASF14:
	.string	"_LP64 1"
.LASF511:
	.string	"PT_SIZE 0x080"
.LASF441:
	.string	"MULTIBOOT_MEMORY_ACPI_RECLAIMABLE 3"
.LASF699:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF591:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF344:
	.string	"__x86_64 1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF504:
	.string	"PT_PRESENT 0x001"
.LASF584:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF469:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF487:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF510:
	.string	"PT_DIRTY 0x040"
.LASF608:
	.string	"DBG_THR DBG_MODE(23)"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF450:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF423:
	.string	"MULTIBOOT_HEADER_TAG_ENTRY_ADDRESS 3"
.LASF368:
	.string	"__ELF__ 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF457:
	.string	"PAGE_NSIZES 8"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF529:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF355:
	.string	"__SSE__ 1"
.LASF576:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF568:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF569:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF0:
	.string	"__STDC__ 1"
.LASF381:
	.string	"TAG_SIZE(x) (((x)-1) / MULTIBOOT_TAG_ALIGN + 1)"
.LASF356:
	.string	"__SSE2__ 1"
.LASF602:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF479:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF622:
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
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF473:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF400:
	.string	"MULTIBOOT_TAG_TYPE_BOOT_LOADER_NAME 2"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF616:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF560:
	.string	"INTR_SPURIOUS 0xfe"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF613:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF523:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF542:
	.string	"MAX_VFS 8"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF454:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF470:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF544:
	.string	"NAME_LEN 28"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF539:
	.string	"PF_HASH_SIZE 17"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF686:
	.string	"greaterthaneq"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF678:
	.string	"vga_init"
.LASF662:
	.string	"pml4_t"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF640:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF461:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF417:
	.string	"MULTIBOOT_TAG_TYPE_EFI32_IH 19"
.LASF601:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF625:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF362:
	.string	"__SEG_GS 1"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF651:
	.string	"uint16_t"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF435:
	.string	"MULTIBOOT_LOAD_PREFERENCE_LOW 1"
.LASF498:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF563:
	.string	"IPL_LOW 0"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF561:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF384:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF634:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF472:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF598:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF649:
	.string	"short int"
.LASF412:
	.string	"MULTIBOOT_TAG_TYPE_ACPI_OLD 14"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF425:
	.string	"MULTIBOOT_HEADER_TAG_FRAMEBUFFER 5"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF655:
	.string	"long int"
.LASF538:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF386:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF702:
	.string	"outb"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF397:
	.string	"MULTIBOOT_TAG_ALIGN 8"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF466:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF518:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF694:
	.string	"intr_enable"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF701:
	.string	"vga_blank_row"
.LASF485:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
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
.LASF618:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF446:
	.string	"MULTIBOOT_FRAMEBUFFER_TYPE_EGA_TEXT 2"
.LASF482:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF644:
	.string	"CRT_CONTROL_DATA 0x3d5"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF656:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF516:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF401:
	.string	"MULTIBOOT_TAG_TYPE_MODULE 3"
.LASF418:
	.string	"MULTIBOOT_TAG_TYPE_EFI64_IH 20"
.LASF393:
	.string	"MULTIBOOT2_HEADER_MAGIC 0xe85250d6"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF698:
	.string	"drivers/screen.c"
.LASF684:
	.string	"outl"
.LASF573:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF621:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF509:
	.string	"PT_ACCESSED 0x020"
.LASF433:
	.string	"MULTIBOOT_HEADER_TAG_OPTIONAL 1"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF641:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF571:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF685:
	.string	"outw"
.LASF527:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF528:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF550:
	.string	"PID_IDLE 0"
.LASF465:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF378:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF695:
	.string	"intr_enabled"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF449:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF534:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF658:
	.string	"uintptr_t"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF692:
	.string	"intr_wait"
.LASF361:
	.string	"__SEG_FS 1"
.LASF402:
	.string	"MULTIBOOT_TAG_TYPE_BASIC_MEMINFO 4"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF581:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF657:
	.string	"long unsigned int"
.LASF421:
	.string	"MULTIBOOT_HEADER_TAG_INFORMATION_REQUEST 1"
.LASF530:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF503:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF580:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF432:
	.string	"MULTIBOOT_ARCHITECTURE_MIPS32 4"
.LASF514:
	.string	"INDEX_MASK 0b111111111"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF617:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF434:
	.string	"MULTIBOOT_LOAD_PREFERENCE_NONE 0"
.LASF683:
	.string	"port"
.LASF431:
	.string	"MULTIBOOT_ARCHITECTURE_I386 0"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF375:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF590:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF351:
	.string	"__k8 1"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF595:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF599:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF648:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF558:
	.string	"INTR_KEYBOARD 0xe0"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF403:
	.string	"MULTIBOOT_TAG_TYPE_BOOTDEV 5"
.LASF674:
	.string	"screen_print_shutdown"
.LASF357:
	.string	"__FXSR__ 1"
.LASF672:
	.string	"dbg_panic"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF603:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF548:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF424:
	.string	"MULTIBOOT_HEADER_TAG_CONSOLE_FLAGS 4"
.LASF524:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF497:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF643:
	.string	"CRT_CONTROL_ADDR 0x3d4"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF615:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF426:
	.string	"MULTIBOOT_HEADER_TAG_MODULE_ALIGN 6"
.LASF682:
	.string	"vga_enable_cursor"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF500:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF452:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF484:
	.string	"noreturn __attribute__((noreturn))"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF532:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF495:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF494:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF459:
	.string	"USE_1GB_PAGES 1"
.LASF501:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF647:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF428:
	.string	"MULTIBOOT_HEADER_TAG_ENTRY_ADDRESS_EFI32 8"
.LASF652:
	.string	"short unsigned int"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF606:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF668:
	.string	"memcpy"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF390:
	.string	"MULTIBOOT_HEADER 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF427:
	.string	"MULTIBOOT_HEADER_TAG_EFI_BS 7"
.LASF611:
	.string	"DBG_VM DBG_MODE(28)"
.LASF680:
	.string	"__func__"
.LASF688:
	.string	"greaterthan"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF551:
	.string	"PID_INIT 1"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF646:
	.string	"CURSOR_LOW 0x0f"
.LASF480:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF567:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF476:
	.string	"PAGE_SHIFT_512GB 39"
.LASF396:
	.string	"MULTIBOOT_INFO_ALIGN 0x00000008"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF408:
	.string	"MULTIBOOT_TAG_TYPE_APM 10"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF586:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF627:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF540:
	.string	"MAXPATHLEN 1024"
.LASF583:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF520:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF436:
	.string	"MULTIBOOT_LOAD_PREFERENCE_HIGH 2"
.LASF385:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF395:
	.string	"MULTIBOOT_MOD_ALIGN 0x00001000"
.LASF541:
	.string	"MAX_FILES 1024"
.LASF429:
	.string	"MULTIBOOT_HEADER_TAG_ENTRY_ADDRESS_EFI64 9"
.LASF631:
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
