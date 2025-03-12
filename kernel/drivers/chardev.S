	.file	"chardev.c"
	.text
.Ltext0:
	.file 1 "drivers/chardev.c"
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
	.data
	.align 16
	.type	chardevs, @object
	.size	chardevs, 16
chardevs:
	.quad	chardevs
	.quad	chardevs
	.text
	.globl	chardev_init
	.type	chardev_init, @function
chardev_init:
.LFB10:
	.loc 1 10 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 11 5
	movabsq	$tty_init, %rax
	call	*%rax
.LVL0:
	.loc 1 12 5
	movabsq	$memdevs_init, %rax
	call	*%rax
.LVL1:
	.loc 1 13 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	chardev_init, .-chardev_init
	.globl	chardev_register
	.type	chardev_register, @function
chardev_register:
.LFB11:
	.loc 1 16 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 17 8
	cmpq	$0, -24(%rbp)
	je	.L20
	.loc 1 17 35 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 17 14 discriminator 1
	testl	%eax, %eax
	je	.L20
	.loc 1 17 52 discriminator 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 17 44 discriminator 2
	testq	%rax, %rax
	jne	.L21
.L20:
	.loc 1 19 16
	movq	$-1, %rax
	jmp	.L22
.L21:
.LBB2:
	.loc 1 21 5
	movabsq	$chardevs, %rax
	movq	(%rax), %rax
	subq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.L23
.L25:
	.loc 1 23 16
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 23 29
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 23 12
	cmpl	%eax, %edx
	jne	.L24
	.loc 1 25 20
	movq	$-1, %rax
	jmp	.L22
.L24:
	.loc 1 21 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
.L23:
	.loc 1 21 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movabsq	$chardevs, %rax
	cmpq	%rax, %rdx
	jne	.L25
.LBE2:
	.loc 1 28 5 is_stmt 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movabsq	$chardevs, %rax
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL2:
	.loc 1 29 12
	movl	$0, %eax
.L22:
	.loc 1 30 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	chardev_register, .-chardev_register
	.section	.rodata
.LC0:
	.string	"NULL_DEVID != cd->cd_id"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/chardev.c"
	.text
	.globl	chardev_lookup
	.type	chardev_lookup, @function
chardev_lookup:
.LFB12:
	.loc 1 33 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.LBB3:
	.loc 1 34 5
	movabsq	$chardevs, %rax
	movq	(%rax), %rax
	subq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.L27
.L31:
	.loc 1 36 9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	.loc 1 36 9 is_stmt 0 discriminator 1
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$36, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL3:
.L28:
	.loc 1 37 21 is_stmt 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 37 12
	cmpl	%eax, -20(%rbp)
	jne	.L29
	.loc 1 39 20
	movq	-8(%rbp), %rax
	jmp	.L30
.L29:
	.loc 1 34 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
.L27:
	.loc 1 34 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movabsq	$chardevs, %rax
	cmpq	%rax, %rdx
	jne	.L31
.LBE3:
	.loc 1 42 12 is_stmt 1
	movl	$0, %eax
.L30:
	.loc 1 43 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	chardev_lookup, .-chardev_lookup
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"chardev_lookup"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/drivers/chardev.h"
	.file 7 "include/drivers/memdevs.h"
	.file 8 "include/drivers/tty/tty.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x62f
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF652
	.byte	0xc
	.long	.LASF653
	.long	.LASF654
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF602
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF603
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF604
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF605
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF607
	.byte	0x4
	.byte	0xe
	.byte	0x16
	.long	0x60
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF606
	.uleb128 0x4
	.long	.LASF608
	.byte	0x4
	.byte	0x10
	.byte	0x15
	.long	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF609
	.uleb128 0x4
	.long	.LASF610
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF611
	.uleb128 0x4
	.long	.LASF612
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x86
	.uleb128 0x4
	.long	.LASF613
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x7a
	.uleb128 0x4
	.long	.LASF614
	.byte	0x4
	.byte	0x15
	.byte	0x11
	.long	0x67
	.uleb128 0x4
	.long	.LASF615
	.byte	0x4
	.byte	0x1c
	.byte	0x12
	.long	0x54
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF620
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0xe7
	.uleb128 0x7
	.long	.LASF616
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0xe7
	.byte	0
	.uleb128 0x7
	.long	.LASF617
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbf
	.uleb128 0x4
	.long	.LASF618
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xbf
	.uleb128 0x4
	.long	.LASF619
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xbf
	.uleb128 0x6
	.long	.LASF621
	.byte	0x20
	.byte	0x6
	.byte	0xc
	.byte	0x10
	.long	0x13a
	.uleb128 0x7
	.long	.LASF622
	.byte	0x6
	.byte	0xe
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.long	.LASF623
	.byte	0x6
	.byte	0xf
	.byte	0x19
	.long	0x189
	.byte	0x8
	.uleb128 0x7
	.long	.LASF624
	.byte	0x6
	.byte	0x10
	.byte	0x11
	.long	0xf9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF625
	.byte	0x28
	.byte	0x6
	.byte	0x13
	.byte	0x10
	.long	0x189
	.uleb128 0x7
	.long	.LASF626
	.byte	0x6
	.byte	0x15
	.byte	0xf
	.long	0x1c0
	.byte	0
	.uleb128 0x7
	.long	.LASF627
	.byte	0x6
	.byte	0x17
	.byte	0xf
	.long	0x1ec
	.byte	0x8
	.uleb128 0x7
	.long	.LASF628
	.byte	0x6
	.byte	0x19
	.byte	0xc
	.long	0x225
	.byte	0x10
	.uleb128 0x7
	.long	.LASF629
	.byte	0x6
	.byte	0x1b
	.byte	0xc
	.long	0x24c
	.byte	0x18
	.uleb128 0x7
	.long	.LASF630
	.byte	0x6
	.byte	0x1d
	.byte	0xc
	.long	0x24c
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x13a
	.uleb128 0x4
	.long	.LASF631
	.byte	0x6
	.byte	0x11
	.byte	0x3
	.long	0x105
	.uleb128 0x9
	.byte	0x1
	.long	0xa5
	.long	0x1ba
	.uleb128 0xa
	.long	0x1ba
	.uleb128 0xa
	.long	0x99
	.uleb128 0xa
	.long	0xbd
	.uleb128 0xa
	.long	0x99
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x18f
	.uleb128 0x8
	.byte	0x8
	.long	0x19b
	.uleb128 0x9
	.byte	0x1
	.long	0xa5
	.long	0x1e5
	.uleb128 0xa
	.long	0x1ba
	.uleb128 0xa
	.long	0x99
	.uleb128 0xa
	.long	0x1e5
	.uleb128 0xa
	.long	0x99
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1eb
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x8
	.long	0x1c6
	.uleb128 0x9
	.byte	0x1
	.long	0x73
	.long	0x207
	.uleb128 0xa
	.long	0x207
	.uleb128 0xa
	.long	0x213
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x20d
	.uleb128 0xc
	.long	.LASF632
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x219
	.uleb128 0x8
	.byte	0x8
	.long	0x21f
	.uleb128 0xc
	.long	.LASF633
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x1f2
	.uleb128 0x9
	.byte	0x1
	.long	0x73
	.long	0x240
	.uleb128 0xa
	.long	0x207
	.uleb128 0xa
	.long	0x240
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x246
	.uleb128 0xc
	.long	.LASF634
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0x22b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF635
	.uleb128 0xd
	.long	0x252
	.uleb128 0xe
	.long	.LASF638
	.byte	0x1
	.byte	0x7
	.byte	0xf
	.long	0xed
	.byte	0x9
	.byte	0x3
	.quad	chardevs
	.uleb128 0xf
	.byte	0x1
	.long	.LASF655
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x29a
	.uleb128 0xa
	.long	0x29a
	.uleb128 0xa
	.long	0x4d
	.uleb128 0xa
	.long	0x29a
	.uleb128 0xa
	.long	0x29a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x259
	.uleb128 0x11
	.byte	0x1
	.long	.LASF656
	.byte	0x5
	.byte	0x9c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x2ba
	.uleb128 0xa
	.long	0x2ba
	.uleb128 0xa
	.long	0x2c0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xed
	.uleb128 0x8
	.byte	0x8
	.long	0xf9
	.uleb128 0x12
	.byte	0x1
	.long	.LASF636
	.byte	0x7
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF637
	.byte	0x8
	.byte	0x14
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.long	.LASF640
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.byte	0x1
	.long	0x1ba
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x360
	.uleb128 0x14
	.string	"id"
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF657
	.long	0x370
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x16
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x17
	.string	"cd"
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x1ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF639
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x1ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.quad	.LVL3
	.long	0x274
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x259
	.long	0x370
	.uleb128 0x1a
	.long	0x86
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	0x360
	.uleb128 0x13
	.byte	0x1
	.long	.LASF641
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.byte	0x1
	.long	0x73
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3ea
	.uleb128 0x14
	.string	"dev"
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.long	0x1ba
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2
	.long	0x3dc
	.uleb128 0x17
	.string	"cd"
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.long	0x1ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF639
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.long	0x1ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.quad	.LVL2
	.long	0x2a0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF658
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x426
	.uleb128 0x18
	.quad	.LVL0
	.long	0x2d1
	.uleb128 0x18
	.quad	.LVL1
	.long	0x2c6
	.byte	0
	.uleb128 0x1d
	.long	.LASF642
	.byte	0x3
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x468
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF643
	.byte	0x3
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4aa
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF644
	.byte	0x3
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ec
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF645
	.byte	0x3
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x52e
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF646
	.byte	0x3
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x570
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF647
	.byte	0x3
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x73
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5b2
	.uleb128 0x1e
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF648
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF649
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF650
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.long	.LASF659
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x7a
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xe
	.long	.LASF651
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x7a
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
	.uleb128 0x4
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x6
	.file 9 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
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
	.file 10 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.file 11 "include/drivers/tty/ldisc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.file 12 "include/proc/kmutex.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.file 13 "include/proc/sched.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.file 14 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xe
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
	.file 15 "include/drivers/tty/vterminal.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.file 16 "include/drivers/screen.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 17 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x11
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
	.uleb128 0x5
	.uleb128 0x3
	.file 18 "include/globals.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.file 19 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.file 20 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 21 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x15
	.file 22 "include/proc/context.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.file 23 "include/mm/pagetable.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.file 24 "include/vm/vmmap.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF496
	.byte	0x4
	.file 25 "include/proc/kthread.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x19
	.byte	0x4
	.file 26 "include/proc/proc.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1a
	.file 27 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF514
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.file 28 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x10
	.long	.LASF528
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
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
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF460
	.byte	0x5
	.uleb128 0x5
	.long	.LASF461
	.byte	0x5
	.uleb128 0x6
	.long	.LASF462
	.byte	0x5
	.uleb128 0x7
	.long	.LASF463
	.byte	0x5
	.uleb128 0xa
	.long	.LASF464
	.byte	0x5
	.uleb128 0xc
	.long	.LASF465
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF466
	.byte	0x5
	.uleb128 0x8
	.long	.LASF467
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF468
	.byte	0x5
	.uleb128 0x7
	.long	.LASF469
	.byte	0x5
	.uleb128 0x8
	.long	.LASF470
	.byte	0x5
	.uleb128 0x9
	.long	.LASF471
	.byte	0x5
	.uleb128 0xa
	.long	.LASF472
	.byte	0x5
	.uleb128 0xb
	.long	.LASF473
	.byte	0x5
	.uleb128 0xc
	.long	.LASF474
	.byte	0x5
	.uleb128 0xd
	.long	.LASF475
	.byte	0x5
	.uleb128 0xe
	.long	.LASF476
	.byte	0x5
	.uleb128 0x10
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF478
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF479
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF480
	.byte	0x5
	.uleb128 0x20
	.long	.LASF481
	.byte	0x5
	.uleb128 0x21
	.long	.LASF482
	.byte	0x5
	.uleb128 0x23
	.long	.LASF477
	.byte	0x5
	.uleb128 0x24
	.long	.LASF483
	.byte	0x5
	.uleb128 0x25
	.long	.LASF484
	.byte	0x5
	.uleb128 0x26
	.long	.LASF485
	.byte	0x5
	.uleb128 0x28
	.long	.LASF486
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF487
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF488
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF489
	.byte	0x5
	.uleb128 0x30
	.long	.LASF490
	.byte	0x5
	.uleb128 0x31
	.long	.LASF491
	.byte	0x5
	.uleb128 0x32
	.long	.LASF492
	.byte	0x5
	.uleb128 0x33
	.long	.LASF493
	.byte	0x5
	.uleb128 0x35
	.long	.LASF494
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF495
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF497
	.byte	0x5
	.uleb128 0xf
	.long	.LASF498
	.byte	0x5
	.uleb128 0x10
	.long	.LASF499
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF500
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF501
	.byte	0x5
	.uleb128 0x23
	.long	.LASF502
	.byte	0x5
	.uleb128 0x24
	.long	.LASF503
	.byte	0x5
	.uleb128 0x25
	.long	.LASF504
	.byte	0x5
	.uleb128 0x26
	.long	.LASF505
	.byte	0x5
	.uleb128 0x27
	.long	.LASF506
	.byte	0x5
	.uleb128 0x28
	.long	.LASF507
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF508
	.byte	0x5
	.uleb128 0x31
	.long	.LASF509
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF510
	.byte	0x5
	.uleb128 0x11
	.long	.LASF511
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF512
	.byte	0x5
	.uleb128 0xab
	.long	.LASF513
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF515
	.byte	0x5
	.uleb128 0x9
	.long	.LASF516
	.byte	0x5
	.uleb128 0xa
	.long	.LASF517
	.byte	0x5
	.uleb128 0xb
	.long	.LASF518
	.byte	0x5
	.uleb128 0xd
	.long	.LASF519
	.byte	0x5
	.uleb128 0xe
	.long	.LASF520
	.byte	0x5
	.uleb128 0x10
	.long	.LASF521
	.byte	0x5
	.uleb128 0x11
	.long	.LASF522
	.byte	0x5
	.uleb128 0x12
	.long	.LASF523
	.byte	0x5
	.uleb128 0x13
	.long	.LASF524
	.byte	0x5
	.uleb128 0x19
	.long	.LASF525
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF526
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF527
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF529
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF530
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF531
	.byte	0x5
	.uleb128 0x20
	.long	.LASF532
	.byte	0x5
	.uleb128 0x21
	.long	.LASF533
	.byte	0x5
	.uleb128 0x22
	.long	.LASF534
	.byte	0x5
	.uleb128 0x23
	.long	.LASF535
	.byte	0x5
	.uleb128 0x24
	.long	.LASF536
	.byte	0x5
	.uleb128 0x25
	.long	.LASF537
	.byte	0x5
	.uleb128 0x27
	.long	.LASF538
	.byte	0x5
	.uleb128 0x28
	.long	.LASF539
	.byte	0x5
	.uleb128 0x29
	.long	.LASF540
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF541
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF542
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF544
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x5
	.uleb128 0x34
	.long	.LASF546
	.byte	0x5
	.uleb128 0x35
	.long	.LASF547
	.byte	0x5
	.uleb128 0x36
	.long	.LASF548
	.byte	0x5
	.uleb128 0x37
	.long	.LASF549
	.byte	0x5
	.uleb128 0x38
	.long	.LASF550
	.byte	0x5
	.uleb128 0x39
	.long	.LASF551
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF552
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF553
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF554
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF555
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF556
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF557
	.byte	0x5
	.uleb128 0x40
	.long	.LASF558
	.byte	0x5
	.uleb128 0x41
	.long	.LASF559
	.byte	0x5
	.uleb128 0x42
	.long	.LASF560
	.byte	0x5
	.uleb128 0x43
	.long	.LASF561
	.byte	0x5
	.uleb128 0x44
	.long	.LASF562
	.byte	0x5
	.uleb128 0x45
	.long	.LASF563
	.byte	0x5
	.uleb128 0x46
	.long	.LASF564
	.byte	0x5
	.uleb128 0x47
	.long	.LASF565
	.byte	0x5
	.uleb128 0x48
	.long	.LASF566
	.byte	0x5
	.uleb128 0x49
	.long	.LASF567
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF568
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF569
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF570
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF571
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF572
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF573
	.byte	0x5
	.uleb128 0x50
	.long	.LASF574
	.byte	0x5
	.uleb128 0x51
	.long	.LASF575
	.byte	0x5
	.uleb128 0x52
	.long	.LASF576
	.byte	0x5
	.uleb128 0x54
	.long	.LASF577
	.byte	0x5
	.uleb128 0x55
	.long	.LASF578
	.byte	0x5
	.uleb128 0x56
	.long	.LASF579
	.byte	0x5
	.uleb128 0x57
	.long	.LASF580
	.byte	0x5
	.uleb128 0x58
	.long	.LASF581
	.byte	0x5
	.uleb128 0x59
	.long	.LASF582
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF583
	.byte	0x5
	.uleb128 0x64
	.long	.LASF584
	.byte	0x5
	.uleb128 0x97
	.long	.LASF585
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF586
	.byte	0x5
	.uleb128 0xac
	.long	.LASF587
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF588
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF589
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF590
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF591
	.byte	0x5
	.uleb128 0xee
	.long	.LASF592
	.byte	0x5
	.uleb128 0x101
	.long	.LASF593
	.byte	0x5
	.uleb128 0x104
	.long	.LASF594
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF595
	.byte	0x5
	.uleb128 0x126
	.long	.LASF596
	.byte	0x5
	.uleb128 0x127
	.long	.LASF597
	.byte	0x5
	.uleb128 0x128
	.long	.LASF598
	.byte	0x5
	.uleb128 0x129
	.long	.LASF599
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF600
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF601
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
.LASF399:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF618:
	.string	"list_t"
.LASF508:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF486:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF418:
	.string	"PAGE_SHIFT 12"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF433:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF481:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF638:
	.string	"chardevs"
.LASF598:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF398:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF409:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF534:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF643:
	.string	"lessthaneq"
.LASF514:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF438:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF536:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF427:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF352:
	.string	"__k8__ 1"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF485:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF597:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF651:
	.string	"flags"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF595:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF528:
	.string	"MAX_LAPICS 8"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF591:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF388:
	.string	"MEM_ZERO_MINOR 1"
.LASF458:
	.string	"TTY_MAJOR 2"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF527:
	.string	"IPL_HIGHEST 0xff"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF606:
	.string	"unsigned int"
.LASF567:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF419:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF633:
	.string	"mobj"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF478:
	.string	"INDEX_MASK 0b111111111"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF378:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF410:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF592:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF566:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF549:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF461:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF497:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF211:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF551:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF593:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF575:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF600:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF397:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF645:
	.string	"lessthan"
.LASF465:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF586:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF477:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF619:
	.string	"list_link_t"
.LASF448:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF479:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF377:
	.string	"MINOR_BITS 8"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF518:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF585:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF589:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF620:
	.string	"list"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF415:
	.string	"VGA_AREA ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF540:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF539:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF607:
	.string	"uint32_t"
.LASF572:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF429:
	.string	"USE_2MB_PAGES 1"
.LASF616:
	.string	"l_next"
.LASF470:
	.string	"PT_USER 0x004"
.LASF417:
	.string	"VGA_DEFAULT_ATTRIB 0xF"
.LASF393:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF424:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF396:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF466:
	.string	"VMMAP_DIR_LOHI 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF526:
	.string	"IPL_HIGH 0xe0"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF435:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF462:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF496:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF640:
	.string	"chardev_lookup"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF576:
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
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF505:
	.string	"MAX_VNODES 1024"
.LASF483:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF515:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF537:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF554:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF652:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF394:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF649:
	.string	"intr_disable"
.LASF541:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF402:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF507:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF559:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF569:
	.string	"DBG_KB DBG_MODE(22)"
.LASF375:
	.string	"NULL 0"
.LASF517:
	.string	"INTR_GPF 0x0d"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF379:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF354:
	.string	"__MMX__ 1"
.LASF426:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF516:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF449:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF558:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF601:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF386:
	.string	"MEM_MAJOR 1"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF495:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF644:
	.string	"greaterthan"
.LASF439:
	.string	"PAGE_SHIFT_1GB 30"
.LASF469:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF613:
	.string	"size_t"
.LASF582:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF608:
	.string	"int64_t"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF442:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF617:
	.string	"l_prev"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF570:
	.string	"DBG_THR DBG_MODE(23)"
.LASF490:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
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
.LASF588:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF343:
	.string	"__amd64__ 1"
.LASF434:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF628:
	.string	"mmap"
.LASF547:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF395:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF446:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF471:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF472:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF452:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF563:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF641:
	.string	"chardev_register"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF476:
	.string	"PT_GLOBAL 0x100"
.LASF647:
	.string	"equals"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF454:
	.string	"VTC_DEFAULT_FOREGROUND VTCOLOR_GREY"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF521:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF635:
	.string	"char"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF456:
	.string	"VTC_DEFAULT_ATTR (vtattr_t) { 0, VTC_DEFAULT_FOREGROUND, VTC_DEFAULT_BACKGROUND }"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF453:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF445:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF389:
	.string	"inline __attribute__((always_inline, used))"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF489:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF555:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF544:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF423:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF590:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF416:
	.string	"VGA_BUFFER_SIZE ((uint16_t)(VGA_WIDTH * VGA_HEIGHT))"
.LASF581:
	.string	"DBG_USER DBG_MODE(38)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF614:
	.string	"ssize_t"
.LASF624:
	.string	"cd_link"
.LASF498:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF653:
	.string	"drivers/chardev.c"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF599:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF630:
	.string	"flush_pframe"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF519:
	.string	"INTR_APICTIMER 0xf0"
.LASF571:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF656:
	.string	"list_insert_tail"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF574:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF646:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF499:
	.string	"TICK_MSECS 10"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF14:
	.string	"_LP64 1"
.LASF475:
	.string	"PT_SIZE 0x080"
.LASF654:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF553:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF382:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF344:
	.string	"__x86_64 1"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF627:
	.string	"write"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF468:
	.string	"PT_PRESENT 0x001"
.LASF546:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF440:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF383:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF474:
	.string	"PT_DIRTY 0x040"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF421:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF556:
	.string	"DBG_TERM DBG_MODE(9)"
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
.LASF428:
	.string	"PAGE_NSIZES 8"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF509:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF493:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF355:
	.string	"__SSE__ 1"
.LASF538:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF530:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF531:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF0:
	.string	"__STDC__ 1"
.LASF356:
	.string	"__SSE2__ 1"
.LASF564:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF431:
	.string	"PAGE_SHIFT_2MB 21"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF584:
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
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF578:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF522:
	.string	"INTR_SPURIOUS 0xfe"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF487:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF625:
	.string	"chardev_ops"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF504:
	.string	"MAX_VFS 8"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF425:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF441:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF506:
	.string	"NAME_LEN 28"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF501:
	.string	"PF_HASH_SIZE 17"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF550:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF642:
	.string	"greaterthaneq"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
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
.LASF432:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF579:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF587:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF362:
	.string	"__SEG_GS 1"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF404:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF525:
	.string	"IPL_LOW 0"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF523:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF513:
	.string	"PID_INIT 1"
.LASF412:
	.string	"VGA_WIDTH ((uint16_t)80)"
.LASF596:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF455:
	.string	"VTC_DEFAULT_BACKGROUND VTCOLOR_BLACK"
.LASF637:
	.string	"tty_init"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF443:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF560:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF604:
	.string	"short int"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF609:
	.string	"long int"
.LASF500:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF639:
	.string	"__next_cd"
.LASF414:
	.string	"VGA_LINE_SIZE ((size_t)(VGA_WIDTH * sizeof(uint16_t)))"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF533:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF437:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF482:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF650:
	.string	"intr_enable"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF391:
	.string	"offsetof(type,member) ((uintptr_t)((char *)&((type *)(0))->member - (char *)0))"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF113:
	.string	"__INT32_C(c) c"
.LASF636:
	.string	"memdevs_init"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF577:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF364:
	.string	"__linux 1"
.LASF580:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF447:
	.string	"PAGE_SHIFT_512GB 39"
.LASF408:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF464:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF610:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF480:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF406:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF594:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF405:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF535:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF583:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF473:
	.string	"PT_ACCESSED 0x020"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
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
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF492:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF626:
	.string	"read"
.LASF512:
	.string	"PID_IDLE 0"
.LASF436:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF562:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF463:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF659:
	.string	"intr_enabled"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF420:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF612:
	.string	"uintptr_t"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF380:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF648:
	.string	"intr_wait"
.LASF361:
	.string	"__SEG_FS 1"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF543:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF611:
	.string	"long unsigned int"
.LASF494:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF467:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF542:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF491:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF411:
	.string	"LDISC_BUFFER_SIZE 128"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF422:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF658:
	.string	"chardev_init"
.LASF622:
	.string	"cd_id"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF460:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF552:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF351:
	.string	"__k8 1"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF557:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF603:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF634:
	.string	"pframe"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF381:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF615:
	.string	"devid_t"
.LASF459:
	.string	"cd_to_tty(bd) CONTAINER_OF((bd), tty_t, tty_cdev)"
.LASF631:
	.string	"chardev_t"
.LASF357:
	.string	"__FXSR__ 1"
.LASF655:
	.string	"dbg_panic"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF565:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF510:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF450:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF488:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF403:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF520:
	.string	"INTR_KEYBOARD 0xe0"
.LASF632:
	.string	"vnode"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF561:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF623:
	.string	"cd_ops"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF384:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF532:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF387:
	.string	"MEM_NULL_MINOR 0"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF401:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF400:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF430:
	.string	"USE_1GB_PAGES 1"
.LASF407:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF602:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF605:
	.string	"short unsigned int"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF511:
	.string	"PROC_NAME_LEN 256"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF568:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF392:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF385:
	.string	"DISK_MAJOR 1"
.LASF573:
	.string	"DBG_VM DBG_MODE(28)"
.LASF657:
	.string	"__func__"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF390:
	.string	"noreturn __attribute__((noreturn))"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF444:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF451:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF529:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF629:
	.string	"fill_pframe"
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
.LASF548:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF457:
	.string	"VTC_ANSI_PARSER_STACK_SIZE 8"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF502:
	.string	"MAXPATHLEN 1024"
.LASF545:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF484:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF413:
	.string	"VGA_HEIGHT ((uint16_t)25)"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF503:
	.string	"MAX_FILES 1024"
.LASF524:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF621:
	.string	"chardev"
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
