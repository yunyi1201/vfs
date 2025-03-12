	.file	"keyboard.c"
	.text
.Ltext0:
	.file 1 "drivers/keyboard.c"
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
	.local	curmask
	.comm	curmask,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	""
	.string	"\0331234567890-=\b\tqwertyuiop[]\n"
	.string	"asdfghjkl;'`"
	.string	"\\zxcvbnm,./"
	.string	""
	.string	""
	.string	" "
	.data
	.align 8
	.type	normal_scancodes, @object
	.size	normal_scancodes, 8
normal_scancodes:
	.quad	.LC0
	.section	.rodata
	.align 8
.LC1:
	.string	""
	.string	"\033!@#$%^&*()_+\b\tQWERTYUIOP{}\n"
	.string	"ASDFGHJKL:\"~"
	.string	"|ZXCVBNM<>?"
	.string	""
	.string	""
	.string	" "
	.data
	.align 8
	.type	shift_scancodes, @object
	.size	shift_scancodes, 8
shift_scancodes:
	.quad	.LC1
	.local	keyboard_handler
	.comm	keyboard_handler,8,8
	.section	.rodata
.LC2:
	.string	"%s"
.LC3:
	.string	"C%ld P%ld "
.LC4:
	.string	"drivers/keyboard.c"
.LC5:
	.string	"%s:%d %s(): "
	.align 8
.LC6:
	.string	"received scancode 0x%x; resolved to char 0x%x\n"
.LC7:
	.string	"\033[0m"
	.text
	.type	keyboard_intr_handler, @function
keyboard_intr_handler:
.LFB16:
	.loc 1 82 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 86 13
	movb	$-1, -1(%rbp)
	movw	$96, -10(%rbp)
.LBB4:
.LBB5:
	.loc 4 14 5
	movzwl	-10(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -11(%rbp)
	.loc 4 17 12
	movzbl	-11(%rbp), %eax
.LBE5:
.LBE4:
	.loc 1 88 10
	movb	%al, -2(%rbp)
	.loc 1 90 21
	movzbl	-2(%rbp), %eax
	.loc 1 90 16
	andl	$128, %eax
	movl	%eax, -8(%rbp)
	.loc 1 91 8
	andb	$127, -2(%rbp)
	.loc 1 99 8
	cmpl	$0, -8(%rbp)
	je	.L29
	.loc 1 102 12
	cmpb	$42, -2(%rbp)
	je	.L30
	.loc 1 102 26 discriminator 1
	cmpb	$54, -2(%rbp)
	jne	.L31
.L30:
	.loc 1 104 21
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L31:
	.loc 1 106 17
	cmpb	$29, -2(%rbp)
	jne	.L33
	.loc 1 108 21
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L29:
	.loc 1 112 13
	cmpb	$42, -2(%rbp)
	je	.L34
	.loc 1 112 27 discriminator 1
	cmpb	$54, -2(%rbp)
	jne	.L35
.L34:
	.loc 1 114 17
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L35:
	.loc 1 116 13
	cmpb	$29, -2(%rbp)
	jne	.L36
	.loc 1 118 17
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L36:
	.loc 1 122 22
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$4, %eax
	.loc 1 122 13
	testl	%eax, %eax
	je	.L37
	.loc 1 125 17
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L37:
	.loc 1 128 13
	cmpb	$-32, -2(%rbp)
	je	.L38
	.loc 1 128 25 discriminator 1
	cmpb	$-31, -2(%rbp)
	jne	.L39
.L38:
	.loc 1 130 17
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movabsq	$curmask, %rax
	movl	%edx, (%rax)
	jmp	.L33
.L39:
	.loc 1 133 13
	cmpb	$58, -2(%rbp)
	jbe	.L40
	.loc 1 133 32 discriminator 1
	cmpb	$70, -2(%rbp)
	ja	.L40
	.loc 1 135 11
	movzbl	-2(%rbp), %eax
	addl	$69, %eax
	movb	%al, -1(%rbp)
	jmp	.L33
.L40:
	.loc 1 138 23
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	.loc 1 138 13
	testl	%eax, %eax
	je	.L41
	.loc 1 138 48 discriminator 1
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	.loc 1 138 36 discriminator 1
	testl	%eax, %eax
	je	.L41
	.loc 1 138 62 discriminator 2
	cmpb	$28, -2(%rbp)
	jne	.L41
	.loc 1 141 11
	movb	$29, -1(%rbp)
	jmp	.L33
.L41:
	.loc 1 144 23
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	.loc 1 144 13
	testl	%eax, %eax
	je	.L42
	.loc 1 144 48 discriminator 1
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	.loc 1 144 36 discriminator 1
	testl	%eax, %eax
	je	.L42
	.loc 1 144 62 discriminator 2
	cmpb	$14, -2(%rbp)
	jne	.L42
	.loc 1 147 11
	movb	$15, -1(%rbp)
	jmp	.L33
.L42:
	.loc 1 150 23
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	.loc 1 150 13
	testl	%eax, %eax
	je	.L43
	.loc 1 150 36 discriminator 1
	cmpb	$28, -2(%rbp)
	jne	.L43
	.loc 1 152 11
	movb	$28, -1(%rbp)
	jmp	.L33
.L43:
	.loc 1 155 23
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	.loc 1 155 13
	testl	%eax, %eax
	je	.L44
	.loc 1 155 36 discriminator 1
	cmpb	$14, -2(%rbp)
	jne	.L44
	.loc 1 157 11
	movb	$14, -1(%rbp)
	jmp	.L33
.L44:
	.loc 1 161 13
	cmpb	$57, -2(%rbp)
	ja	.L33
	.loc 1 166 22
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	.loc 1 166 13
	testl	%eax, %eax
	je	.L45
	.loc 1 170 37
	movabsq	$shift_scancodes, %rax
	movq	(%rax), %rdx
	movzbl	-2(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 170 11
	movb	%al, -1(%rbp)
	.loc 1 172 12
	cmpb	$63, -1(%rbp)
	jbe	.L46
	.loc 1 172 23 discriminator 1
	cmpb	$95, -1(%rbp)
	ja	.L46
	.loc 1 174 15
	subb	$64, -1(%rbp)
	jmp	.L33
.L46:
	.loc 1 178 15
	movb	$-1, -1(%rbp)
	jmp	.L33
.L45:
	.loc 1 182 22
	movabsq	$curmask, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	.loc 1 182 13
	testl	%eax, %eax
	je	.L48
	.loc 1 184 37
	movabsq	$shift_scancodes, %rax
	movq	(%rax), %rdx
	movzbl	-2(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 184 11
	movb	%al, -1(%rbp)
	jmp	.L33
.L48:
	.loc 1 188 38
	movabsq	$normal_scancodes, %rax
	movq	(%rax), %rdx
	movzbl	-2(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 188 11
	movb	%al, -1(%rbp)
.L33:
	.loc 1 191 8
	cmpb	$-1, -1(%rbp)
	je	.L49
	.loc 1 193 9
	movabsq	$keyboard_handler, %rax
	movq	(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL0:
.L49:
	.loc 1 199 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$4194304, %eax
	testq	%rax, %rax
	je	.L50
	.loc 1 199 5 is_stmt 0 discriminator 1
	movl	$4194304, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL1:
	movq	%rax, %rsi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL2:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L51
	.loc 1 199 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L52
.L51:
	.loc 1 199 5 discriminator 3
	movq	$-1, %rax
.L52:
	.loc 1 199 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL3:
	movabsq	$__func__.0, %rax
	movq	%rax, %rcx
	movl	$199, %edx
	movabsq	$.LC4, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL4:
	movzbl	-1(%rbp), %edx
	movzbl	-2(%rbp), %eax
	movl	%eax, %esi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL5:
	movabsq	$.LC7, %rax
	movq	%rax, %rsi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL6:
.L50:
	.loc 1 200 12 is_stmt 1
	movl	$0, %eax
	.loc 1 201 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	keyboard_intr_handler, .-keyboard_intr_handler
	.globl	keyboard_init
	.type	keyboard_init, @function
keyboard_init:
.LFB17:
	.loc 1 204 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 205 5
	movl	$224, %esi
	movl	$1, %edi
	movabsq	$intr_map, %rax
	call	*%rax
.LVL7:
	.loc 1 206 5
	movabsq	$keyboard_intr_handler, %rax
	movq	%rax, %rsi
	movl	$224, %edi
	movabsq	$intr_register, %rax
	call	*%rax
.LVL8:
	.loc 1 207 22
	movabsq	$keyboard_handler, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 208 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	keyboard_init, .-keyboard_init
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"keyboard_intr_handler"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/drivers/keyboard.h"
	.file 7 "include/util/list.h"
	.file 8 "include/proc/sched.h"
	.file 9 "include/vm/vmmap.h"
	.file 10 "include/proc/proc.h"
	.file 11 "include/mm/pagetable.h"
	.file 12 "include/proc/context.h"
	.file 13 "include/proc/core.h"
	.file 14 "include/globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb45
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF763
	.byte	0xc
	.long	.LASF764
	.long	.LASF765
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF642
	.uleb128 0x3
	.long	.LASF645
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF643
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF644
	.uleb128 0x3
	.long	.LASF646
	.byte	0x5
	.byte	0xc
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF647
	.uleb128 0x3
	.long	.LASF648
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x71
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF649
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF650
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF651
	.uleb128 0x3
	.long	.LASF652
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x9e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF653
	.uleb128 0x3
	.long	.LASF654
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x9e
	.uleb128 0x3
	.long	.LASF655
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x92
	.uleb128 0x3
	.long	.LASF656
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x65
	.uleb128 0x3
	.long	.LASF657
	.byte	0x6
	.byte	0x26
	.byte	0x10
	.long	0xd5
	.uleb128 0x5
	.byte	0x8
	.long	0xdb
	.uleb128 0x6
	.byte	0x1
	.long	0xe7
	.uleb128 0x7
	.long	0x38
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF663
	.byte	0x10
	.byte	0x7
	.byte	0x5e
	.byte	0x10
	.long	0x111
	.uleb128 0xa
	.long	.LASF658
	.byte	0x7
	.byte	0x60
	.byte	0x12
	.long	0x111
	.byte	0
	.uleb128 0xa
	.long	.LASF659
	.byte	0x7
	.byte	0x61
	.byte	0x12
	.long	0x111
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xe9
	.uleb128 0x3
	.long	.LASF660
	.byte	0x7
	.byte	0x62
	.byte	0x3
	.long	0xe9
	.uleb128 0x3
	.long	.LASF661
	.byte	0x7
	.byte	0x62
	.byte	0xb
	.long	0xe9
	.uleb128 0x5
	.byte	0x8
	.long	0x135
	.uleb128 0xb
	.long	.LASF707
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF662
	.uleb128 0xc
	.long	0x13b
	.uleb128 0x9
	.long	.LASF664
	.byte	0x18
	.byte	0x8
	.byte	0xf
	.byte	0x10
	.long	0x16f
	.uleb128 0xa
	.long	.LASF665
	.byte	0x8
	.byte	0x11
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF666
	.byte	0x8
	.byte	0x12
	.byte	0xc
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF667
	.byte	0x8
	.byte	0x13
	.byte	0x3
	.long	0x147
	.uleb128 0x9
	.long	.LASF668
	.byte	0x18
	.byte	0x9
	.byte	0xe
	.byte	0x10
	.long	0x1a3
	.uleb128 0xa
	.long	.LASF669
	.byte	0x9
	.byte	0x10
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF670
	.byte	0x9
	.byte	0x11
	.byte	0x12
	.long	0x290
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF671
	.value	0x2a0
	.byte	0xa
	.byte	0x1b
	.byte	0x10
	.long	0x290
	.uleb128 0xa
	.long	.LASF672
	.byte	0xa
	.byte	0x1d
	.byte	0xb
	.long	0xbd
	.byte	0
	.uleb128 0xa
	.long	.LASF673
	.byte	0xa
	.byte	0x1e
	.byte	0xa
	.long	0x3c3
	.byte	0x4
	.uleb128 0xe
	.long	.LASF674
	.byte	0xa
	.byte	0x20
	.byte	0xc
	.long	0x117
	.value	0x108
	.uleb128 0xe
	.long	.LASF675
	.byte	0xa
	.byte	0x21
	.byte	0xc
	.long	0x117
	.value	0x118
	.uleb128 0xe
	.long	.LASF676
	.byte	0xa
	.byte	0x22
	.byte	0x12
	.long	0x290
	.value	0x128
	.uleb128 0xe
	.long	.LASF677
	.byte	0xa
	.byte	0x24
	.byte	0x11
	.long	0x123
	.value	0x130
	.uleb128 0xe
	.long	.LASF678
	.byte	0xa
	.byte	0x25
	.byte	0x11
	.long	0x123
	.value	0x140
	.uleb128 0xe
	.long	.LASF679
	.byte	0xa
	.byte	0x27
	.byte	0xa
	.long	0x8b
	.value	0x150
	.uleb128 0xe
	.long	.LASF680
	.byte	0xa
	.byte	0x28
	.byte	0x12
	.long	0x3b7
	.value	0x158
	.uleb128 0xe
	.long	.LASF681
	.byte	0xa
	.byte	0x2a
	.byte	0xd
	.long	0x330
	.value	0x160
	.uleb128 0xe
	.long	.LASF682
	.byte	0xa
	.byte	0x31
	.byte	0xf
	.long	0x16f
	.value	0x168
	.uleb128 0xe
	.long	.LASF683
	.byte	0xa
	.byte	0x34
	.byte	0x12
	.long	0x3d3
	.value	0x180
	.uleb128 0xe
	.long	.LASF684
	.byte	0xa
	.byte	0x35
	.byte	0x13
	.long	0x12f
	.value	0x280
	.uleb128 0xe
	.long	.LASF685
	.byte	0xa
	.byte	0x45
	.byte	0xb
	.long	0xe7
	.value	0x288
	.uleb128 0xe
	.long	.LASF686
	.byte	0xa
	.byte	0x46
	.byte	0xb
	.long	0xe7
	.value	0x290
	.uleb128 0xe
	.long	.LASF687
	.byte	0xa
	.byte	0x47
	.byte	0x13
	.long	0x296
	.value	0x298
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a3
	.uleb128 0x5
	.byte	0x8
	.long	0x17b
	.uleb128 0xf
	.string	"pt"
	.value	0x1000
	.byte	0xb
	.byte	0x18
	.byte	0x10
	.long	0x2b7
	.uleb128 0xa
	.long	.LASF688
	.byte	0xb
	.byte	0x1a
	.byte	0xf
	.long	0x2b7
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xa5
	.long	0x2c8
	.uleb128 0x11
	.long	0x9e
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF689
	.byte	0xb
	.byte	0x1b
	.byte	0x16
	.long	0x29c
	.uleb128 0x9
	.long	.LASF690
	.byte	0x30
	.byte	0xc
	.byte	0xd
	.byte	0x10
	.long	0x330
	.uleb128 0xa
	.long	.LASF691
	.byte	0xc
	.byte	0xf
	.byte	0xf
	.long	0xa5
	.byte	0
	.uleb128 0xa
	.long	.LASF692
	.byte	0xc
	.byte	0x10
	.byte	0xf
	.long	0xa5
	.byte	0x8
	.uleb128 0xa
	.long	.LASF693
	.byte	0xc
	.byte	0x11
	.byte	0xf
	.long	0xa5
	.byte	0x10
	.uleb128 0xa
	.long	.LASF694
	.byte	0xc
	.byte	0x14
	.byte	0xa
	.long	0x330
	.byte	0x18
	.uleb128 0xa
	.long	.LASF695
	.byte	0xc
	.byte	0x18
	.byte	0xf
	.long	0xa5
	.byte	0x20
	.uleb128 0xa
	.long	.LASF696
	.byte	0xc
	.byte	0x19
	.byte	0xc
	.long	0xb1
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2c8
	.uleb128 0x3
	.long	.LASF697
	.byte	0xc
	.byte	0x1a
	.byte	0x3
	.long	0x2d4
	.uleb128 0x9
	.long	.LASF698
	.byte	0x48
	.byte	0xd
	.byte	0x7
	.byte	0x10
	.long	0x384
	.uleb128 0xa
	.long	.LASF699
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.long	0x8b
	.byte	0
	.uleb128 0xa
	.long	.LASF700
	.byte	0xd
	.byte	0xa
	.byte	0xf
	.long	0x336
	.byte	0x8
	.uleb128 0xa
	.long	.LASF701
	.byte	0xd
	.byte	0xc
	.byte	0x10
	.long	0x384
	.byte	0x38
	.uleb128 0xa
	.long	.LASF702
	.byte	0xd
	.byte	0xe
	.byte	0xf
	.long	0xa5
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x16f
	.uleb128 0x3
	.long	.LASF703
	.byte	0xd
	.byte	0xf
	.byte	0x3
	.long	0x342
	.uleb128 0x5
	.byte	0x8
	.long	0x13b
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0xa
	.byte	0x15
	.byte	0x1
	.long	0x3b7
	.uleb128 0x13
	.long	.LASF704
	.byte	0
	.uleb128 0x13
	.long	.LASF705
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF706
	.byte	0xa
	.byte	0x18
	.byte	0x3
	.long	0x39c
	.uleb128 0x10
	.long	0x13b
	.long	0x3d3
	.uleb128 0x14
	.long	0x9e
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.long	0x3e3
	.long	0x3e3
	.uleb128 0x14
	.long	0x9e
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x3e9
	.uleb128 0xb
	.long	.LASF708
	.byte	0x1
	.uleb128 0x3
	.long	.LASF709
	.byte	0xa
	.byte	0x49
	.byte	0x3
	.long	0x1a3
	.uleb128 0x15
	.long	.LASF710
	.byte	0xe
	.byte	0x9
	.byte	0xf
	.long	0x38a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF711
	.byte	0xe
	.byte	0xa
	.byte	0x10
	.long	0x417
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x3ef
	.uleb128 0x15
	.long	.LASF712
	.byte	0x2
	.byte	0x8c
	.byte	0x11
	.long	0x92
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	.LASF713
	.byte	0xb0
	.byte	0x3
	.byte	0x1f
	.byte	0x10
	.long	0x557
	.uleb128 0xa
	.long	.LASF714
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x92
	.byte	0
	.uleb128 0xa
	.long	.LASF715
	.byte	0x3
	.byte	0x23
	.byte	0xe
	.long	0x92
	.byte	0x8
	.uleb128 0xa
	.long	.LASF716
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.long	0x92
	.byte	0x10
	.uleb128 0xa
	.long	.LASF717
	.byte	0x3
	.byte	0x25
	.byte	0xe
	.long	0x92
	.byte	0x18
	.uleb128 0xa
	.long	.LASF718
	.byte	0x3
	.byte	0x26
	.byte	0xe
	.long	0x92
	.byte	0x20
	.uleb128 0xa
	.long	.LASF719
	.byte	0x3
	.byte	0x27
	.byte	0xe
	.long	0x92
	.byte	0x28
	.uleb128 0xa
	.long	.LASF720
	.byte	0x3
	.byte	0x28
	.byte	0xe
	.long	0x92
	.byte	0x30
	.uleb128 0xa
	.long	.LASF721
	.byte	0x3
	.byte	0x29
	.byte	0xe
	.long	0x92
	.byte	0x38
	.uleb128 0xa
	.long	.LASF722
	.byte	0x3
	.byte	0x2a
	.byte	0xe
	.long	0x92
	.byte	0x40
	.uleb128 0xa
	.long	.LASF723
	.byte	0x3
	.byte	0x2b
	.byte	0xe
	.long	0x92
	.byte	0x48
	.uleb128 0xa
	.long	.LASF724
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.long	0x92
	.byte	0x50
	.uleb128 0xa
	.long	.LASF725
	.byte	0x3
	.byte	0x2d
	.byte	0xe
	.long	0x92
	.byte	0x58
	.uleb128 0xa
	.long	.LASF726
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.long	0x92
	.byte	0x60
	.uleb128 0xa
	.long	.LASF727
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.long	0x92
	.byte	0x68
	.uleb128 0xa
	.long	.LASF728
	.byte	0x3
	.byte	0x30
	.byte	0xe
	.long	0x92
	.byte	0x70
	.uleb128 0xa
	.long	.LASF729
	.byte	0x3
	.byte	0x33
	.byte	0xe
	.long	0x92
	.byte	0x78
	.uleb128 0xa
	.long	.LASF730
	.byte	0x3
	.byte	0x36
	.byte	0xe
	.long	0x92
	.byte	0x80
	.uleb128 0xa
	.long	.LASF731
	.byte	0x3
	.byte	0x37
	.byte	0xe
	.long	0x92
	.byte	0x88
	.uleb128 0xa
	.long	.LASF732
	.byte	0x3
	.byte	0x38
	.byte	0xe
	.long	0x92
	.byte	0x90
	.uleb128 0xa
	.long	.LASF733
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.long	0x92
	.byte	0x98
	.uleb128 0xa
	.long	.LASF734
	.byte	0x3
	.byte	0x3a
	.byte	0xe
	.long	0x92
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF735
	.byte	0x3
	.byte	0x3b
	.byte	0xe
	.long	0x92
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.long	.LASF736
	.byte	0x3
	.byte	0x3c
	.byte	0xa
	.long	0x42b
	.uleb128 0x3
	.long	.LASF737
	.byte	0x3
	.byte	0x46
	.byte	0x10
	.long	0x56f
	.uleb128 0x5
	.byte	0x8
	.long	0x575
	.uleb128 0x16
	.byte	0x1
	.long	0x8b
	.long	0x585
	.uleb128 0x7
	.long	0x585
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x557
	.uleb128 0x17
	.long	.LASF738
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.long	0x71
	.byte	0x9
	.byte	0x3
	.quad	curmask
	.uleb128 0x17
	.long	.LASF739
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.long	0x5b7
	.byte	0x9
	.byte	0x3
	.quad	normal_scancodes
	.uleb128 0x5
	.byte	0x8
	.long	0x142
	.uleb128 0x17
	.long	.LASF740
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.long	0x5b7
	.byte	0x9
	.byte	0x3
	.quad	shift_scancodes
	.uleb128 0x17
	.long	.LASF741
	.byte	0x1
	.byte	0x4d
	.byte	0x20
	.long	0xc9
	.byte	0x9
	.byte	0x3
	.quad	keyboard_handler
	.uleb128 0x18
	.byte	0x1
	.long	.LASF742
	.byte	0x3
	.byte	0x4d
	.byte	0x10
	.byte	0x1
	.long	0x563
	.byte	0x1
	.long	0x607
	.uleb128 0x7
	.long	0x38
	.uleb128 0x7
	.long	0x563
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF743
	.byte	0x3
	.byte	0x4f
	.byte	0x9
	.byte	0x1
	.long	0x65
	.byte	0x1
	.long	0x625
	.uleb128 0x7
	.long	0x52
	.uleb128 0x7
	.long	0x38
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF766
	.byte	0x2
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x63b
	.uleb128 0x7
	.long	0x396
	.uleb128 0x1a
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF744
	.byte	0x2
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0x5b7
	.byte	0x1
	.long	0x654
	.uleb128 0x7
	.long	0x92
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF767
	.byte	0x1
	.byte	0xcb
	.byte	0x6
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x69f
	.uleb128 0x1c
	.long	.LASF745
	.byte	0x1
	.byte	0xcb
	.byte	0x2c
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.quad	.LVL7
	.long	0x607
	.uleb128 0x1d
	.quad	.LVL8
	.long	0x5e9
	.byte	0
	.uleb128 0x1e
	.long	.LASF747
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x78c
	.uleb128 0x1c
	.long	.LASF713
	.byte	0x1
	.byte	0x51
	.byte	0x2b
	.long	0x585
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"sc"
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x17
	.long	.LASF746
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.long	0x71
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x20
	.long	.LASF768
	.long	0x79c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x21
	.long	0x8a5
	.quad	.LBB4
	.quad	.LBE4
	.byte	0x1
	.byte	0x58
	.byte	0xa
	.long	0x73d
	.uleb128 0x22
	.long	0x8b7
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x23
	.long	0x8c3
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.uleb128 0x1d
	.quad	.LVL1
	.long	0x63b
	.uleb128 0x1d
	.quad	.LVL2
	.long	0x625
	.uleb128 0x1d
	.quad	.LVL3
	.long	0x625
	.uleb128 0x1d
	.quad	.LVL4
	.long	0x625
	.uleb128 0x1d
	.quad	.LVL5
	.long	0x625
	.uleb128 0x1d
	.quad	.LVL6
	.long	0x625
	.byte	0
	.uleb128 0x10
	.long	0x142
	.long	0x79c
	.uleb128 0x14
	.long	0x9e
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.long	0x78c
	.uleb128 0x24
	.string	"inl"
	.byte	0x4
	.byte	0x27
	.byte	0x18
	.byte	0x1
	.long	0x78
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7e4
	.uleb128 0x1c
	.long	.LASF748
	.byte	0x4
	.byte	0x27
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"ret"
	.byte	0x4
	.byte	0x29
	.byte	0xe
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF749
	.byte	0x4
	.byte	0x22
	.byte	0x14
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x823
	.uleb128 0x1c
	.long	.LASF748
	.byte	0x4
	.byte	0x22
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"val"
	.byte	0x4
	.byte	0x22
	.byte	0x31
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
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
	.long	0x866
	.uleb128 0x1c
	.long	.LASF748
	.byte	0x4
	.byte	0x19
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"ret"
	.byte	0x4
	.byte	0x1b
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x25
	.long	.LASF750
	.byte	0x4
	.byte	0x14
	.byte	0x14
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8a5
	.uleb128 0x1c
	.long	.LASF748
	.byte	0x4
	.byte	0x14
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"val"
	.byte	0x4
	.byte	0x14
	.byte	0x31
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.string	"inb"
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0x8d0
	.uleb128 0x28
	.long	.LASF748
	.byte	0x4
	.byte	0xb
	.byte	0x24
	.long	0x52
	.uleb128 0x29
	.string	"ret"
	.byte	0x4
	.byte	0xd
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x25
	.long	.LASF751
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x90f
	.uleb128 0x1c
	.long	.LASF748
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"val"
	.byte	0x4
	.byte	0x6
	.byte	0x30
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF752
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF753
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF754
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF755
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x92
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x993
	.uleb128 0x17
	.long	.LASF756
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF757
	.byte	0x2
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9d5
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x124
	.byte	0x20
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x124
	.byte	0x28
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF758
	.byte	0x2
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa17
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x122
	.byte	0x1d
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x122
	.byte	0x25
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF759
	.byte	0x2
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa59
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x120
	.byte	0x1e
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x120
	.byte	0x26
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF760
	.byte	0x2
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa9b
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x11e
	.byte	0x1b
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x11e
	.byte	0x23
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF761
	.byte	0x2
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xadd
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x11c
	.byte	0x1c
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x11c
	.byte	0x24
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF762
	.byte	0x2
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x8b
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb1f
	.uleb128 0x2d
	.string	"l"
	.byte	0x2
	.value	0x117
	.byte	0x19
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"r"
	.byte	0x2
	.value	0x117
	.byte	0x21
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.long	0x8a5
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.long	0x8b7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	0x8c3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 15 "include/drivers/tty/tty.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.file 16 "include/drivers/chardev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.file 17 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.file 18 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.file 19 "include/drivers/tty/ldisc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x13
	.file 20 "include/proc/kmutex.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.file 21 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x8
	.long	.LASF432
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF433
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF434
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF435
	.byte	0x4
	.file 22 "include/drivers/tty/vterminal.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x16
	.file 23 "include/drivers/screen.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x17
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
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
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
	.file 27 "include/proc/kthread.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1b
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
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
	.file 29 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x10
	.long	.LASF539
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x8
	.long	.LASF626
	.byte	0x5
	.uleb128 0xb
	.long	.LASF627
	.byte	0x5
	.uleb128 0xc
	.long	.LASF628
	.byte	0x5
	.uleb128 0xe
	.long	.LASF629
	.byte	0x5
	.uleb128 0x12
	.long	.LASF630
	.byte	0x5
	.uleb128 0x13
	.long	.LASF631
	.byte	0x5
	.uleb128 0x16
	.long	.LASF632
	.byte	0x5
	.uleb128 0x17
	.long	.LASF633
	.byte	0x5
	.uleb128 0x18
	.long	.LASF634
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF635
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF636
	.byte	0x5
	.uleb128 0x21
	.long	.LASF637
	.byte	0x5
	.uleb128 0x23
	.long	.LASF638
	.byte	0x5
	.uleb128 0x27
	.long	.LASF639
	.byte	0x5
	.uleb128 0x29
	.long	.LASF640
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF641
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
	.section	.debug_macro,"G",@progbits,wm4.dev.h.34.bcbbb57079ed492c852b86a3856d6df1,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF401
	.byte	0x5
	.uleb128 0x23
	.long	.LASF402
	.byte	0x5
	.uleb128 0x24
	.long	.LASF403
	.byte	0x5
	.uleb128 0x25
	.long	.LASF404
	.byte	0x5
	.uleb128 0x26
	.long	.LASF405
	.byte	0x5
	.uleb128 0x29
	.long	.LASF406
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF407
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF409
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF410
	.byte	0x5
	.uleb128 0x30
	.long	.LASF411
	.byte	0x5
	.uleb128 0x31
	.long	.LASF412
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro6:
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
.Ldebug_macro7:
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
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF540
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF541
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF542
	.byte	0x5
	.uleb128 0x20
	.long	.LASF543
	.byte	0x5
	.uleb128 0x21
	.long	.LASF544
	.byte	0x5
	.uleb128 0x22
	.long	.LASF545
	.byte	0x5
	.uleb128 0x23
	.long	.LASF546
	.byte	0x5
	.uleb128 0x24
	.long	.LASF547
	.byte	0x5
	.uleb128 0x25
	.long	.LASF548
	.byte	0x5
	.uleb128 0x27
	.long	.LASF549
	.byte	0x5
	.uleb128 0x28
	.long	.LASF550
	.byte	0x5
	.uleb128 0x29
	.long	.LASF551
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF553
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF554
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF555
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF556
	.byte	0x5
	.uleb128 0x34
	.long	.LASF557
	.byte	0x5
	.uleb128 0x35
	.long	.LASF558
	.byte	0x5
	.uleb128 0x36
	.long	.LASF559
	.byte	0x5
	.uleb128 0x37
	.long	.LASF560
	.byte	0x5
	.uleb128 0x38
	.long	.LASF561
	.byte	0x5
	.uleb128 0x39
	.long	.LASF562
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF563
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF564
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF565
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF566
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF567
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF568
	.byte	0x5
	.uleb128 0x40
	.long	.LASF569
	.byte	0x5
	.uleb128 0x41
	.long	.LASF570
	.byte	0x5
	.uleb128 0x42
	.long	.LASF571
	.byte	0x5
	.uleb128 0x43
	.long	.LASF572
	.byte	0x5
	.uleb128 0x44
	.long	.LASF573
	.byte	0x5
	.uleb128 0x45
	.long	.LASF574
	.byte	0x5
	.uleb128 0x46
	.long	.LASF575
	.byte	0x5
	.uleb128 0x47
	.long	.LASF576
	.byte	0x5
	.uleb128 0x48
	.long	.LASF577
	.byte	0x5
	.uleb128 0x49
	.long	.LASF578
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF579
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF580
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF581
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF583
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF584
	.byte	0x5
	.uleb128 0x50
	.long	.LASF585
	.byte	0x5
	.uleb128 0x51
	.long	.LASF586
	.byte	0x5
	.uleb128 0x52
	.long	.LASF587
	.byte	0x5
	.uleb128 0x54
	.long	.LASF588
	.byte	0x5
	.uleb128 0x55
	.long	.LASF589
	.byte	0x5
	.uleb128 0x56
	.long	.LASF590
	.byte	0x5
	.uleb128 0x57
	.long	.LASF591
	.byte	0x5
	.uleb128 0x58
	.long	.LASF592
	.byte	0x5
	.uleb128 0x59
	.long	.LASF593
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF594
	.byte	0x5
	.uleb128 0x64
	.long	.LASF595
	.byte	0x5
	.uleb128 0x97
	.long	.LASF596
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF597
	.byte	0x5
	.uleb128 0xac
	.long	.LASF598
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF599
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF600
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF601
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF602
	.byte	0x5
	.uleb128 0xee
	.long	.LASF603
	.byte	0x5
	.uleb128 0x101
	.long	.LASF604
	.byte	0x5
	.uleb128 0x104
	.long	.LASF605
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF606
	.byte	0x5
	.uleb128 0x126
	.long	.LASF607
	.byte	0x5
	.uleb128 0x127
	.long	.LASF608
	.byte	0x5
	.uleb128 0x128
	.long	.LASF609
	.byte	0x5
	.uleb128 0x129
	.long	.LASF610
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF611
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF612
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF613
	.byte	0x5
	.uleb128 0x9
	.long	.LASF614
	.byte	0x5
	.uleb128 0xa
	.long	.LASF615
	.byte	0x5
	.uleb128 0xb
	.long	.LASF616
	.byte	0x5
	.uleb128 0xd
	.long	.LASF617
	.byte	0x5
	.uleb128 0xe
	.long	.LASF618
	.byte	0x5
	.uleb128 0x10
	.long	.LASF619
	.byte	0x5
	.uleb128 0x11
	.long	.LASF620
	.byte	0x5
	.uleb128 0x12
	.long	.LASF621
	.byte	0x5
	.uleb128 0x13
	.long	.LASF622
	.byte	0x5
	.uleb128 0x19
	.long	.LASF623
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF624
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF625
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
.LASF584:
	.string	"DBG_VM DBG_MODE(28)"
.LASF436:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF655:
	.string	"size_t"
.LASF443:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF727:
	.string	"r_rsi"
.LASF590:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF559:
	.string	"DBG_MM DBG_MODE(1)"
.LASF445:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF718:
	.string	"r_rbp"
.LASF15:
	.string	"__LP64__ 1"
.LASF572:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF692:
	.string	"c_rsp"
.LASF496:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF684:
	.string	"p_cwd"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF637:
	.string	"BREAK_MASK 0x80"
.LASF430:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF540:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF505:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF442:
	.string	"PAGE_SHIFT 12"
.LASF648:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF766:
	.string	"dbg_print"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF694:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF397:
	.string	"F9 ((uint8_t)(F1 + 8))"
.LASF768:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF585:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF641:
	.string	"F12_SCANCODE (F1_SCANCODE + 11)"
.LASF617:
	.string	"INTR_APICTIMER 0xf0"
.LASF487:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF375:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF379:
	.string	"ESC 0x1B"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF477:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF344:
	.string	"__x86_64 1"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF691:
	.string	"c_rip"
.LASF400:
	.string	"F12 ((uint8_t)(F1 + 11))"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF603:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF435:
	.string	"LDISC_BUFFER_SIZE 128"
.LASF405:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF495:
	.string	"PT_WRITE_THROUGH 0x008"
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
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF446:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF429:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF510:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF700:
	.string	"kc_ctx"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF758:
	.string	"lessthaneq"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF461:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF390:
	.string	"F2 ((uint8_t)(F1 + 1))"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF438:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF506:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF593:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF537:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF456:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF428:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF576:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF450:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF734:
	.string	"r_rsp"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF699:
	.string	"kc_id"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF565:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF394:
	.string	"F6 ((uint8_t)(F1 + 5))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF651:
	.string	"long int"
.LASF380:
	.string	"LF 0x0A"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF539:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF371:
	.string	"__VFS__ 1"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF726:
	.string	"r_rdx"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF509:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF710:
	.string	"curcore"
.LASF761:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF453:
	.string	"USE_2MB_PAGES 1"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF741:
	.string	"keyboard_handler"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF615:
	.string	"INTR_GPF 0x0d"
.LASF569:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF613:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF744:
	.string	"dbg_color"
.LASF455:
	.string	"PAGE_SHIFT_2MB 21"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF401:
	.string	"MINOR_BITS 8"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF412:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF683:
	.string	"p_files"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF526:
	.string	"MAXPATHLEN 1024"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF547:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF415:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF642:
	.string	"signed char"
.LASF645:
	.string	"uint8_t"
.LASF458:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF542:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF591:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF652:
	.string	"uint64_t"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF597:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF643:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF698:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF395:
	.string	"F7 ((uint8_t)(F1 + 6))"
.LASF491:
	.string	"VMMAP_DIR_HILO 2"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF499:
	.string	"PT_SIZE 0x080"
.LASF736:
	.string	"regs_t"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF502:
	.string	"INDEX_MASK 0b111111111"
.LASF667:
	.string	"ktqueue_t"
.LASF634:
	.string	"CTRL 0x1d"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF624:
	.string	"IPL_HIGH 0xe0"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
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
.LASF556:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF745:
	.string	"handler"
.LASF498:
	.string	"PT_DIRTY 0x040"
.LASF486:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF696:
	.string	"c_kstacksz"
.LASF454:
	.string	"USE_1GB_PAGES 1"
.LASF662:
	.string	"char"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF424:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF672:
	.string	"p_pid"
.LASF689:
	.string	"pml4_t"
.LASF511:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF425:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF664:
	.string	"ktqueue"
.LASF632:
	.string	"LSHIFT 0x2a"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF599:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF625:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF501:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF345:
	.string	"__x86_64__ 1"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF497:
	.string	"PT_ACCESSED 0x020"
.LASF383:
	.string	"EOT 0x04"
.LASF712:
	.string	"dbg_modes"
.LASF471:
	.string	"PAGE_SHIFT_512GB 39"
.LASF437:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF361:
	.string	"__SEG_FS 1"
.LASF671:
	.string	"proc"
.LASF756:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF739:
	.string	"normal_scancodes"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF402:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF488:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF550:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF675:
	.string	"p_children"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF407:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF752:
	.string	"intr_wait"
.LASF474:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF416:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF754:
	.string	"intr_enable"
.LASF568:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF386:
	.string	"SCROLL_DOWN 0x1c"
.LASF588:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF711:
	.string	"curproc"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF422:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF513:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF708:
	.string	"file"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF485:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF681:
	.string	"p_pml4"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF530:
	.string	"NAME_LEN 28"
.LASF765:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF757:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF414:
	.string	"noreturn __attribute__((noreturn))"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF763:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF639:
	.string	"NO_CHAR 0xff"
.LASF411:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF658:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF528:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF554:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF730:
	.string	"r_err"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF659:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF578:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF602:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF377:
	.string	"BS 0x08"
.LASF551:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF381:
	.string	"CR 0x0D"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF746:
	.string	"break_code"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF704:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF610:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF594:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF682:
	.string	"p_wait"
.LASF695:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF586:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF481:
	.string	"VTC_ANSI_PARSER_STACK_SIZE 8"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF507:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF382:
	.string	"SPACE 0x20"
.LASF548:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF523:
	.string	"TICK_MSECS 10"
.LASF732:
	.string	"r_cs"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF579:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF493:
	.string	"PT_WRITE 0x002"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF738:
	.string	"curmask"
.LASF447:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF724:
	.string	"r_rax"
.LASF468:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF516:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF521:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF678:
	.string	"p_child_link"
.LASF737:
	.string	"intr_handler_t"
.LASF589:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF636:
	.string	"ESC1 0xe1"
.LASF515:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF674:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF654:
	.string	"uintptr_t"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF627:
	.string	"SHIFT_MASK 0x1"
.LASF508:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF557:
	.string	"DBG_ALL (~0ULL)"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF693:
	.string	"c_rbp"
.LASF719:
	.string	"r_rbx"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF426:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF620:
	.string	"INTR_SPURIOUS 0xfe"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF535:
	.string	"PROC_NAME_LEN 256"
.LASF536:
	.string	"PID_IDLE 0"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF355:
	.string	"__SSE__ 1"
.LASF433:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF546:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF709:
	.string	"proc_t"
.LASF409:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF417:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF562:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF657:
	.string	"keyboard_char_handler_t"
.LASF583:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF600:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF725:
	.string	"r_rcx"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF555:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF767:
	.string	"keyboard_init"
.LASF635:
	.string	"ESC0 0xe0"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF596:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF388:
	.string	"SCROLL_DOWN_PAGE 0x1d"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF398:
	.string	"F10 ((uint8_t)(F1 + 9))"
.LASF544:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF759:
	.string	"greaterthan"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF410:
	.string	"MEM_MAJOR 1"
.LASF574:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF404:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF492:
	.string	"PT_PRESENT 0x001"
.LASF553:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF545:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF742:
	.string	"intr_register"
.LASF660:
	.string	"list_t"
.LASF598:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF701:
	.string	"kc_queue"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF403:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF549:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF607:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF427:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF661:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF740:
	.string	"shift_scancodes"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF650:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF679:
	.string	"p_status"
.LASF622:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF514:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF480:
	.string	"VTC_DEFAULT_ATTR (vtattr_t) { 0, VTC_DEFAULT_FOREGROUND, VTC_DEFAULT_BACKGROUND }"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF749:
	.string	"outl"
.LASF612:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF469:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF750:
	.string	"outw"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF473:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF656:
	.string	"pid_t"
.LASF525:
	.string	"PF_HASH_SIZE 17"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF755:
	.string	"intr_enabled"
.LASF451:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF580:
	.string	"DBG_KB DBG_MODE(22)"
.LASF0:
	.string	"__STDC__ 1"
.LASF690:
	.string	"context"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF389:
	.string	"F1 ((uint8_t)128)"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF626:
	.string	"IRQ_KEYBOARD 1"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF663:
	.string	"list"
.LASF670:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF581:
	.string	"DBG_THR DBG_MODE(23)"
.LASF702:
	.string	"kc_csdpaddr"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF387:
	.string	"SCROLL_UP_PAGE 0x0f"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF688:
	.string	"phys"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF666:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF573:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF504:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF476:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF604:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF444:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF566:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF614:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF396:
	.string	"F8 ((uint8_t)(F1 + 7))"
.LASF543:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF552:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF532:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF467:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF608:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF465:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF733:
	.string	"r_rflags"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF527:
	.string	"MAX_FILES 1024"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF619:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF524:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF621:
	.string	"INTR_APICERR 0xff"
.LASF541:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF629:
	.string	"ESC_MASK 0x4"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF575:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF731:
	.string	"r_rip"
.LASF434:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF519:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF646:
	.string	"uint16_t"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF420:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF676:
	.string	"p_pproc"
.LASF743:
	.string	"intr_map"
.LASF478:
	.string	"VTC_DEFAULT_FOREGROUND VTCOLOR_GREY"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF423:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF357:
	.string	"__FXSR__ 1"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF464:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF605:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF706:
	.string	"proc_state_t"
.LASF753:
	.string	"intr_disable"
.LASF538:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF393:
	.string	"F5 ((uint8_t)(F1 + 4))"
.LASF721:
	.string	"r_r10"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF720:
	.string	"r_r11"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF419:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF697:
	.string	"context_t"
.LASF354:
	.string	"__MMX__ 1"
.LASF413:
	.string	"inline __attribute__((always_inline, used))"
.LASF472:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF685:
	.string	"p_brk"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF638:
	.string	"NORMAL_KEY_HIGH 0x39"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF640:
	.string	"F1_SCANCODE 0x3b"
.LASF518:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF606:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF483:
	.string	"cd_to_tty(bd) CONTAINER_OF((bd), tty_t, tty_cdev)"
.LASF560:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF713:
	.string	"regs"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF571:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF728:
	.string	"r_rdi"
.LASF466:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF452:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF512:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF630:
	.string	"KEYBOARD_IN_PORT 0x60"
.LASF582:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF494:
	.string	"PT_USER 0x004"
.LASF356:
	.string	"__SSE2__ 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF558:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF687:
	.string	"p_vmmap"
.LASF378:
	.string	"DEL 0x7F"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF385:
	.string	"SCROLL_UP 0x0e"
.LASF748:
	.string	"port"
.LASF570:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF484:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF399:
	.string	"F11 ((uint8_t)(F1 + 10))"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF577:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF633:
	.string	"RSHIFT 0x36"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF644:
	.string	"short int"
.LASF705:
	.string	"PROC_DEAD"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF441:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF717:
	.string	"r_r12"
.LASF716:
	.string	"r_r13"
.LASF715:
	.string	"r_r14"
.LASF714:
	.string	"r_r15"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF418:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF439:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF517:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF595:
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
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF448:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF449:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF520:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF462:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF432:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF618:
	.string	"INTR_KEYBOARD 0xe0"
.LASF470:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF747:
	.string	"keyboard_intr_handler"
.LASF628:
	.string	"CTRL_MASK 0x2"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF729:
	.string	"r_intr"
.LASF490:
	.string	"VMMAP_DIR_LOHI 1"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF703:
	.string	"core_t"
.LASF751:
	.string	"outb"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF665:
	.string	"tq_list"
.LASF723:
	.string	"r_r8"
.LASF460:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF668:
	.string	"vmmap"
.LASF707:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF522:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF722:
	.string	"r_r9"
.LASF563:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF686:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF677:
	.string	"p_list_link"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF609:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF392:
	.string	"F4 ((uint8_t)(F1 + 3))"
.LASF561:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF631:
	.string	"KEYBOARD_CMD_PORT 0x61"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF592:
	.string	"DBG_USER DBG_MODE(38)"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF482:
	.string	"TTY_MAJOR 2"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF611:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF421:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF649:
	.string	"uint32_t"
.LASF457:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF342:
	.string	"__amd64 1"
.LASF601:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF534:
	.string	"PROC_MAX_COUNT 65536"
.LASF391:
	.string	"F3 ((uint8_t)(F1 + 2))"
.LASF669:
	.string	"vmm_list"
.LASF616:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF531:
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
.LASF500:
	.string	"PT_GLOBAL 0x100"
.LASF647:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF408:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF406:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF564:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF475:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF587:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF459:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF762:
	.string	"equals"
.LASF384:
	.string	"ETX 0x03"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF529:
	.string	"MAX_VNODES 1024"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF623:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF764:
	.string	"drivers/keyboard.c"
.LASF567:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF673:
	.string	"p_name"
.LASF364:
	.string	"__linux 1"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF489:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF503:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF463:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF653:
	.string	"long unsigned int"
.LASF760:
	.string	"lessthan"
.LASF735:
	.string	"r_ss"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF431:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF680:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
