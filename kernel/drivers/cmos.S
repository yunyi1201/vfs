	.file	"cmos.c"
	.text
.Ltext0:
	.file 1 "drivers/cmos.c"
	.type	outb, @function
outb:
.LFB0:
	.file 2 "include/main/io.h"
	.loc 2 7 1
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
	.loc 2 8 5
	movzbl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 2 9 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	outb, .-outb
	.type	inb, @function
inb:
.LFB1:
	.loc 2 12 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 2 14 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -1(%rbp)
	.loc 2 17 12
	movzbl	-1(%rbp), %eax
	.loc 2 18 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	inb, .-inb
	.type	outw, @function
outw:
.LFB2:
	.loc 2 21 1
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
	.loc 2 22 5
	movzwl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 22 "include/main/io.h" 1
	outw %ax,%dx
# 0 "" 2
	.loc 2 23 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	outw, .-outw
	.type	inw, @function
inw:
.LFB3:
	.loc 2 26 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 2 28 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 28 "include/main/io.h" 1
	inw %dx,%ax
# 0 "" 2
#NO_APP
	movw	%ax, -2(%rbp)
	.loc 2 31 12
	movzwl	-2(%rbp), %eax
	.loc 2 32 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	inw, .-inw
	.type	outl, @function
outl:
.LFB4:
	.loc 2 35 1
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
	.loc 2 36 5
	movl	-8(%rbp), %eax
	movzwl	-4(%rbp), %edx
#APP
# 36 "include/main/io.h" 1
	outl %eax,%dx
# 0 "" 2
	.loc 2 37 1
#NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	outl, .-outl
	.type	inl, @function
inl:
.LFB5:
	.loc 2 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 2 42 5
	movzwl	-20(%rbp), %eax
	movl	%eax, %edx
#APP
# 42 "include/main/io.h" 1
	inl %dx,%eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 2 45 12
	movl	-4(%rbp), %eax
	.loc 2 46 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	inl, .-inl
	.globl	cmos_update_flag_set
	.type	cmos_update_flag_set, @function
cmos_update_flag_set:
.LFB6:
	.loc 1 4 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movw	$112, -6(%rbp)
	movb	$10, -7(%rbp)
.LBB10:
.LBB11:
	.loc 2 8 5
	movzbl	-7(%rbp), %eax
	movzwl	-6(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 2 9 1
#NO_APP
	nop
	movw	$113, -2(%rbp)
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 2 14 5
	movzwl	-2(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -3(%rbp)
	.loc 2 17 12
	movzbl	-3(%rbp), %eax
.LBE13:
.LBE12:
	.loc 1 6 28
	movzbl	%al, %eax
	andl	$128, %eax
	.loc 1 7 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cmos_update_flag_set, .-cmos_update_flag_set
	.globl	cmos_read_register
	.type	cmos_read_register, @function
cmos_read_register:
.LFB7:
	.loc 1 10 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 11 5
	movl	-20(%rbp), %eax
	movzbl	%al, %eax
	movw	$112, -6(%rbp)
	movb	%al, -7(%rbp)
.LBB14:
.LBB15:
	.loc 2 8 5
	movzbl	-7(%rbp), %eax
	movzwl	-6(%rbp), %edx
#APP
# 8 "include/main/io.h" 1
	outb %al,%dx
# 0 "" 2
	.loc 2 9 1
#NO_APP
	nop
	movw	$113, -2(%rbp)
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 2 14 5
	movzwl	-2(%rbp), %eax
	movl	%eax, %edx
#APP
# 14 "include/main/io.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movb	%al, -3(%rbp)
	.loc 2 17 12
	movzbl	-3(%rbp), %eax
.LBE17:
.LBE16:
	.loc 1 13 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	cmos_read_register, .-cmos_read_register
	.globl	rtc_time_match
	.type	rtc_time_match, @function
rtc_time_match:
.LFB8:
	.loc 1 16 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rsi, %rax
	movq	%rdi, %r8
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	%rax, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 1 17 14
	movzbl	-16(%rbp), %edx
	.loc 1 17 26
	movzbl	-32(%rbp), %eax
	.loc 1 19 31
	cmpb	%al, %dl
	jne	.L17
	.loc 1 17 40
	movzbl	-15(%rbp), %edx
	.loc 1 17 52
	movzbl	-31(%rbp), %eax
	.loc 1 17 35
	cmpb	%al, %dl
	jne	.L17
	.loc 1 18 14 discriminator 1
	movzbl	-14(%rbp), %edx
	.loc 1 18 24 discriminator 1
	movzbl	-30(%rbp), %eax
	.loc 1 17 61 discriminator 1
	cmpb	%al, %dl
	jne	.L17
	.loc 1 18 36
	movzbl	-13(%rbp), %edx
	.loc 1 18 45
	movzbl	-29(%rbp), %eax
	.loc 1 18 31
	cmpb	%al, %dl
	jne	.L17
	.loc 1 18 56 discriminator 1
	movzbl	-12(%rbp), %edx
	.loc 1 18 67 discriminator 1
	movzbl	-28(%rbp), %eax
	.loc 1 18 51 discriminator 1
	cmpb	%al, %dl
	jne	.L17
	.loc 1 19 14 discriminator 2
	movl	-8(%rbp), %edx
	.loc 1 19 24 discriminator 2
	movl	-24(%rbp), %eax
	.loc 1 18 75 discriminator 2
	cmpl	%eax, %edx
	jne	.L17
	.loc 1 19 36 discriminator 3
	movl	-4(%rbp), %edx
	.loc 1 19 51 discriminator 3
	movl	-20(%rbp), %eax
	.loc 1 19 31 discriminator 3
	cmpl	%eax, %edx
	jne	.L17
	.loc 1 19 31 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L19
.L17:
	.loc 1 19 31 discriminator 1
	movl	$0, %eax
.L19:
	.loc 1 20 1 is_stmt 1 discriminator 6
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	rtc_time_match, .-rtc_time_match
	.globl	__get_rtc_time
	.type	__get_rtc_time, @function
__get_rtc_time:
.LFB9:
	.loc 1 23 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 26 11
	nop
.L21:
	.loc 1 26 12 discriminator 1
	movl	$0, %eax
	movabsq	$cmos_update_flag_set, %rdx
	call	*%rdx
.LVL0:
	testl	%eax, %eax
	jne	.L21
	.loc 1 29 17
	movl	$0, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL1:
	.loc 1 29 15
	movb	%al, -16(%rbp)
	.loc 1 30 17
	movl	$2, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL2:
	.loc 1 30 15
	movb	%al, -15(%rbp)
	.loc 1 31 15
	movl	$4, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL3:
	.loc 1 31 13
	movb	%al, -14(%rbp)
	.loc 1 32 14
	movl	$7, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL4:
	.loc 1 32 12
	movb	%al, -13(%rbp)
	.loc 1 33 16
	movl	$8, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL5:
	.loc 1 33 14
	movb	%al, -12(%rbp)
	.loc 1 34 15
	movl	$9, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL6:
	movzbl	%al, %eax
	.loc 1 34 13
	movl	%eax, -8(%rbp)
	.loc 1 35 20
	movl	$50, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL7:
	movzbl	%al, %eax
	.loc 1 35 18
	movl	%eax, -4(%rbp)
	.loc 1 37 12
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc 1 38 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	__get_rtc_time, .-__get_rtc_time
	.globl	rtc_get_time
	.type	rtc_get_time, @function
rtc_get_time:
.LFB10:
	.loc 1 43 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
.L24:
	.loc 1 50 16 discriminator 1
	movl	$0, %eax
	movabsq	$__get_rtc_time, %rdx
	call	*%rdx
.LVL8:
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 51 16 discriminator 1
	movl	$0, %eax
	movabsq	$__get_rtc_time, %rdx
	call	*%rdx
.LVL9:
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 52 15 discriminator 1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movabsq	$rtc_time_match, %rax
	call	*%rax
.LVL10:
	.loc 1 52 14 discriminator 1
	testl	%eax, %eax
	je	.L24
	.loc 1 54 35
	movl	$11, %edi
	movabsq	$cmos_read_register, %rax
	call	*%rax
.LVL11:
	movb	%al, -1(%rbp)
	.loc 1 57 25
	movzbl	-1(%rbp), %eax
	andl	$4, %eax
	.loc 1 57 8
	testl	%eax, %eax
	jne	.L25
	.loc 1 59 28
	movzbl	-32(%rbp), %eax
	.loc 1 59 36
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 59 52
	movzbl	-32(%rbp), %eax
	.loc 1 59 44
	shrb	$4, %al
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	.loc 1 59 21
	movb	%al, -32(%rbp)
	.loc 1 60 28
	movzbl	-31(%rbp), %eax
	.loc 1 60 36
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 60 52
	movzbl	-31(%rbp), %eax
	.loc 1 60 44
	shrb	$4, %al
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	.loc 1 60 21
	movb	%al, -31(%rbp)
	.loc 1 61 27
	movzbl	-30(%rbp), %eax
	.loc 1 61 33
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 61 50
	movzbl	-30(%rbp), %eax
	.loc 1 61 56
	movzbl	%al, %eax
	andl	$112, %eax
	.loc 1 61 64
	leal	15(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	.loc 1 61 41
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	.loc 1 62 26
	movzbl	-30(%rbp), %eax
	.loc 1 62 32
	andl	$-128, %eax
	.loc 1 61 77
	orl	%edx, %eax
	.loc 1 61 19
	movb	%al, -30(%rbp)
	.loc 1 63 25
	movzbl	-29(%rbp), %eax
	.loc 1 63 30
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 63 46
	movzbl	-29(%rbp), %eax
	.loc 1 63 38
	shrb	$4, %al
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	.loc 1 63 18
	movb	%al, -29(%rbp)
	.loc 1 64 27
	movzbl	-28(%rbp), %eax
	.loc 1 64 34
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 64 50
	movzbl	-28(%rbp), %eax
	.loc 1 64 42
	shrb	$4, %al
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	.loc 1 64 20
	movb	%al, -28(%rbp)
	.loc 1 65 26
	movl	-24(%rbp), %eax
	.loc 1 65 32
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 65 48
	movl	-24(%rbp), %eax
	.loc 1 65 54
	shrl	$4, %eax
	movl	%eax, %edx
	.loc 1 65 60
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	.loc 1 65 40
	addl	%ecx, %eax
	.loc 1 65 19
	movl	%eax, -24(%rbp)
	.loc 1 66 31
	movl	-20(%rbp), %eax
	.loc 1 66 42
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 66 58
	movl	-20(%rbp), %eax
	.loc 1 66 69
	shrl	$4, %eax
	movl	%eax, %edx
	.loc 1 66 75
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	.loc 1 66 50
	addl	%ecx, %eax
	.loc 1 66 24
	movl	%eax, -20(%rbp)
.L25:
	.loc 1 70 25
	movzbl	-1(%rbp), %eax
	andl	$2, %eax
	.loc 1 70 8
	testl	%eax, %eax
	jne	.L26
	.loc 1 70 41 discriminator 1
	movzbl	-30(%rbp), %eax
	.loc 1 70 33 discriminator 1
	testb	%al, %al
	jns	.L26
	.loc 1 72 27
	movzbl	-30(%rbp), %eax
	.loc 1 72 33
	movzbl	%al, %eax
	andl	$127, %eax
	.loc 1 72 41
	leal	12(%rax), %ecx
	.loc 1 72 47
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 1 72 19
	movl	%edx, %eax
	movb	%al, -30(%rbp)
.L26:
	.loc 1 75 9
	movl	-24(%rbp), %edx
	.loc 1 75 23
	movl	-20(%rbp), %eax
	.loc 1 75 34
	imull	$100, %eax, %eax
	.loc 1 75 15
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 77 12
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc 1 78 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	rtc_get_time, .-rtc_get_time
.Letext0:
	.file 3 "include/types.h"
	.file 4 "include/drivers/cmos.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x512
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF427
	.byte	0xc
	.long	.LASF428
	.long	.LASF429
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF399
	.uleb128 0x3
	.long	.LASF402
	.byte	0x3
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF400
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF401
	.uleb128 0x3
	.long	.LASF403
	.byte	0x3
	.byte	0xc
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF404
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF405
	.byte	0x3
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF406
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF407
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF408
	.uleb128 0x5
	.long	.LASF415
	.byte	0x10
	.byte	0x4
	.byte	0x16
	.byte	0x10
	.long	0xf6
	.uleb128 0x6
	.long	.LASF409
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x44
	.byte	0
	.uleb128 0x6
	.long	.LASF410
	.byte	0x4
	.byte	0x19
	.byte	0x13
	.long	0x44
	.byte	0x1
	.uleb128 0x6
	.long	.LASF411
	.byte	0x4
	.byte	0x1a
	.byte	0x13
	.long	0x44
	.byte	0x2
	.uleb128 0x7
	.string	"day"
	.byte	0x4
	.byte	0x1b
	.byte	0x13
	.long	0x44
	.byte	0x3
	.uleb128 0x6
	.long	.LASF412
	.byte	0x4
	.byte	0x1c
	.byte	0x13
	.long	0x44
	.byte	0x4
	.uleb128 0x6
	.long	.LASF413
	.byte	0x4
	.byte	0x1d
	.byte	0x12
	.long	0x78
	.byte	0x8
	.uleb128 0x6
	.long	.LASF414
	.byte	0x4
	.byte	0x20
	.byte	0x12
	.long	0x78
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF415
	.byte	0x4
	.byte	0x21
	.byte	0x3
	.long	0x8d
	.uleb128 0x8
	.byte	0x1
	.long	.LASF419
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.long	0xf6
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x188
	.uleb128 0x9
	.long	.LASF416
	.byte	0x1
	.byte	0x2d
	.byte	0x10
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF417
	.byte	0x1
	.byte	0x2e
	.byte	0x10
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF418
	.byte	0x1
	.byte	0x36
	.byte	0x13
	.long	0x44
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xa
	.quad	.LVL8
	.long	0x188
	.uleb128 0xa
	.quad	.LVL9
	.long	0x188
	.uleb128 0xa
	.quad	.LVL10
	.long	0x223
	.uleb128 0xa
	.quad	.LVL11
	.long	0x263
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF420
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.long	0xf6
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x223
	.uleb128 0xb
	.string	"tm"
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.quad	.LVL0
	.long	0x2ee
	.uleb128 0xa
	.quad	.LVL1
	.long	0x263
	.uleb128 0xa
	.quad	.LVL2
	.long	0x263
	.uleb128 0xa
	.quad	.LVL3
	.long	0x263
	.uleb128 0xa
	.quad	.LVL4
	.long	0x263
	.uleb128 0xa
	.quad	.LVL5
	.long	0x263
	.uleb128 0xa
	.quad	.LVL6
	.long	0x263
	.uleb128 0xa
	.quad	.LVL7
	.long	0x263
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF421
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.byte	0x1
	.long	0x65
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x263
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0xf
	.byte	0x1f
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0xf
	.byte	0x2d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF422
	.byte	0x1
	.byte	0x9
	.byte	0xf
	.byte	0x1
	.long	0x44
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2ee
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.byte	0x9
	.byte	0x26
	.long	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	0x498
	.quad	.LBB14
	.quad	.LBE14
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.long	0x2c4
	.uleb128 0xf
	.long	0x4b2
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0xf
	.long	0x4a6
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x10
	.long	0x46d
	.quad	.LBB16
	.quad	.LBE16
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.uleb128 0xf
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.long	0x48b
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF423
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0x65
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x369
	.uleb128 0xe
	.long	0x498
	.quad	.LBB10
	.quad	.LBE10
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0x33f
	.uleb128 0xf
	.long	0x4b2
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0xf
	.long	0x4a6
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x10
	.long	0x46d
	.quad	.LBB12
	.quad	.LBE12
	.byte	0x1
	.byte	0x6
	.byte	0xd
	.uleb128 0xf
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x11
	.long	0x48b
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"inl"
	.byte	0x2
	.byte	0x27
	.byte	0x18
	.byte	0x1
	.long	0x6c
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3ac
	.uleb128 0x13
	.long	.LASF424
	.byte	0x2
	.byte	0x27
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x2
	.byte	0x29
	.byte	0xe
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF425
	.byte	0x2
	.byte	0x22
	.byte	0x14
	.byte	0x1
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3eb
	.uleb128 0x13
	.long	.LASF424
	.byte	0x2
	.byte	0x22
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"val"
	.byte	0x2
	.byte	0x22
	.byte	0x31
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.string	"inw"
	.byte	0x2
	.byte	0x19
	.byte	0x18
	.byte	0x1
	.long	0x52
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x42e
	.uleb128 0x13
	.long	.LASF424
	.byte	0x2
	.byte	0x19
	.byte	0x25
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x2
	.byte	0x1b
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x14
	.long	.LASF426
	.byte	0x2
	.byte	0x14
	.byte	0x14
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x46d
	.uleb128 0x13
	.long	.LASF424
	.byte	0x2
	.byte	0x14
	.byte	0x22
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"val"
	.byte	0x2
	.byte	0x14
	.byte	0x31
	.long	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.string	"inb"
	.byte	0x2
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0x498
	.uleb128 0x16
	.long	.LASF424
	.byte	0x2
	.byte	0xb
	.byte	0x24
	.long	0x52
	.uleb128 0x17
	.string	"ret"
	.byte	0x2
	.byte	0xd
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x18
	.long	.LASF430
	.byte	0x2
	.byte	0x6
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x4bf
	.uleb128 0x16
	.long	.LASF424
	.byte	0x2
	.byte	0x6
	.byte	0x22
	.long	0x52
	.uleb128 0x19
	.string	"val"
	.byte	0x2
	.byte	0x6
	.byte	0x30
	.long	0x38
	.byte	0
	.uleb128 0x1a
	.long	0x498
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ec
	.uleb128 0xf
	.long	0x4a6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.long	0x4b2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	0x46d
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	0x48b
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF375
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.file 5 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
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
	.long	.LASF376
	.byte	0x5
	.uleb128 0x7
	.long	.LASF377
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
	.section	.debug_macro,"G",@progbits,wm4.cmos.h.7.cabaaa9d7076ca99e7988181b72f67d6,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF388
	.byte	0x5
	.uleb128 0x8
	.long	.LASF389
	.byte	0x5
	.uleb128 0xa
	.long	.LASF390
	.byte	0x5
	.uleb128 0xb
	.long	.LASF391
	.byte	0x5
	.uleb128 0xc
	.long	.LASF392
	.byte	0x5
	.uleb128 0xd
	.long	.LASF393
	.byte	0x5
	.uleb128 0xe
	.long	.LASF394
	.byte	0x5
	.uleb128 0xf
	.long	.LASF395
	.byte	0x5
	.uleb128 0x12
	.long	.LASF396
	.byte	0x5
	.uleb128 0x13
	.long	.LASF397
	.byte	0x5
	.uleb128 0x14
	.long	.LASF398
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
.LASF391:
	.string	"CMOS_REG_MINUTE 0x02"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF387:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
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
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF398:
	.string	"CMOS_REG_STAT_B 0x0B"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF406:
	.string	"unsigned int"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF197:
	.string	"__FLT16_DIG__ 3"
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
.LASF423:
	.string	"cmos_update_flag_set"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF386:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF414:
	.string	"__century"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
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
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF377:
	.string	"packed __attribute__((packed))"
.LASF396:
	.string	"CMOS_REG_CENTURY 0x32"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF405:
	.string	"uint32_t"
.LASF382:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF385:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF388:
	.string	"CMOS_ADDR 0x70"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
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
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF427:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF383:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF389:
	.string	"CMOS_DATA 0x71"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF376:
	.string	"NULL 0"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF354:
	.string	"__MMX__ 1"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF422:
	.string	"cmos_read_register"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF395:
	.string	"CMOS_REG_YEAR 0x09"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF394:
	.string	"CMOS_REG_MONTH 0x08"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF412:
	.string	"month"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF415:
	.string	"rtc_time_t"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF343:
	.string	"__amd64__ 1"
.LASF384:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF409:
	.string	"second"
.LASF411:
	.string	"hour"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF402:
	.string	"uint8_t"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF378:
	.string	"inline __attribute__((always_inline, used))"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF375:
	.string	"CMOS_H "
.LASF397:
	.string	"CMOS_REG_STAT_A 0x0A"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
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
.LASF107:
	.string	"__INT8_C(c) c"
.LASF15:
	.string	"__LP64__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF14:
	.string	"_LP64 1"
.LASF429:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF344:
	.string	"__x86_64 1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF390:
	.string	"CMOS_REG_SECOND 0x00"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF419:
	.string	"rtc_get_time"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
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
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF356:
	.string	"__SSE2__ 1"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF410:
	.string	"minute"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF421:
	.string	"rtc_time_match"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF223:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF362:
	.string	"__SEG_GS 1"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF403:
	.string	"uint16_t"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF428:
	.string	"drivers/cmos.c"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF393:
	.string	"CMOS_REG_DAY 0x07"
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
.LASF401:
	.string	"short int"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF407:
	.string	"long int"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF420:
	.string	"__get_rtc_time"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF380:
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
.LASF430:
	.string	"outb"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF425:
	.string	"outl"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
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
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF426:
	.string	"outw"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF418:
	.string	"cmos_settings"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF361:
	.string	"__SEG_FS 1"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF408:
	.string	"long unsigned int"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF366:
	.string	"__unix 1"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF424:
	.string	"port"
.LASF413:
	.string	"year"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF351:
	.string	"__k8 1"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF400:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF357:
	.string	"__FXSR__ 1"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF392:
	.string	"CMOS_REG_HOUR 0x04"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF371:
	.string	"__VFS__ 1"
.LASF365:
	.string	"__linux__ 1"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF379:
	.string	"noreturn __attribute__((noreturn))"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
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
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF399:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF404:
	.string	"short unsigned int"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF355:
	.string	"__SSE__ 1"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF381:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF416:
	.string	"tm_a"
.LASF417:
	.string	"tm_b"
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
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
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
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF164:
	.string	"__DBL_DIG__ 15"
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
