	.file	"ldisc.c"
	.text
.Ltext0:
	.file 1 "drivers/tty/ldisc.c"
	.type	bit_flip, @function
bit_flip:
.LFB0:
	.file 2 "include/util/bits.h"
	.loc 2 9 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 10 15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 11 17
	movq	-32(%rbp), %rax
	shrq	$5, %rax
	.loc 2 11 9
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 12 5
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 12 34
	movq	-32(%rbp), %rdx
	andl	$31, %edx
	.loc 2 12 26
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 2 12 10
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 13 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bit_flip, .-bit_flip
	.type	bit_check, @function
bit_check:
.LFB1:
	.loc 2 16 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 17 21
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 18 17
	movq	-32(%rbp), %rax
	shrq	$5, %rax
	.loc 2 18 9
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	.loc 2 19 13
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 19 31
	movq	-32(%rbp), %rdx
	andl	$31, %edx
	.loc 2 19 23
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 2 19 18
	andl	%edx, %eax
	.loc 2 20 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	bit_check, .-bit_check
	.type	intr_enabled, @function
intr_enabled:
.LFB2:
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
.LFE2:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB3:
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
.LFE3:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB4:
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
.LFE4:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB5:
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
.LFE5:
	.size	intr_wait, .-intr_wait
	.type	equals, @function
equals:
.LFB6:
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
.LFE6:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB7:
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
.LFE7:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB8:
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
.LFE8:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB9:
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
.LFE9:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB10:
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
.LFE10:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB11:
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
.LFE11:
	.size	greaterthaneq, .-greaterthaneq
	.globl	ldisc_init
	.type	ldisc_init, @function
ldisc_init:
.LFB12:
	.loc 1 18 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 23 23
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 24 23
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 25 25
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 26 23
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 1 27 5
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	movabsq	$sched_queue_init, %rax
	call	*%rax
.LVL0:
	.loc 1 28 17
	movq	-8(%rbp), %rax
	addq	$56, %rax
	.loc 1 28 5
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL1:
	.loc 1 30 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ldisc_init, .-ldisc_init
	.globl	ldisc_wait_read
	.type	ldisc_wait_read, @function
ldisc_wait_read:
.LFB13:
	.loc 1 44 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 46 10
	movq	$0, -8(%rbp)
	.loc 1 47 11
	jmp	.L23
.L25:
	.loc 1 50 15
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	movabsq	$sched_cancellable_sleep_on, %rax
	call	*%rax
.LVL2:
	movq	%rax, -8(%rbp)
.L23:
	.loc 1 47 61
	cmpq	$0, -8(%rbp)
	jne	.L24
	.loc 1 47 25 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 47 46 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 47 17 discriminator 1
	cmpq	%rax, %rdx
	jne	.L24
	.loc 1 48 18 discriminator 2
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 1 47 61 discriminator 2
	testb	%al, %al
	je	.L25
.L24:
	.loc 1 52 12
	movq	-8(%rbp), %rax
	.loc 1 55 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ldisc_wait_read, .-ldisc_wait_read
	.globl	ldisc_read
	.type	ldisc_read, @function
ldisc_read:
.LFB14:
	.loc 1 73 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 75 14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 75 35
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 75 8
	cmpq	%rax, %rdx
	jne	.L28
	.loc 1 75 59 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 1 75 50 discriminator 1
	testb	%al, %al
	jne	.L28
	.loc 1 77 16
	movl	$0, %eax
	jmp	.L29
.L28:
	.loc 1 79 12
	movq	$0, -8(%rbp)
	.loc 1 80 11
	jmp	.L30
.L33:
	.loc 1 82 48
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 82 17
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	.loc 1 82 12
	movq	-32(%rbp), %rcx
	addq	%rax, %rcx
	.loc 1 82 42
	movq	-24(%rbp), %rax
	movzbl	56(%rax,%rdx), %eax
	.loc 1 82 21
	movb	%al, (%rcx)
	.loc 1 83 29
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	andl	$127, %eax
	movq	%rax, %rdx
	.loc 1 83 27
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 84 16
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 84 12
	cmpb	$10, %al
	je	.L34
	.loc 1 88 21
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 88 17
	cmpb	$4, %al
	jne	.L30
	.loc 1 90 17
	subq	$1, -8(%rbp)
	.loc 1 91 13
	jmp	.L32
.L30:
	.loc 1 80 17
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L33
	jmp	.L32
.L34:
	.loc 1 86 13
	nop
.L32:
	.loc 1 94 23
	movq	-24(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 1 95 12
	movq	-8(%rbp), %rax
.L29:
	.loc 1 98 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ldisc_read, .-ldisc_read
	.section	.rodata
.LC0:
	.string	"\b"
.LC1:
	.string	"^C"
.LC2:
	.string	"\n"
	.text
	.globl	ldisc_key_pressed
	.type	ldisc_key_pressed, @function
ldisc_key_pressed:
.LFB15:
	.loc 1 147 1
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
	.loc 1 149 24
	movq	-24(%rbp), %rax
	subq	$144, %rax
	.loc 1 149 18
	movq	%rax, -8(%rbp)
	.loc 1 153 8
	cmpb	$8, -28(%rbp)
	jne	.L36
	.loc 1 156 18
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 156 41
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 156 12
	cmpq	%rax, %rdx
	je	.L46
	.loc 1 158 29
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	andl	$127, %eax
	movq	%rax, %rdx
	.loc 1 158 27
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 159 9
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movabsq	$.LC0, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vterminal_write, %rax
	call	*%rax
.LVL3:
	.loc 1 160 9
	jmp	.L35
.L36:
	.loc 1 162 13
	cmpb	$3, -28(%rbp)
	jne	.L39
	.loc 1 166 34
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 166 27
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 167 11
	movb	$10, -28(%rbp)
	.loc 1 168 9
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movabsq	$.LC1, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vterminal_echo_input, %rax
	call	*%rax
.LVL4:
.L39:
	.loc 1 174 10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	andl	$127, %eax
	movq	%rax, %rdx
	.loc 1 175 19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 174 8
	cmpq	%rax, %rdx
	jne	.L40
	.loc 1 175 32
	cmpb	$10, -28(%rbp)
	je	.L40
	.loc 1 176 19
	cmpb	$4, -28(%rbp)
	jne	.L47
.L40:
	.loc 1 177 14 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 1 176 33 discriminator 1
	testb	%al, %al
	jne	.L47
	.loc 1 180 30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 180 44
	movq	-24(%rbp), %rdx
	movzbl	-28(%rbp), %ecx
	movb	%cl, 56(%rdx,%rax)
	.loc 1 181 25
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	andl	$127, %eax
	movq	%rax, %rdx
	.loc 1 181 23
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 182 30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 182 51
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 182 43
	cmpq	%rax, %rdx
	sete	%al
	movl	%eax, %edx
	.loc 1 182 23
	movq	-24(%rbp), %rax
	movb	%dl, 24(%rax)
	.loc 1 184 8
	cmpb	$10, -28(%rbp)
	je	.L43
	.loc 1 184 17 discriminator 1
	cmpb	$4, -28(%rbp)
	jne	.L44
.L43:
	.loc 1 186 36
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 186 29
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 187 9
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$sched_wakeup_on, %rax
	call	*%rax
.LVL5:
	.loc 1 188 12
	cmpb	$10, -28(%rbp)
	jne	.L35
	.loc 1 190 13
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movabsq	$.LC2, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vterminal_write, %rax
	call	*%rax
.LVL6:
	.loc 1 188 12
	jmp	.L35
.L44:
	.loc 1 195 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$vterminal_key_pressed, %rax
	call	*%rax
.LVL7:
	jmp	.L35
.L46:
	.loc 1 157 13
	nop
	jmp	.L35
.L47:
	.loc 1 178 9
	nop
.L35:
	.loc 1 198 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ldisc_key_pressed, .-ldisc_key_pressed
	.globl	ldisc_get_current_line_raw
	.type	ldisc_get_current_line_raw, @function
ldisc_get_current_line_raw:
.LFB16:
	.loc 1 208 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 211 9
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	.loc 1 210 12
	movq	%rdx, %rax
	andl	$127, %eax
	movq	%rax, -8(%rbp)
	.loc 1 212 14
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 212 34
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 1 212 8
	cmpq	%rax, %rdx
	jnb	.L49
	.loc 1 215 21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 215 41
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 214 9
	subq	%rax, %rdx
	.loc 1 214 19
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rcx
	.loc 1 214 46
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 214 9
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL8:
	jmp	.L50
.L49:
	.loc 1 220 41
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 219 9
	movl	$128, %edx
	subq	%rax, %rdx
	.loc 1 219 19
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rcx
	.loc 1 219 46
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 219 9
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL9:
	.loc 1 221 39
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 221 32
	movl	$128, %edx
	subq	%rax, %rdx
	.loc 1 221 11
	addq	%rdx, -32(%rbp)
	.loc 1 222 9
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 222 24
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rcx
	.loc 1 222 9
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcpy, %rax
	call	*%rax
.LVL10:
.L50:
	.loc 1 224 12
	movq	-8(%rbp), %rax
	.loc 1 227 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ldisc_get_current_line_raw, .-ldisc_get_current_line_raw
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/util/list.h"
	.file 7 "include/proc/sched.h"
	.file 8 "include/proc/kmutex.h"
	.file 9 "include/proc/kthread.h"
	.file 10 "include/drivers/tty/ldisc.h"
	.file 11 "include/drivers/chardev.h"
	.file 12 "include/drivers/tty/vterminal.h"
	.file 13 "include/drivers/tty/tty.h"
	.file 14 "include/vm/vmmap.h"
	.file 15 "include/proc/proc.h"
	.file 16 "include/mm/pagetable.h"
	.file 17 "include/proc/context.h"
	.file 18 "include/util/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf58
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF947
	.byte	0xc
	.long	.LASF948
	.long	.LASF949
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF766
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF767
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF768
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF769
	.uleb128 0x3
	.long	.LASF770
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x59
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF771
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x71
	.uleb128 0x5
	.long	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF772
	.uleb128 0x3
	.long	.LASF773
	.byte	0x5
	.byte	0x10
	.byte	0x15
	.long	0x84
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF774
	.uleb128 0x3
	.long	.LASF775
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0x97
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF776
	.uleb128 0x3
	.long	.LASF777
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0x97
	.uleb128 0x3
	.long	.LASF778
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x8b
	.uleb128 0x3
	.long	.LASF779
	.byte	0x5
	.byte	0x15
	.byte	0x11
	.long	0x78
	.uleb128 0x3
	.long	.LASF780
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x4d
	.uleb128 0x3
	.long	.LASF781
	.byte	0x5
	.byte	0x1c
	.byte	0x12
	.long	0x60
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF782
	.uleb128 0x5
	.long	0xda
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.long	.LASF787
	.byte	0x10
	.byte	0x6
	.byte	0x5e
	.byte	0x10
	.long	0x110
	.uleb128 0x8
	.long	.LASF783
	.byte	0x6
	.byte	0x60
	.byte	0x12
	.long	0x110
	.byte	0
	.uleb128 0x8
	.long	.LASF784
	.byte	0x6
	.byte	0x61
	.byte	0x12
	.long	0x110
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xe8
	.uleb128 0x3
	.long	.LASF785
	.byte	0x6
	.byte	0x62
	.byte	0x3
	.long	0xe8
	.uleb128 0x3
	.long	.LASF786
	.byte	0x6
	.byte	0x62
	.byte	0xb
	.long	0xe8
	.uleb128 0x7
	.long	.LASF788
	.byte	0x18
	.byte	0x7
	.byte	0xf
	.byte	0x10
	.long	0x156
	.uleb128 0x8
	.long	.LASF789
	.byte	0x7
	.byte	0x11
	.byte	0xc
	.long	0x116
	.byte	0
	.uleb128 0x8
	.long	.LASF790
	.byte	0x7
	.byte	0x12
	.byte	0xc
	.long	0xaa
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF791
	.byte	0x7
	.byte	0x13
	.byte	0x3
	.long	0x12e
	.uleb128 0x7
	.long	.LASF792
	.byte	0x30
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x197
	.uleb128 0x8
	.long	.LASF793
	.byte	0x8
	.byte	0xc
	.byte	0xf
	.long	0x156
	.byte	0
	.uleb128 0x8
	.long	.LASF794
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.long	0x241
	.byte	0x18
	.uleb128 0x8
	.long	.LASF795
	.byte	0x8
	.byte	0xe
	.byte	0x11
	.long	0x122
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF796
	.byte	0xa0
	.byte	0x9
	.byte	0x21
	.byte	0x10
	.long	0x241
	.uleb128 0x8
	.long	.LASF797
	.byte	0x9
	.byte	0x23
	.byte	0xf
	.long	0x8d2
	.byte	0
	.uleb128 0x8
	.long	.LASF798
	.byte	0x9
	.byte	0x24
	.byte	0xb
	.long	0x923
	.byte	0x30
	.uleb128 0x8
	.long	.LASF799
	.byte	0x9
	.byte	0x25
	.byte	0xb
	.long	0xe6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF800
	.byte	0x9
	.byte	0x26
	.byte	0xa
	.long	0x84
	.byte	0x40
	.uleb128 0x8
	.long	.LASF801
	.byte	0x9
	.byte	0x27
	.byte	0x12
	.long	0x82c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF802
	.byte	0x9
	.byte	0x29
	.byte	0xa
	.long	0x84
	.byte	0x50
	.uleb128 0x8
	.long	.LASF803
	.byte	0x9
	.byte	0x2a
	.byte	0x10
	.long	0x8de
	.byte	0x58
	.uleb128 0x8
	.long	.LASF804
	.byte	0x9
	.byte	0x2b
	.byte	0x15
	.long	0x917
	.byte	0x60
	.uleb128 0x8
	.long	.LASF805
	.byte	0x9
	.byte	0x2d
	.byte	0x11
	.long	0x122
	.byte	0x68
	.uleb128 0x8
	.long	.LASF806
	.byte	0x9
	.byte	0x2f
	.byte	0x9
	.long	0x122
	.byte	0x78
	.uleb128 0x8
	.long	.LASF807
	.byte	0x9
	.byte	0x31
	.byte	0xc
	.long	0x116
	.byte	0x88
	.uleb128 0x8
	.long	.LASF808
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.long	0x8b
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x197
	.uleb128 0x3
	.long	.LASF809
	.byte	0x8
	.byte	0xf
	.byte	0x3
	.long	0x162
	.uleb128 0x7
	.long	.LASF810
	.byte	0xb8
	.byte	0xa
	.byte	0x2f
	.byte	0x10
	.long	0x2af
	.uleb128 0x8
	.long	.LASF811
	.byte	0xa
	.byte	0x31
	.byte	0xc
	.long	0xaa
	.byte	0
	.uleb128 0x8
	.long	.LASF812
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0xaa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF813
	.byte	0xa
	.byte	0x33
	.byte	0xc
	.long	0xaa
	.byte	0x10
	.uleb128 0x8
	.long	.LASF814
	.byte	0xa
	.byte	0x34
	.byte	0xa
	.long	0xda
	.byte	0x18
	.uleb128 0x8
	.long	.LASF815
	.byte	0xa
	.byte	0x38
	.byte	0xf
	.long	0x156
	.byte	0x20
	.uleb128 0x8
	.long	.LASF816
	.byte	0xa
	.byte	0x39
	.byte	0xa
	.long	0x2af
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.long	0xda
	.long	0x2bf
	.uleb128 0xb
	.long	0x97
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.long	.LASF817
	.byte	0xa
	.byte	0x3a
	.byte	0x3
	.long	0x253
	.uleb128 0x7
	.long	.LASF818
	.byte	0x20
	.byte	0xb
	.byte	0xc
	.byte	0x10
	.long	0x300
	.uleb128 0x8
	.long	.LASF819
	.byte	0xb
	.byte	0xe
	.byte	0xd
	.long	0xce
	.byte	0
	.uleb128 0x8
	.long	.LASF820
	.byte	0xb
	.byte	0xf
	.byte	0x19
	.long	0x34f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF821
	.byte	0xb
	.byte	0x10
	.byte	0x11
	.long	0x122
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF822
	.byte	0x28
	.byte	0xb
	.byte	0x13
	.byte	0x10
	.long	0x34f
	.uleb128 0x8
	.long	.LASF823
	.byte	0xb
	.byte	0x15
	.byte	0xf
	.long	0x386
	.byte	0
	.uleb128 0x8
	.long	.LASF824
	.byte	0xb
	.byte	0x17
	.byte	0xf
	.long	0x3b2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF825
	.byte	0xb
	.byte	0x19
	.byte	0xc
	.long	0x3eb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF826
	.byte	0xb
	.byte	0x1b
	.byte	0xc
	.long	0x412
	.byte	0x18
	.uleb128 0x8
	.long	.LASF827
	.byte	0xb
	.byte	0x1d
	.byte	0xc
	.long	0x412
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x300
	.uleb128 0x3
	.long	.LASF828
	.byte	0xb
	.byte	0x11
	.byte	0x3
	.long	0x2cb
	.uleb128 0xc
	.byte	0x1
	.long	0xb6
	.long	0x380
	.uleb128 0xd
	.long	0x380
	.uleb128 0xd
	.long	0xaa
	.uleb128 0xd
	.long	0xe6
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x355
	.uleb128 0x9
	.byte	0x8
	.long	0x361
	.uleb128 0xc
	.byte	0x1
	.long	0xb6
	.long	0x3ab
	.uleb128 0xd
	.long	0x380
	.uleb128 0xd
	.long	0xaa
	.uleb128 0xd
	.long	0x3ab
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x3b1
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x8
	.long	0x38c
	.uleb128 0xc
	.byte	0x1
	.long	0x84
	.long	0x3cd
	.uleb128 0xd
	.long	0x3cd
	.uleb128 0xd
	.long	0x3d9
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x3d3
	.uleb128 0xf
	.long	.LASF829
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3df
	.uleb128 0x9
	.byte	0x8
	.long	0x3e5
	.uleb128 0xf
	.long	.LASF830
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3b8
	.uleb128 0xc
	.byte	0x1
	.long	0x84
	.long	0x406
	.uleb128 0xd
	.long	0x3cd
	.uleb128 0xd
	.long	0x406
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x40c
	.uleb128 0xf
	.long	.LASF831
	.byte	0x1
	.uleb128 0x9
	.byte	0x8
	.long	0x3f1
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0xc
	.byte	0x99
	.byte	0x1
	.long	0x457
	.uleb128 0x11
	.long	.LASF832
	.byte	0
	.uleb128 0x11
	.long	.LASF833
	.byte	0x1
	.uleb128 0x11
	.long	.LASF834
	.byte	0x2
	.uleb128 0x11
	.long	.LASF835
	.byte	0x3
	.uleb128 0x11
	.long	.LASF836
	.byte	0x4
	.uleb128 0x11
	.long	.LASF837
	.byte	0x5
	.uleb128 0x11
	.long	.LASF838
	.byte	0x6
	.uleb128 0x11
	.long	.LASF839
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF840
	.byte	0xc
	.byte	0xa2
	.byte	0x3
	.long	0x418
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0xc
	.byte	0xa5
	.byte	0x1
	.long	0x48a
	.uleb128 0x11
	.long	.LASF841
	.byte	0
	.uleb128 0x11
	.long	.LASF842
	.byte	0x1
	.uleb128 0x11
	.long	.LASF843
	.byte	0x2
	.uleb128 0x11
	.long	.LASF844
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF845
	.byte	0xc
	.byte	0xaa
	.byte	0x3
	.long	0x463
	.uleb128 0x12
	.byte	0x8
	.byte	0xc
	.byte	0xac
	.byte	0x9
	.long	0x4ba
	.uleb128 0x8
	.long	.LASF846
	.byte	0xc
	.byte	0xae
	.byte	0x9
	.long	0x59
	.byte	0
	.uleb128 0x8
	.long	.LASF847
	.byte	0xc
	.byte	0xaf
	.byte	0x9
	.long	0x59
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF848
	.byte	0xc
	.byte	0xb0
	.byte	0x3
	.long	0x496
	.uleb128 0x12
	.byte	0x48
	.byte	0xc
	.byte	0xb2
	.byte	0x9
	.long	0x4f7
	.uleb128 0x8
	.long	.LASF849
	.byte	0xc
	.byte	0xb4
	.byte	0x1b
	.long	0x48a
	.byte	0
	.uleb128 0x8
	.long	.LASF850
	.byte	0xc
	.byte	0xb5
	.byte	0x12
	.long	0x4f7
	.byte	0x4
	.uleb128 0x8
	.long	.LASF851
	.byte	0xc
	.byte	0xb6
	.byte	0x9
	.long	0x59
	.byte	0x44
	.byte	0
	.uleb128 0xa
	.long	0x4ba
	.long	0x507
	.uleb128 0xb
	.long	0x97
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF852
	.byte	0xc
	.byte	0xb7
	.byte	0x3
	.long	0x4c6
	.uleb128 0x12
	.byte	0xc
	.byte	0xc
	.byte	0xb9
	.byte	0x9
	.long	0x542
	.uleb128 0x8
	.long	.LASF853
	.byte	0xc
	.byte	0xbb
	.byte	0x9
	.long	0x59
	.byte	0
	.uleb128 0x13
	.string	"fg"
	.byte	0xc
	.byte	0xbc
	.byte	0xf
	.long	0x457
	.byte	0x4
	.uleb128 0x13
	.string	"bg"
	.byte	0xc
	.byte	0xbd
	.byte	0xf
	.long	0x457
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF854
	.byte	0xc
	.byte	0xbe
	.byte	0x3
	.long	0x513
	.uleb128 0x12
	.byte	0x10
	.byte	0xc
	.byte	0xc0
	.byte	0x9
	.long	0x570
	.uleb128 0x13
	.string	"c"
	.byte	0xc
	.byte	0xc2
	.byte	0xa
	.long	0xda
	.byte	0
	.uleb128 0x8
	.long	.LASF855
	.byte	0xc
	.byte	0xc3
	.byte	0xe
	.long	0x542
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF856
	.byte	0xc
	.byte	0xc4
	.byte	0x3
	.long	0x54e
	.uleb128 0x12
	.byte	0x8
	.byte	0xc
	.byte	0xc6
	.byte	0x9
	.long	0x59c
	.uleb128 0x13
	.string	"x"
	.byte	0xc
	.byte	0xc8
	.byte	0x9
	.long	0x59
	.byte	0
	.uleb128 0x13
	.string	"y"
	.byte	0xc
	.byte	0xc9
	.byte	0x9
	.long	0x59
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF857
	.byte	0xc
	.byte	0xca
	.byte	0x3
	.long	0x57c
	.uleb128 0x3
	.long	.LASF858
	.byte	0xc
	.byte	0xcc
	.byte	0x10
	.long	0x5b4
	.uleb128 0x9
	.byte	0x8
	.long	0x5ba
	.uleb128 0x14
	.byte	0x1
	.long	0x5d5
	.uleb128 0xd
	.long	0x5d5
	.uleb128 0xd
	.long	0x66b
	.uleb128 0xd
	.long	0x59
	.uleb128 0xd
	.long	0x59
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x5db
	.uleb128 0x7
	.long	.LASF859
	.byte	0x90
	.byte	0xc
	.byte	0xd0
	.byte	0x10
	.long	0x66b
	.uleb128 0x8
	.long	.LASF860
	.byte	0xc
	.byte	0xd2
	.byte	0x9
	.long	0x59
	.byte	0
	.uleb128 0x8
	.long	.LASF861
	.byte	0xc
	.byte	0xd3
	.byte	0x9
	.long	0x59
	.byte	0x4
	.uleb128 0x8
	.long	.LASF855
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x542
	.byte	0x8
	.uleb128 0x8
	.long	.LASF862
	.byte	0xc
	.byte	0xd6
	.byte	0x15
	.long	0x507
	.byte	0x14
	.uleb128 0x8
	.long	.LASF863
	.byte	0xc
	.byte	0xd8
	.byte	0xf
	.long	0x66b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF864
	.byte	0xc
	.byte	0xd9
	.byte	0xa
	.long	0x69a
	.byte	0x68
	.uleb128 0x8
	.long	.LASF865
	.byte	0xc
	.byte	0xda
	.byte	0x9
	.long	0x59
	.byte	0x70
	.uleb128 0x8
	.long	.LASF866
	.byte	0xc
	.byte	0xdb
	.byte	0x10
	.long	0x59c
	.byte	0x74
	.uleb128 0x8
	.long	.LASF867
	.byte	0xc
	.byte	0xdd
	.byte	0x19
	.long	0x5a8
	.byte	0x80
	.uleb128 0x8
	.long	.LASF868
	.byte	0xc
	.byte	0xde
	.byte	0x1a
	.long	0x671
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x570
	.uleb128 0x3
	.long	.LASF869
	.byte	0xc
	.byte	0xce
	.byte	0x10
	.long	0x67d
	.uleb128 0x9
	.byte	0x8
	.long	0x683
	.uleb128 0x14
	.byte	0x1
	.long	0x694
	.uleb128 0xd
	.long	0x5d5
	.uleb128 0xd
	.long	0x694
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x59c
	.uleb128 0x9
	.byte	0x8
	.long	0x59
	.uleb128 0x3
	.long	.LASF870
	.byte	0xc
	.byte	0xdf
	.byte	0x3
	.long	0x5db
	.uleb128 0x3
	.long	.LASF871
	.byte	0xc
	.byte	0xe1
	.byte	0x15
	.long	0x6a0
	.uleb128 0x15
	.string	"tty"
	.value	0x1c8
	.byte	0xd
	.byte	0xb
	.byte	0x10
	.long	0x70b
	.uleb128 0x8
	.long	.LASF872
	.byte	0xd
	.byte	0xd
	.byte	0x11
	.long	0x6ac
	.byte	0
	.uleb128 0x8
	.long	.LASF873
	.byte	0xd
	.byte	0xe
	.byte	0xd
	.long	0x2bf
	.byte	0x90
	.uleb128 0x16
	.long	.LASF874
	.byte	0xd
	.byte	0xf
	.byte	0xf
	.long	0x355
	.value	0x148
	.uleb128 0x16
	.long	.LASF875
	.byte	0xd
	.byte	0x10
	.byte	0xe
	.long	0x247
	.value	0x168
	.uleb128 0x16
	.long	.LASF876
	.byte	0xd
	.byte	0x11
	.byte	0xe
	.long	0x247
	.value	0x198
	.byte	0
	.uleb128 0x3
	.long	.LASF877
	.byte	0xd
	.byte	0x12
	.byte	0x3
	.long	0x6b8
	.uleb128 0x7
	.long	.LASF878
	.byte	0x18
	.byte	0xe
	.byte	0xe
	.byte	0x10
	.long	0x73f
	.uleb128 0x8
	.long	.LASF879
	.byte	0xe
	.byte	0x10
	.byte	0xc
	.long	0x116
	.byte	0
	.uleb128 0x8
	.long	.LASF880
	.byte	0xe
	.byte	0x11
	.byte	0x12
	.long	0x82c
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	.LASF881
	.value	0x2a0
	.byte	0xf
	.byte	0x1b
	.byte	0x10
	.long	0x82c
	.uleb128 0x8
	.long	.LASF882
	.byte	0xf
	.byte	0x1d
	.byte	0xb
	.long	0xc2
	.byte	0
	.uleb128 0x8
	.long	.LASF883
	.byte	0xf
	.byte	0x1e
	.byte	0xa
	.long	0x950
	.byte	0x4
	.uleb128 0x16
	.long	.LASF884
	.byte	0xf
	.byte	0x20
	.byte	0xc
	.long	0x116
	.value	0x108
	.uleb128 0x16
	.long	.LASF885
	.byte	0xf
	.byte	0x21
	.byte	0xc
	.long	0x116
	.value	0x118
	.uleb128 0x16
	.long	.LASF886
	.byte	0xf
	.byte	0x22
	.byte	0x12
	.long	0x82c
	.value	0x128
	.uleb128 0x16
	.long	.LASF887
	.byte	0xf
	.byte	0x24
	.byte	0x11
	.long	0x122
	.value	0x130
	.uleb128 0x16
	.long	.LASF888
	.byte	0xf
	.byte	0x25
	.byte	0x11
	.long	0x122
	.value	0x140
	.uleb128 0x16
	.long	.LASF889
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x84
	.value	0x150
	.uleb128 0x16
	.long	.LASF890
	.byte	0xf
	.byte	0x28
	.byte	0x12
	.long	0x944
	.value	0x158
	.uleb128 0x16
	.long	.LASF891
	.byte	0xf
	.byte	0x2a
	.byte	0xd
	.long	0x8cc
	.value	0x160
	.uleb128 0x16
	.long	.LASF892
	.byte	0xf
	.byte	0x31
	.byte	0xf
	.long	0x156
	.value	0x168
	.uleb128 0x16
	.long	.LASF893
	.byte	0xf
	.byte	0x34
	.byte	0x12
	.long	0x960
	.value	0x180
	.uleb128 0x16
	.long	.LASF894
	.byte	0xf
	.byte	0x35
	.byte	0x13
	.long	0x3cd
	.value	0x280
	.uleb128 0x16
	.long	.LASF895
	.byte	0xf
	.byte	0x45
	.byte	0xb
	.long	0xe6
	.value	0x288
	.uleb128 0x16
	.long	.LASF896
	.byte	0xf
	.byte	0x46
	.byte	0xb
	.long	0xe6
	.value	0x290
	.uleb128 0x16
	.long	.LASF897
	.byte	0xf
	.byte	0x47
	.byte	0x13
	.long	0x832
	.value	0x298
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x73f
	.uleb128 0x9
	.byte	0x8
	.long	0x717
	.uleb128 0x15
	.string	"pt"
	.value	0x1000
	.byte	0x10
	.byte	0x18
	.byte	0x10
	.long	0x853
	.uleb128 0x8
	.long	.LASF898
	.byte	0x10
	.byte	0x1a
	.byte	0xf
	.long	0x853
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x9e
	.long	0x864
	.uleb128 0x18
	.long	0x97
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF899
	.byte	0x10
	.byte	0x1b
	.byte	0x16
	.long	0x838
	.uleb128 0x7
	.long	.LASF900
	.byte	0x30
	.byte	0x11
	.byte	0xd
	.byte	0x10
	.long	0x8cc
	.uleb128 0x8
	.long	.LASF901
	.byte	0x11
	.byte	0xf
	.byte	0xf
	.long	0x9e
	.byte	0
	.uleb128 0x8
	.long	.LASF902
	.byte	0x11
	.byte	0x10
	.byte	0xf
	.long	0x9e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF903
	.byte	0x11
	.byte	0x11
	.byte	0xf
	.long	0x9e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF904
	.byte	0x11
	.byte	0x14
	.byte	0xa
	.long	0x8cc
	.byte	0x18
	.uleb128 0x8
	.long	.LASF905
	.byte	0x11
	.byte	0x18
	.byte	0xf
	.long	0x9e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF906
	.byte	0x11
	.byte	0x19
	.byte	0xc
	.long	0xaa
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x864
	.uleb128 0x3
	.long	.LASF907
	.byte	0x11
	.byte	0x1a
	.byte	0x3
	.long	0x870
	.uleb128 0x9
	.byte	0x8
	.long	0x156
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.long	0x917
	.uleb128 0x11
	.long	.LASF908
	.byte	0
	.uleb128 0x11
	.long	.LASF909
	.byte	0x1
	.uleb128 0x11
	.long	.LASF910
	.byte	0x2
	.uleb128 0x11
	.long	.LASF911
	.byte	0x3
	.uleb128 0x11
	.long	.LASF912
	.byte	0x4
	.uleb128 0x11
	.long	.LASF913
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF914
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.long	0x8e4
	.uleb128 0x9
	.byte	0x8
	.long	0xda
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x71
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.long	0x944
	.uleb128 0x11
	.long	.LASF915
	.byte	0
	.uleb128 0x11
	.long	.LASF916
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF917
	.byte	0xf
	.byte	0x18
	.byte	0x3
	.long	0x929
	.uleb128 0xa
	.long	0xda
	.long	0x960
	.uleb128 0xb
	.long	0x97
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.long	0x970
	.long	0x970
	.uleb128 0xb
	.long	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x976
	.uleb128 0xf
	.long	.LASF918
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF921
	.byte	0x12
	.byte	0x40
	.byte	0x7
	.byte	0x1
	.long	0xe6
	.byte	0x1
	.long	0x99f
	.uleb128 0xd
	.long	0xe6
	.uleb128 0xd
	.long	0x3ab
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF919
	.byte	0xc
	.byte	0xf3
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x9b4
	.uleb128 0xd
	.long	0x9b4
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x6ac
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF920
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x9d4
	.uleb128 0xd
	.long	0x8de
	.uleb128 0xd
	.long	0x9d4
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x241
	.uleb128 0x19
	.byte	0x1
	.long	.LASF922
	.byte	0xc
	.byte	0xf1
	.byte	0x8
	.byte	0x1
	.long	0xaa
	.byte	0x1
	.long	0x9fd
	.uleb128 0xd
	.long	0x9b4
	.uleb128 0xd
	.long	0x9fd
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xe1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF923
	.byte	0xc
	.byte	0xef
	.byte	0x8
	.byte	0x1
	.long	0xaa
	.byte	0x1
	.long	0xa26
	.uleb128 0xd
	.long	0x9b4
	.uleb128 0xd
	.long	0x9fd
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF924
	.byte	0x7
	.byte	0x50
	.byte	0x6
	.byte	0x1
	.long	0x84
	.byte	0x1
	.long	0xa3f
	.uleb128 0xd
	.long	0x8de
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF925
	.byte	0x12
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.long	0xe6
	.byte	0x1
	.long	0xa62
	.uleb128 0xd
	.long	0xe6
	.uleb128 0xd
	.long	0x59
	.uleb128 0xd
	.long	0xaa
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF926
	.byte	0x7
	.byte	0x6e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0xa77
	.uleb128 0xd
	.long	0x8de
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF927
	.byte	0x1
	.byte	0xcf
	.byte	0x8
	.byte	0x1
	.long	0xaa
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaef
	.uleb128 0x1c
	.long	.LASF810
	.byte	0x1
	.byte	0xcf
	.byte	0x2c
	.long	0xaef
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0xcf
	.byte	0x39
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xd2
	.byte	0xc
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.quad	.LVL8
	.long	0x97c
	.uleb128 0x1f
	.quad	.LVL9
	.long	0x97c
	.uleb128 0x1f
	.quad	.LVL10
	.long	0x97c
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x2bf
	.uleb128 0x20
	.byte	0x1
	.long	.LASF931
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb82
	.uleb128 0x1c
	.long	.LASF810
	.byte	0x1
	.byte	0x92
	.byte	0x21
	.long	0xaef
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x92
	.byte	0x2d
	.long	0xda
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"vt"
	.byte	0x1
	.byte	0x95
	.byte	0x12
	.long	0x9b4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.quad	.LVL3
	.long	0xa03
	.uleb128 0x1f
	.quad	.LVL4
	.long	0x9da
	.uleb128 0x1f
	.quad	.LVL5
	.long	0x9ba
	.uleb128 0x1f
	.quad	.LVL6
	.long	0xa03
	.uleb128 0x1f
	.quad	.LVL7
	.long	0x99f
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF928
	.byte	0x1
	.byte	0x48
	.byte	0x8
	.byte	0x1
	.long	0xaa
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbe4
	.uleb128 0x1c
	.long	.LASF810
	.byte	0x1
	.byte	0x48
	.byte	0x1c
	.long	0xaef
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x48
	.byte	0x29
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF929
	.byte	0x1
	.byte	0x48
	.byte	0x35
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF823
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF930
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.byte	0x1
	.long	0x84
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc35
	.uleb128 0x1c
	.long	.LASF810
	.byte	0x1
	.byte	0x2b
	.byte	0x1f
	.long	0xaef
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x2e
	.byte	0xa
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.quad	.LVL2
	.long	0xa26
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF932
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc8a
	.uleb128 0x1c
	.long	.LASF810
	.byte	0x1
	.byte	0x11
	.byte	0x1a
	.long	0xaef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF950
	.long	0xc9a
	.byte	0x1
	.uleb128 0x1f
	.quad	.LVL0
	.long	0xa62
	.uleb128 0x1f
	.quad	.LVL1
	.long	0xa3f
	.byte	0
	.uleb128 0xa
	.long	0xe1
	.long	0xc9a
	.uleb128 0xb
	.long	0x97
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0xc8a
	.uleb128 0x23
	.long	.LASF933
	.byte	0x4
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xce1
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x124
	.byte	0x20
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x124
	.byte	0x28
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF934
	.byte	0x4
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd23
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x122
	.byte	0x1d
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x122
	.byte	0x25
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF935
	.byte	0x4
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd65
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x120
	.byte	0x1e
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x120
	.byte	0x26
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF936
	.byte	0x4
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xda7
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x11e
	.byte	0x1b
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x11e
	.byte	0x23
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF937
	.byte	0x4
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xde9
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x11c
	.byte	0x1c
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x11c
	.byte	0x24
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF938
	.byte	0x4
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x84
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe2b
	.uleb128 0x24
	.string	"l"
	.byte	0x4
	.value	0x117
	.byte	0x19
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"r"
	.byte	0x4
	.value	0x117
	.byte	0x21
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF939
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.long	.LASF940
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.long	.LASF941
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.long	.LASF945
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x8b
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xeaf
	.uleb128 0x21
	.long	.LASF942
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x8b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF943
	.byte	0x2
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.long	0x59
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf01
	.uleb128 0x1c
	.long	.LASF944
	.byte	0x2
	.byte	0xf
	.byte	0x29
	.long	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"bit"
	.byte	0x2
	.byte	0xf
	.byte	0x39
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"map"
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.long	0xf01
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x6c
	.uleb128 0x28
	.long	.LASF946
	.byte	0x2
	.byte	0x8
	.byte	0x14
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf55
	.uleb128 0x1c
	.long	.LASF944
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.long	0xe6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"bit"
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"map"
	.byte	0x2
	.byte	0xa
	.byte	0xf
	.long	0xf55
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x60
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x7
	.file 19 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x8
	.long	.LASF377
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.file 20 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF397
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF398
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF399
	.byte	0x4
	.file 21 "include/drivers/keyboard.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.file 22 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xc
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
	.file 25 "include/errno.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4
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
	.long	.Ldebug_macro14
	.byte	0x4
	.file 29 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1d
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
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF656
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.file 30 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF674
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.file 31 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0x10
	.long	.LASF688
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x12
	.file 32 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x9
	.long	.LASF765
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
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF379
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF380
	.byte	0x5
	.uleb128 0x21
	.long	.LASF381
	.byte	0x5
	.uleb128 0x26
	.long	.LASF382
	.byte	0x5
	.uleb128 0x29
	.long	.LASF383
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF384
	.byte	0x5
	.uleb128 0x37
	.long	.LASF385
	.byte	0x5
	.uleb128 0x38
	.long	.LASF386
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF387
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF388
	.byte	0x5
	.uleb128 0x59
	.long	.LASF389
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF390
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF391
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF392
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF393
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF394
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF395
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF396
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.keyboard.h.5.54a55c0e186ae89b578b4d25e56d476a,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF400
	.byte	0x5
	.uleb128 0x6
	.long	.LASF401
	.byte	0x5
	.uleb128 0x7
	.long	.LASF402
	.byte	0x5
	.uleb128 0x8
	.long	.LASF403
	.byte	0x5
	.uleb128 0x9
	.long	.LASF404
	.byte	0x5
	.uleb128 0xa
	.long	.LASF405
	.byte	0x5
	.uleb128 0xd
	.long	.LASF406
	.byte	0x5
	.uleb128 0x10
	.long	.LASF407
	.byte	0x5
	.uleb128 0x13
	.long	.LASF408
	.byte	0x5
	.uleb128 0x14
	.long	.LASF409
	.byte	0x5
	.uleb128 0x15
	.long	.LASF410
	.byte	0x5
	.uleb128 0x16
	.long	.LASF411
	.byte	0x5
	.uleb128 0x19
	.long	.LASF412
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF413
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF418
	.byte	0x5
	.uleb128 0x20
	.long	.LASF419
	.byte	0x5
	.uleb128 0x21
	.long	.LASF420
	.byte	0x5
	.uleb128 0x22
	.long	.LASF421
	.byte	0x5
	.uleb128 0x23
	.long	.LASF422
	.byte	0x5
	.uleb128 0x24
	.long	.LASF423
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
	.section	.debug_macro,"G",@progbits,wm4.bits.h.6.c0faa20d7358321fbf98e0348aa1f91c,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF616
	.byte	0x5
	.uleb128 0x16
	.long	.LASF617
	.byte	0x5
	.uleb128 0x18
	.long	.LASF618
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF619
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF620
	.byte	0x5
	.uleb128 0x5
	.long	.LASF621
	.byte	0x5
	.uleb128 0x6
	.long	.LASF622
	.byte	0x5
	.uleb128 0x7
	.long	.LASF623
	.byte	0x5
	.uleb128 0xa
	.long	.LASF624
	.byte	0x5
	.uleb128 0xc
	.long	.LASF625
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF626
	.byte	0x5
	.uleb128 0x8
	.long	.LASF627
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF628
	.byte	0x5
	.uleb128 0x7
	.long	.LASF629
	.byte	0x5
	.uleb128 0x8
	.long	.LASF630
	.byte	0x5
	.uleb128 0x9
	.long	.LASF631
	.byte	0x5
	.uleb128 0xa
	.long	.LASF632
	.byte	0x5
	.uleb128 0xb
	.long	.LASF633
	.byte	0x5
	.uleb128 0xc
	.long	.LASF634
	.byte	0x5
	.uleb128 0xd
	.long	.LASF635
	.byte	0x5
	.uleb128 0xe
	.long	.LASF636
	.byte	0x5
	.uleb128 0x10
	.long	.LASF637
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF638
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF639
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF640
	.byte	0x5
	.uleb128 0x20
	.long	.LASF641
	.byte	0x5
	.uleb128 0x21
	.long	.LASF642
	.byte	0x5
	.uleb128 0x23
	.long	.LASF637
	.byte	0x5
	.uleb128 0x24
	.long	.LASF643
	.byte	0x5
	.uleb128 0x25
	.long	.LASF644
	.byte	0x5
	.uleb128 0x26
	.long	.LASF645
	.byte	0x5
	.uleb128 0x28
	.long	.LASF646
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF647
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF648
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF649
	.byte	0x5
	.uleb128 0x30
	.long	.LASF650
	.byte	0x5
	.uleb128 0x31
	.long	.LASF651
	.byte	0x5
	.uleb128 0x32
	.long	.LASF652
	.byte	0x5
	.uleb128 0x33
	.long	.LASF653
	.byte	0x5
	.uleb128 0x35
	.long	.LASF654
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF655
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF657
	.byte	0x5
	.uleb128 0xf
	.long	.LASF658
	.byte	0x5
	.uleb128 0x10
	.long	.LASF659
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF660
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF661
	.byte	0x5
	.uleb128 0x23
	.long	.LASF662
	.byte	0x5
	.uleb128 0x24
	.long	.LASF663
	.byte	0x5
	.uleb128 0x25
	.long	.LASF664
	.byte	0x5
	.uleb128 0x26
	.long	.LASF665
	.byte	0x5
	.uleb128 0x27
	.long	.LASF666
	.byte	0x5
	.uleb128 0x28
	.long	.LASF667
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF668
	.byte	0x5
	.uleb128 0x31
	.long	.LASF669
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF670
	.byte	0x5
	.uleb128 0x11
	.long	.LASF671
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF672
	.byte	0x5
	.uleb128 0xab
	.long	.LASF673
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF675
	.byte	0x5
	.uleb128 0x9
	.long	.LASF676
	.byte	0x5
	.uleb128 0xa
	.long	.LASF677
	.byte	0x5
	.uleb128 0xb
	.long	.LASF678
	.byte	0x5
	.uleb128 0xd
	.long	.LASF679
	.byte	0x5
	.uleb128 0xe
	.long	.LASF680
	.byte	0x5
	.uleb128 0x10
	.long	.LASF681
	.byte	0x5
	.uleb128 0x11
	.long	.LASF682
	.byte	0x5
	.uleb128 0x12
	.long	.LASF683
	.byte	0x5
	.uleb128 0x13
	.long	.LASF684
	.byte	0x5
	.uleb128 0x19
	.long	.LASF685
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF686
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF687
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF689
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF690
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF691
	.byte	0x5
	.uleb128 0x20
	.long	.LASF692
	.byte	0x5
	.uleb128 0x21
	.long	.LASF693
	.byte	0x5
	.uleb128 0x22
	.long	.LASF694
	.byte	0x5
	.uleb128 0x23
	.long	.LASF695
	.byte	0x5
	.uleb128 0x24
	.long	.LASF696
	.byte	0x5
	.uleb128 0x25
	.long	.LASF697
	.byte	0x5
	.uleb128 0x27
	.long	.LASF698
	.byte	0x5
	.uleb128 0x28
	.long	.LASF699
	.byte	0x5
	.uleb128 0x29
	.long	.LASF700
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF701
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF702
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF703
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF704
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF705
	.byte	0x5
	.uleb128 0x34
	.long	.LASF706
	.byte	0x5
	.uleb128 0x35
	.long	.LASF707
	.byte	0x5
	.uleb128 0x36
	.long	.LASF708
	.byte	0x5
	.uleb128 0x37
	.long	.LASF709
	.byte	0x5
	.uleb128 0x38
	.long	.LASF710
	.byte	0x5
	.uleb128 0x39
	.long	.LASF711
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF712
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF713
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF714
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF715
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF716
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF717
	.byte	0x5
	.uleb128 0x40
	.long	.LASF718
	.byte	0x5
	.uleb128 0x41
	.long	.LASF719
	.byte	0x5
	.uleb128 0x42
	.long	.LASF720
	.byte	0x5
	.uleb128 0x43
	.long	.LASF721
	.byte	0x5
	.uleb128 0x44
	.long	.LASF722
	.byte	0x5
	.uleb128 0x45
	.long	.LASF723
	.byte	0x5
	.uleb128 0x46
	.long	.LASF724
	.byte	0x5
	.uleb128 0x47
	.long	.LASF725
	.byte	0x5
	.uleb128 0x48
	.long	.LASF726
	.byte	0x5
	.uleb128 0x49
	.long	.LASF727
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF728
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF729
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF730
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF731
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF732
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF733
	.byte	0x5
	.uleb128 0x50
	.long	.LASF734
	.byte	0x5
	.uleb128 0x51
	.long	.LASF735
	.byte	0x5
	.uleb128 0x52
	.long	.LASF736
	.byte	0x5
	.uleb128 0x54
	.long	.LASF737
	.byte	0x5
	.uleb128 0x55
	.long	.LASF738
	.byte	0x5
	.uleb128 0x56
	.long	.LASF739
	.byte	0x5
	.uleb128 0x57
	.long	.LASF740
	.byte	0x5
	.uleb128 0x58
	.long	.LASF741
	.byte	0x5
	.uleb128 0x59
	.long	.LASF742
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF743
	.byte	0x5
	.uleb128 0x64
	.long	.LASF744
	.byte	0x5
	.uleb128 0x97
	.long	.LASF745
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF746
	.byte	0x5
	.uleb128 0xac
	.long	.LASF747
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF748
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF749
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF750
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF751
	.byte	0x5
	.uleb128 0xee
	.long	.LASF752
	.byte	0x5
	.uleb128 0x101
	.long	.LASF753
	.byte	0x5
	.uleb128 0x104
	.long	.LASF754
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF755
	.byte	0x5
	.uleb128 0x126
	.long	.LASF756
	.byte	0x5
	.uleb128 0x127
	.long	.LASF757
	.byte	0x5
	.uleb128 0x128
	.long	.LASF758
	.byte	0x5
	.uleb128 0x129
	.long	.LASF759
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF760
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF761
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.5.522863770ef3bff1751d7ffac6bad361,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF762
	.byte	0x5
	.uleb128 0x6
	.long	.LASF763
	.byte	0x5
	.uleb128 0x7
	.long	.LASF764
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF365:
	.string	"__linux__ 1"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF733:
	.string	"DBG_VM DBG_MODE(28)"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF778:
	.string	"size_t"
.LASF443:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF922:
	.string	"vterminal_echo_input"
.LASF503:
	.string	"ENOTDIR 20"
.LASF926:
	.string	"sched_queue_init"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF641:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF739:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF811:
	.string	"ldisc_cooked"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF708:
	.string	"DBG_MM DBG_MODE(1)"
.LASF445:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF15:
	.string	"__LP64__ 1"
.LASF721:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF902:
	.string	"c_rsp"
.LASF594:
	.string	"ECONNREFUSED 111"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF894:
	.string	"p_cwd"
.LASF602:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF946:
	.string	"bit_flip"
.LASF704:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF395:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF385:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF510:
	.string	"EFBIG 27"
.LASF442:
	.string	"PAGE_SHIFT 12"
.LASF770:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF530:
	.string	"EL3RST 47"
.LASF728:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF632:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF698:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF904:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF606:
	.string	"ENOMEDIUM 123"
.LASF723:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF420:
	.string	"F9 ((uint8_t)(F1 + 8))"
.LASF950:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF873:
	.string	"tty_ldisc"
.LASF824:
	.string	"write"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF734:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF804:
	.string	"kt_state"
.LASF839:
	.string	"VTCOLOR_GREY"
.LASF623:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF396:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF598:
	.string	"EINPROGRESS 115"
.LASF375:
	.string	"NULL 0"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF402:
	.string	"ESC 0x1B"
.LASF579:
	.string	"EPFNOSUPPORT 96"
.LASF617:
	.string	"MOD_POW_2(x,y) ((x) & ((y)-1))"
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
.LASF877:
	.string	"tty_t"
.LASF497:
	.string	"EFAULT 14"
.LASF822:
	.string	"chardev_ops"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF555:
	.string	"EMULTIHOP 72"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF717:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF901:
	.string	"c_rip"
.LASF423:
	.string	"F12 ((uint8_t)(F1 + 11))"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF752:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF813:
	.string	"ldisc_head"
.LASF504:
	.string	"EISDIR 21"
.LASF428:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF909:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF669:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF446:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF835:
	.string	"VTCOLOR_YELLOW"
.LASF491:
	.string	"ENOEXEC 8"
.LASF469:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF646:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF511:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF934:
	.string	"lessthaneq"
.LASF483:
	.string	"cd_to_tty(bd) CONTAINER_OF((bd), tty_t, tty_cdev)"
.LASF912:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF927:
	.string	"ldisc_get_current_line_raw"
.LASF793:
	.string	"km_waitq"
.LASF876:
	.string	"tty_write_mutex"
.LASF461:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF779:
	.string	"ssize_t"
.LASF756:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF438:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF742:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF526:
	.string	"EIDRM 43"
.LASF351:
	.string	"__k8 1"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF673:
	.string	"PID_INIT 1"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF843:
	.string	"VTSTATE_ATTR"
.LASF456:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF500:
	.string	"EEXIST 17"
.LASF393:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF808:
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
.LASF714:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF795:
	.string	"km_link"
.LASF678:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF417:
	.string	"F6 ((uint8_t)(F1 + 5))"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF509:
	.string	"ETXTBSY 26"
.LASF819:
	.string	"cd_id"
.LASF774:
	.string	"long int"
.LASF403:
	.string	"LF 0x0A"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF688:
	.string	"MAX_LAPICS 8"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF856:
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
.LASF645:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF672:
	.string	"PID_IDLE 0"
.LASF937:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF453:
	.string	"USE_2MB_PAGES 1"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF564:
	.string	"ELIBSCN 81"
.LASF841:
	.string	"VTSTATE_ESC"
.LASF870:
	.string	"vtconsole_t"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF677:
	.string	"INTR_GPF 0x0d"
.LASF718:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF675:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF540:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF435:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF893:
	.string	"p_files"
.LASF565:
	.string	"ELIBMAX 82"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF762:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF781:
	.string	"devid_t"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF507:
	.string	"EMFILE 24"
.LASF923:
	.string	"vterminal_write"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF380:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF519:
	.string	"ENAMETOOLONG 36"
.LASF615:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF908:
	.string	"KT_NO_STATE"
.LASF539:
	.string	"EBADRQC 56"
.LASF766:
	.string	"signed char"
.LASF458:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF691:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF709:
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
.LASF740:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF900:
	.string	"context"
.LASF831:
	.string	"pframe"
.LASF580:
	.string	"EAFNOSUPPORT 97"
.LASF512:
	.string	"ESPIPE 29"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF595:
	.string	"EHOSTDOWN 112"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF767:
	.string	"unsigned char"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF418:
	.string	"F7 ((uint8_t)(F1 + 6))"
.LASF568:
	.string	"ERESTART 85"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF627:
	.string	"VMMAP_DIR_HILO 2"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF931:
	.string	"ldisc_key_pressed"
.LASF730:
	.string	"DBG_THR DBG_MODE(23)"
.LASF635:
	.string	"PT_SIZE 0x080"
.LASF531:
	.string	"ELNRNG 48"
.LASF638:
	.string	"INDEX_MASK 0b111111111"
.LASF791:
	.string	"ktqueue_t"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF747:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF686:
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
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF705:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF557:
	.string	"EBADMSG 74"
.LASF584:
	.string	"ENETUNREACH 101"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF408:
	.string	"SCROLL_UP 0x0e"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF764:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF846:
	.string	"value"
.LASF542:
	.string	"EBFONT 59"
.LASF690:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF588:
	.string	"ENOBUFS 105"
.LASF906:
	.string	"c_kstacksz"
.LASF454:
	.string	"USE_1GB_PAGES 1"
.LASF948:
	.string	"drivers/tty/ldisc.c"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF389:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF882:
	.string	"p_pid"
.LASF899:
	.string	"pml4_t"
.LASF578:
	.string	"EOPNOTSUPP 95"
.LASF390:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF788:
	.string	"ktqueue"
.LASF605:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF748:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF687:
	.string	"IPL_HIGHEST 0xff"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF637:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF345:
	.string	"__x86_64__ 1"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF799:
	.string	"kt_retval"
.LASF521:
	.string	"ENOSYS 38"
.LASF667:
	.string	"NFILES 32"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF725:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF533:
	.string	"ENOCSI 50"
.LASF633:
	.string	"PT_ACCESSED 0x020"
.LASF406:
	.string	"EOT 0x04"
.LASF436:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF471:
	.string	"PAGE_SHIFT_512GB 39"
.LASF855:
	.string	"attr"
.LASF437:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF361:
	.string	"__SEG_FS 1"
.LASF881:
	.string	"proc"
.LASF942:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF425:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF624:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF523:
	.string	"ELOOP 40"
.LASF699:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF838:
	.string	"VTCOLOR_CYAN"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF857:
	.string	"vtcursor_t"
.LASF364:
	.string	"__linux 1"
.LASF939:
	.string	"intr_wait"
.LASF474:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF381:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF941:
	.string	"intr_enable"
.LASF859:
	.string	"vtconsole"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF631:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF536:
	.string	"EBADR 53"
.LASF875:
	.string	"tty_read_mutex"
.LASF515:
	.string	"EPIPE 32"
.LASF825:
	.string	"mmap"
.LASF409:
	.string	"SCROLL_DOWN 0x1c"
.LASF737:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF810:
	.string	"ldisc"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF387:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF649:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF918:
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
.LASF621:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF891:
	.string	"p_pml4"
.LASF914:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF586:
	.string	"ECONNABORTED 103"
.LASF949:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF743:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF871:
	.string	"vterminal_t"
.LASF792:
	.string	"kmutex"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF933:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF543:
	.string	"ENOSTR 60"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF863:
	.string	"buffer"
.LASF913:
	.string	"KT_EXITED"
.LASF434:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF783:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF664:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF703:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF634:
	.string	"PT_DIRTY 0x040"
.LASF494:
	.string	"EAGAIN 11"
.LASF784:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF596:
	.string	"EHOSTUNREACH 113"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF727:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF517:
	.string	"ERANGE 34"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF400:
	.string	"BS 0x08"
.LASF797:
	.string	"kt_ctx"
.LASF525:
	.string	"ENOMSG 42"
.LASF448:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF404:
	.string	"CR 0x0D"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF751:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF620:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF915:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF652:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF492:
	.string	"EBADF 9"
.LASF759:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF892:
	.string	"p_wait"
.LASF905:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF732:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF700:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF872:
	.string	"tty_vterminal"
.LASF481:
	.string	"VTC_ANSI_PARSER_STACK_SIZE 8"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF585:
	.string	"ENETRESET 102"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF603:
	.string	"EISNAM 120"
.LASF405:
	.string	"SPACE 0x20"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF697:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF679:
	.string	"INTR_APICTIMER 0xf0"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF833:
	.string	"VTCOLOR_RED"
.LASF858:
	.string	"vtc_paint_handler_t"
.LASF930:
	.string	"ldisc_wait_read"
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
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF498:
	.string	"ENOTBLK 15"
.LASF447:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
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
.LASF657:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF818:
	.string	"chardev"
.LASF680:
	.string	"INTR_KEYBOARD 0xe0"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF659:
	.string	"TICK_MSECS 10"
.LASF552:
	.string	"ESRMNT 69"
.LASF574:
	.string	"EPROTOTYPE 91"
.LASF884:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF618:
	.string	"IS_POW_2(x) (!MOD_POW_2(x, x))"
.LASF800:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF865:
	.string	"tab_index"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF644:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF706:
	.string	"DBG_ALL (~0ULL)"
.LASF608:
	.string	"ECANCELED 125"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF903:
	.string	"c_rbp"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF391:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF549:
	.string	"EREMOTE 66"
.LASF765:
	.string	"ldisc_to_tty(ldisc) CONTAINER_OF((ldisc), tty_t, tty_ldisc)"
.LASF943:
	.string	"bit_check"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF671:
	.string	"PROC_NAME_LEN 256"
.LASF355:
	.string	"__SSE__ 1"
.LASF397:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF862:
	.string	"ansiparser"
.LASF581:
	.string	"EADDRINUSE 98"
.LASF924:
	.string	"sched_cancellable_sleep_on"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF695:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF495:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF592:
	.string	"ETOOMANYREFS 109"
.LASF432:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF560:
	.string	"EBADFD 77"
.LASF513:
	.string	"EROFS 30"
.LASF382:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF711:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF614:
	.string	"ENOTRECOVERABLE 131"
.LASF490:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF749:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF796:
	.string	"kthread"
.LASF682:
	.string	"INTR_SPURIOUS 0xfe"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF587:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF860:
	.string	"width"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF622:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF541:
	.string	"EDEADLOCK EDEADLK"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF847:
	.string	"empty"
.LASF745:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF411:
	.string	"SCROLL_DOWN_PAGE 0x1d"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF545:
	.string	"ETIME 62"
.LASF802:
	.string	"kt_cancelled"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF850:
	.string	"stack"
.LASF590:
	.string	"ENOTCONN 107"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF502:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF854:
	.string	"vtattr_t"
.LASF421:
	.string	"F10 ((uint8_t)(F1 + 9))"
.LASF693:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF935:
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
.LASF628:
	.string	"PT_PRESENT 0x001"
.LASF798:
	.string	"kt_kstack"
.LASF702:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF694:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF785:
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
.LASF426:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF496:
	.string	"EACCES 13"
.LASF929:
	.string	"count"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF538:
	.string	"ENOANO 55"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF392:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF786:
	.string	"list_link_t"
.LASF551:
	.string	"EADV 68"
.LASF823:
	.string	"read"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF772:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF889:
	.string	"p_status"
.LASF684:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF650:
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
.LASF761:
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
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF780:
	.string	"pid_t"
.LASF661:
	.string	"PF_HASH_SIZE 17"
.LASF834:
	.string	"VTCOLOR_GREEN"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF945:
	.string	"intr_enabled"
.LASF451:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF729:
	.string	"DBG_KB DBG_MODE(22)"
.LASF505:
	.string	"EINVAL 22"
.LASF647:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF867:
	.string	"on_paint"
.LASF593:
	.string	"ETIMEDOUT 110"
.LASF524:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF412:
	.string	"F1 ((uint8_t)128)"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF944:
	.string	"addr"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF787:
	.string	"list"
.LASF880:
	.string	"vmm_proc"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF812:
	.string	"ldisc_tail"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF430:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF410:
	.string	"SCROLL_UP_PAGE 0x0f"
.LASF576:
	.string	"EPROTONOSUPPORT 93"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF898:
	.string	"phys"
.LASF826:
	.string	"fill_pframe"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF790:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF722:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF640:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF476:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF782:
	.string	"char"
.LASF753:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF444:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF715:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF676:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF853:
	.string	"bright"
.LASF419:
	.string	"F8 ((uint8_t)(F1 + 7))"
.LASF803:
	.string	"kt_wchan"
.LASF692:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF499:
	.string	"EBUSY 16"
.LASF701:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF668:
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
.LASF399:
	.string	"LDISC_BUFFER_SIZE 128"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF750:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF663:
	.string	"MAX_FILES 1024"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF681:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF660:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF814:
	.string	"ldisc_full"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF683:
	.string	"INTR_APICERR 0xff"
.LASF662:
	.string	"MAXPATHLEN 1024"
.LASF932:
	.string	"ldisc_init"
.LASF642:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF724:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF599:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF484:
	.string	"EPERM 1"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF561:
	.string	"EREMCHG 78"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF398:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF655:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF613:
	.string	"EOWNERDEAD 130"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF886:
	.string	"p_pproc"
.LASF478:
	.string	"VTC_DEFAULT_FOREGROUND VTCOLOR_GREY"
.LASF869:
	.string	"vtc_cursor_handler_t"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF827:
	.string	"flush_pframe"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF685:
	.string	"IPL_LOW 0"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF911:
	.string	"KT_SLEEP"
.LASF569:
	.string	"ESTRPIPE 86"
.LASF738:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF413:
	.string	"F2 ((uint8_t)(F1 + 1))"
.LASF828:
	.string	"chardev_t"
.LASF388:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF357:
	.string	"__FXSR__ 1"
.LASF807:
	.string	"kt_mutexes"
.LASF885:
	.string	"p_children"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF464:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF832:
	.string	"VTCOLOR_BLACK"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF754:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF917:
	.string	"proc_state_t"
.LASF940:
	.string	"intr_disable"
.LASF674:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF416:
	.string	"F5 ((uint8_t)(F1 + 4))"
.LASF689:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF379:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF384:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF597:
	.string	"EALREADY 114"
.LASF486:
	.string	"ESRCH 3"
.LASF907:
	.string	"context_t"
.LASF809:
	.string	"kmutex_t"
.LASF925:
	.string	"memset"
.LASF354:
	.string	"__MMX__ 1"
.LASF378:
	.string	"inline __attribute__((always_inline, used))"
.LASF665:
	.string	"MAX_VNODES 1024"
.LASF472:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF806:
	.string	"kt_qlink"
.LASF928:
	.string	"ldisc_read"
.LASF895:
	.string	"p_brk"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF654:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF553:
	.string	"ECOMM 70"
.LASF535:
	.string	"EBADE 52"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF830:
	.string	"mobj"
.LASF582:
	.string	"EADDRNOTAVAIL 99"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF616:
	.string	"BIT(n) (1 << (n))"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF572:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF720:
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
.LASF629:
	.string	"PT_WRITE 0x002"
.LASF467:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF648:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF820:
	.string	"cd_ops"
.LASF485:
	.string	"ENOENT 2"
.LASF731:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF735:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF522:
	.string	"ENOTEMPTY 39"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF651:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF577:
	.string	"ESOCKTNOSUPPORT 94"
.LASF630:
	.string	"PT_USER 0x004"
.LASF583:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF837:
	.string	"VTCOLOR_MAGENTA"
.LASF707:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF897:
	.string	"p_vmmap"
.LASF864:
	.string	"tabs"
.LASF401:
	.string	"DEL 0x7F"
.LASF619:
	.string	"SELECT(condition,trueval,falseval) (!!(condition) * (trueval) + !condition * (falseval))"
.LASF547:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF844:
	.string	"VTSTATE_ENDVAL"
.LASF719:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF842:
	.string	"VTSTATE_BRACKET"
.LASF440:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF532:
	.string	"EUNATCH 49"
.LASF422:
	.string	"F11 ((uint8_t)(F1 + 10))"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF726:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF570:
	.string	"EUSERS 87"
.LASF755:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF840:
	.string	"vtcolor_t"
.LASF768:
	.string	"short int"
.LASF916:
	.string	"PROC_DEAD"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF441:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF775:
	.string	"uint64_t"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF528:
	.string	"EL2NSYNC 45"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF852:
	.string	"vtansi_parser_t"
.LASF383:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
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
.LASF874:
	.string	"tty_cdev"
.LASF744:
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
.LASF836:
	.string	"VTCOLOR_BLUE"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF794:
	.string	"km_holder"
.LASF851:
	.string	"index"
.LASF449:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF575:
	.string	"ENOPROTOOPT 92"
.LASF920:
	.string	"sched_wakeup_on"
.LASF656:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF462:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF489:
	.string	"ENXIO 6"
.LASF377:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF666:
	.string	"NAME_LEN 28"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF653:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF470:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF548:
	.string	"ENOPKG 65"
.LASF626:
	.string	"VMMAP_DIR_LOHI 1"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF789:
	.string	"tq_list"
.LASF546:
	.string	"ENOSR 63"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF0:
	.string	"__STDC__ 1"
.LASF460:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF878:
	.string	"vmmap"
.LASF848:
	.string	"vtansi_arg_t"
.LASF763:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF829:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF658:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF518:
	.string	"EDEADLK 35"
.LASF394:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF921:
	.string	"memcpy"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF712:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF896:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF527:
	.string	"ECHRNG 44"
.LASF815:
	.string	"ldisc_read_queue"
.LASF887:
	.string	"p_list_link"
.LASF758:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF415:
	.string	"F4 ((uint8_t)(F1 + 3))"
.LASF710:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF741:
	.string	"DBG_USER DBG_MODE(38)"
.LASF757:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF482:
	.string	"TTY_MAJOR 2"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF760:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF805:
	.string	"kt_plink"
.LASF386:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF771:
	.string	"uint32_t"
.LASF457:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF947:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF488:
	.string	"EIO 5"
.LASF821:
	.string	"cd_link"
.LASF601:
	.string	"ENOTNAM 118"
.LASF342:
	.string	"__amd64 1"
.LASF919:
	.string	"vterminal_key_pressed"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF670:
	.string	"PROC_MAX_COUNT 65536"
.LASF414:
	.string	"F3 ((uint8_t)(F1 + 2))"
.LASF520:
	.string	"ENOLCK 37"
.LASF879:
	.string	"vmm_list"
.LASF910:
	.string	"KT_RUNNABLE"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF816:
	.string	"ldisc_buffer"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF636:
	.string	"PT_GLOBAL 0x100"
.LASF769:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF868:
	.string	"on_move"
.LASF431:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF429:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF713:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF475:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF736:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF459:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF746:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF938:
	.string	"equals"
.LASF407:
	.string	"ETX 0x03"
.LASF849:
	.string	"state"
.LASF773:
	.string	"int64_t"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF801:
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
.LASF817:
	.string	"ldisc_t"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF777:
	.string	"uintptr_t"
.LASF610:
	.string	"EKEYEXPIRED 127"
.LASF643:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF716:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF600:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF883:
	.string	"p_name"
.LASF534:
	.string	"EL2HLT 51"
.LASF888:
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
.LASF625:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF866:
	.string	"cursor"
.LASF639:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF463:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF559:
	.string	"ENOTUNIQ 76"
.LASF776:
	.string	"long unsigned int"
.LASF936:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF845:
	.string	"vtansi_parser_state_t"
.LASF861:
	.string	"height"
.LASF696:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF556:
	.string	"EDOTDOT 73"
.LASF890:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
