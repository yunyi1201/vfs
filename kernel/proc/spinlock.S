	.file	"spinlock.c"
	.text
.Ltext0:
	.file 1 "proc/spinlock.c"
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
	.globl	spinlock_init
	.type	spinlock_init, @function
spinlock_init:
.LFB10:
	.loc 1 4 38
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 4 55
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	.loc 1 4 60
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	spinlock_init, .-spinlock_init
	.globl	spinlock_lock
	.type	spinlock_lock, @function
spinlock_lock:
.LFB11:
	.loc 1 7 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 12 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	spinlock_lock, .-spinlock_lock
	.globl	spinlock_unlock
	.type	spinlock_unlock, @function
spinlock_unlock:
.LFB12:
	.loc 1 15 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 16 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	spinlock_unlock, .-spinlock_unlock
	.globl	spinlock_ownslock
	.type	spinlock_ownslock, @function
spinlock_ownslock:
.LFB13:
	.loc 1 19 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 20 12
	movl	$1, %eax
	.loc 1 21 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	spinlock_ownslock, .-spinlock_ownslock
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/proc/spinlock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37f
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF600
	.byte	0xc
	.long	.LASF601
	.long	.LASF602
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF576
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF577
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF578
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF579
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF580
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF581
	.uleb128 0x4
	.long	.LASF584
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x6e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF582
	.uleb128 0x5
	.long	.LASF603
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.byte	0x10
	.long	0x90
	.uleb128 0x6
	.long	.LASF604
	.byte	0x5
	.byte	0x5
	.byte	0x13
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF583
	.uleb128 0x7
	.long	0x90
	.uleb128 0x4
	.long	.LASF585
	.byte	0x5
	.byte	0x6
	.byte	0x3
	.long	0x75
	.uleb128 0x8
	.byte	0x1
	.long	.LASF605
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdd
	.uleb128 0x9
	.long	.LASF586
	.byte	0x1
	.byte	0x12
	.byte	0x2b
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.byte	0x1
	.long	.LASF587
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x114
	.uleb128 0x9
	.long	.LASF586
	.byte	0x1
	.byte	0xe
	.byte	0x29
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF588
	.byte	0x1
	.byte	0x6
	.byte	0xd
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x145
	.uleb128 0x9
	.long	.LASF586
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF589
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x176
	.uleb128 0x9
	.long	.LASF586
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF590
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.long	.LASF591
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.long	.LASF592
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.long	.LASF598
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1fa
	.uleb128 0xe
	.long	.LASF606
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF593
	.byte	0x2
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x23c
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x124
	.byte	0x20
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x124
	.byte	0x28
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	.LASF594
	.byte	0x2
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x27e
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x122
	.byte	0x1d
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x122
	.byte	0x25
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	.LASF595
	.byte	0x2
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2c0
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x120
	.byte	0x1e
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x120
	.byte	0x26
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	.LASF596
	.byte	0x2
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x302
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x11e
	.byte	0x1b
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x11e
	.byte	0x23
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	.LASF597
	.byte	0x2
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x344
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x11c
	.byte	0x1c
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x11c
	.byte	0x24
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF599
	.byte	0x2
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x5b
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.string	"l"
	.byte	0x2
	.value	0x117
	.byte	0x19
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.value	0x117
	.byte	0x21
	.long	0x5b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.file 6 "include/globals.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x6
	.file 7 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x7
	.file 8 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 9 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 10 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.file 11 "include/proc/context.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.file 12 "include/mm/pagetable.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xc
	.file 13 "include/vm/vmmap.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.file 14 "include/util/list.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.file 15 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.file 16 "include/proc/sched.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x8
	.long	.LASF468
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF469
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF470
	.byte	0x4
	.file 17 "include/proc/kthread.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x4
	.file 18 "include/proc/proc.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x12
	.file 19 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF488
	.byte	0x4
	.file 20 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF575
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
	.long	.LASF381
	.byte	0x5
	.uleb128 0x7
	.long	.LASF382
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF383
	.byte	0x5
	.uleb128 0x11
	.long	.LASF384
	.byte	0x5
	.uleb128 0x12
	.long	.LASF385
	.byte	0x5
	.uleb128 0x14
	.long	.LASF386
	.byte	0x5
	.uleb128 0x15
	.long	.LASF387
	.byte	0x5
	.uleb128 0x18
	.long	.LASF388
	.byte	0x5
	.uleb128 0x19
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF392
	.byte	0x5
	.uleb128 0x20
	.long	.LASF393
	.byte	0x5
	.uleb128 0x22
	.long	.LASF394
	.byte	0x5
	.uleb128 0x23
	.long	.LASF395
	.byte	0x5
	.uleb128 0x25
	.long	.LASF396
	.byte	0x5
	.uleb128 0x26
	.long	.LASF397
	.byte	0x5
	.uleb128 0x27
	.long	.LASF398
	.byte	0x5
	.uleb128 0x28
	.long	.LASF399
	.byte	0x5
	.uleb128 0x29
	.long	.LASF400
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF401
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF402
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF403
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF404
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF405
	.byte	0x5
	.uleb128 0x30
	.long	.LASF406
	.byte	0x5
	.uleb128 0x31
	.long	.LASF407
	.byte	0x5
	.uleb128 0x32
	.long	.LASF408
	.byte	0x5
	.uleb128 0x33
	.long	.LASF409
	.byte	0x5
	.uleb128 0x34
	.long	.LASF410
	.byte	0x5
	.uleb128 0x35
	.long	.LASF411
	.byte	0x5
	.uleb128 0x37
	.long	.LASF412
	.byte	0x5
	.uleb128 0x38
	.long	.LASF413
	.byte	0x5
	.uleb128 0x39
	.long	.LASF414
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF415
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF416
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF417
	.byte	0x5
	.uleb128 0x40
	.long	.LASF418
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.kernel.h.27.55537b03585a581058170c4d492e9fbd,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF420
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF421
	.byte	0x5
	.uleb128 0x21
	.long	.LASF422
	.byte	0x5
	.uleb128 0x26
	.long	.LASF423
	.byte	0x5
	.uleb128 0x29
	.long	.LASF424
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF425
	.byte	0x5
	.uleb128 0x37
	.long	.LASF426
	.byte	0x5
	.uleb128 0x38
	.long	.LASF427
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF428
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF429
	.byte	0x5
	.uleb128 0x59
	.long	.LASF430
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF431
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF432
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF433
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF434
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF435
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF436
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF437
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF438
	.byte	0x5
	.uleb128 0x8
	.long	.LASF439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF440
	.byte	0x5
	.uleb128 0x7
	.long	.LASF441
	.byte	0x5
	.uleb128 0x8
	.long	.LASF442
	.byte	0x5
	.uleb128 0x9
	.long	.LASF443
	.byte	0x5
	.uleb128 0xa
	.long	.LASF444
	.byte	0x5
	.uleb128 0xb
	.long	.LASF445
	.byte	0x5
	.uleb128 0xc
	.long	.LASF446
	.byte	0x5
	.uleb128 0xd
	.long	.LASF447
	.byte	0x5
	.uleb128 0xe
	.long	.LASF448
	.byte	0x5
	.uleb128 0x10
	.long	.LASF449
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF450
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF452
	.byte	0x5
	.uleb128 0x20
	.long	.LASF453
	.byte	0x5
	.uleb128 0x21
	.long	.LASF454
	.byte	0x5
	.uleb128 0x23
	.long	.LASF449
	.byte	0x5
	.uleb128 0x24
	.long	.LASF455
	.byte	0x5
	.uleb128 0x25
	.long	.LASF456
	.byte	0x5
	.uleb128 0x26
	.long	.LASF457
	.byte	0x5
	.uleb128 0x28
	.long	.LASF458
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF459
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF461
	.byte	0x5
	.uleb128 0x30
	.long	.LASF462
	.byte	0x5
	.uleb128 0x31
	.long	.LASF463
	.byte	0x5
	.uleb128 0x32
	.long	.LASF464
	.byte	0x5
	.uleb128 0x33
	.long	.LASF465
	.byte	0x5
	.uleb128 0x35
	.long	.LASF466
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF467
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF471
	.byte	0x5
	.uleb128 0xf
	.long	.LASF472
	.byte	0x5
	.uleb128 0x10
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF475
	.byte	0x5
	.uleb128 0x23
	.long	.LASF476
	.byte	0x5
	.uleb128 0x24
	.long	.LASF477
	.byte	0x5
	.uleb128 0x25
	.long	.LASF478
	.byte	0x5
	.uleb128 0x26
	.long	.LASF479
	.byte	0x5
	.uleb128 0x27
	.long	.LASF480
	.byte	0x5
	.uleb128 0x28
	.long	.LASF481
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x5
	.uleb128 0x31
	.long	.LASF483
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
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF489
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF491
	.byte	0x5
	.uleb128 0x20
	.long	.LASF492
	.byte	0x5
	.uleb128 0x21
	.long	.LASF493
	.byte	0x5
	.uleb128 0x22
	.long	.LASF494
	.byte	0x5
	.uleb128 0x23
	.long	.LASF495
	.byte	0x5
	.uleb128 0x24
	.long	.LASF496
	.byte	0x5
	.uleb128 0x25
	.long	.LASF497
	.byte	0x5
	.uleb128 0x27
	.long	.LASF498
	.byte	0x5
	.uleb128 0x28
	.long	.LASF499
	.byte	0x5
	.uleb128 0x29
	.long	.LASF500
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF501
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF502
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF503
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF504
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF505
	.byte	0x5
	.uleb128 0x34
	.long	.LASF506
	.byte	0x5
	.uleb128 0x35
	.long	.LASF507
	.byte	0x5
	.uleb128 0x36
	.long	.LASF508
	.byte	0x5
	.uleb128 0x37
	.long	.LASF509
	.byte	0x5
	.uleb128 0x38
	.long	.LASF510
	.byte	0x5
	.uleb128 0x39
	.long	.LASF511
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF512
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF513
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF514
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF515
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF516
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF517
	.byte	0x5
	.uleb128 0x40
	.long	.LASF518
	.byte	0x5
	.uleb128 0x41
	.long	.LASF519
	.byte	0x5
	.uleb128 0x42
	.long	.LASF520
	.byte	0x5
	.uleb128 0x43
	.long	.LASF521
	.byte	0x5
	.uleb128 0x44
	.long	.LASF522
	.byte	0x5
	.uleb128 0x45
	.long	.LASF523
	.byte	0x5
	.uleb128 0x46
	.long	.LASF524
	.byte	0x5
	.uleb128 0x47
	.long	.LASF525
	.byte	0x5
	.uleb128 0x48
	.long	.LASF526
	.byte	0x5
	.uleb128 0x49
	.long	.LASF527
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF528
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF529
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF530
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF531
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF532
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF533
	.byte	0x5
	.uleb128 0x50
	.long	.LASF534
	.byte	0x5
	.uleb128 0x51
	.long	.LASF535
	.byte	0x5
	.uleb128 0x52
	.long	.LASF536
	.byte	0x5
	.uleb128 0x54
	.long	.LASF537
	.byte	0x5
	.uleb128 0x55
	.long	.LASF538
	.byte	0x5
	.uleb128 0x56
	.long	.LASF539
	.byte	0x5
	.uleb128 0x57
	.long	.LASF540
	.byte	0x5
	.uleb128 0x58
	.long	.LASF541
	.byte	0x5
	.uleb128 0x59
	.long	.LASF542
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF543
	.byte	0x5
	.uleb128 0x64
	.long	.LASF544
	.byte	0x5
	.uleb128 0x97
	.long	.LASF545
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF546
	.byte	0x5
	.uleb128 0xac
	.long	.LASF547
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF548
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF549
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF550
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF551
	.byte	0x5
	.uleb128 0xee
	.long	.LASF552
	.byte	0x5
	.uleb128 0x101
	.long	.LASF553
	.byte	0x5
	.uleb128 0x104
	.long	.LASF554
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF555
	.byte	0x5
	.uleb128 0x126
	.long	.LASF556
	.byte	0x5
	.uleb128 0x127
	.long	.LASF557
	.byte	0x5
	.uleb128 0x128
	.long	.LASF558
	.byte	0x5
	.uleb128 0x129
	.long	.LASF559
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF560
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF561
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF562
	.byte	0x5
	.uleb128 0x9
	.long	.LASF563
	.byte	0x5
	.uleb128 0xa
	.long	.LASF564
	.byte	0x5
	.uleb128 0xb
	.long	.LASF565
	.byte	0x5
	.uleb128 0xd
	.long	.LASF566
	.byte	0x5
	.uleb128 0xe
	.long	.LASF567
	.byte	0x5
	.uleb128 0x10
	.long	.LASF568
	.byte	0x5
	.uleb128 0x11
	.long	.LASF569
	.byte	0x5
	.uleb128 0x12
	.long	.LASF570
	.byte	0x5
	.uleb128 0x13
	.long	.LASF571
	.byte	0x5
	.uleb128 0x19
	.long	.LASF572
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF573
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF574
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
.LASF429:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF380:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF482:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF458:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF483:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF383:
	.string	"PAGE_SHIFT 12"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF453:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF558:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF428:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF469:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF587:
	.string	"spinlock_unlock"
.LASF494:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF594:
	.string	"lessthaneq"
.LASF488:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF403:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF496:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF392:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
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
.LASF457:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF557:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF601:
	.string	"proc/spinlock.c"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF555:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF575:
	.string	"MAX_LAPICS 8"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF574:
	.string	"IPL_HIGHEST 0xff"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF580:
	.string	"unsigned int"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF527:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF384:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF541:
	.string	"DBG_USER DBG_MODE(38)"
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
.LASF552:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF509:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF471:
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
.LASF110:
	.string	"__INT16_C(c) c"
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
.LASF511:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF545:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF560:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF427:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF596:
	.string	"lessthan"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF546:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF449:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF604:
	.string	"s_locked"
.LASF464:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF413:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF451:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF565:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF485:
	.string	"PROC_NAME_LEN 256"
.LASF382:
	.string	"packed __attribute__((packed))"
.LASF551:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF526:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF500:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF499:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF532:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF394:
	.string	"USE_2MB_PAGES 1"
.LASF462:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF442:
	.string	"PT_USER 0x004"
.LASF423:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF389:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF426:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF438:
	.string	"VMMAP_DIR_LOHI 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF498:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF399:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF400:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF377:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
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
.LASF479:
	.string	"MAX_VNODES 1024"
.LASF455:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF562:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF497:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF514:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF600:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF424:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF591:
	.string	"intr_disable"
.LASF501:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF432:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF481:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF529:
	.string	"DBG_KB DBG_MODE(22)"
.LASF381:
	.string	"NULL 0"
.LASF564:
	.string	"INTR_GPF 0x0d"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF354:
	.string	"__MMX__ 1"
.LASF391:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF563:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF414:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF561:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF567:
	.string	"INTR_KEYBOARD 0xe0"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF467:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF595:
	.string	"greaterthan"
.LASF404:
	.string	"PAGE_SHIFT_1GB 30"
.LASF441:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF344:
	.string	"__x86_64 1"
.LASF542:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF492:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF598:
	.string	"intr_enabled"
.LASF407:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF530:
	.string	"DBG_THR DBG_MODE(23)"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF450:
	.string	"INDEX_MASK 0b111111111"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF548:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF606:
	.string	"flags"
.LASF343:
	.string	"__amd64__ 1"
.LASF507:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF425:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF411:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF443:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF444:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF417:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF398:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF523:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF468:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF448:
	.string	"PT_GLOBAL 0x100"
.LASF397:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF599:
	.string	"equals"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF396:
	.string	"PAGE_SHIFT_2MB 21"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF568:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF583:
	.string	"char"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF510:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF518:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF410:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF419:
	.string	"inline __attribute__((always_inline, used))"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF345:
	.string	"__x86_64__ 1"
.LASF461:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF515:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF504:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF388:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF550:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF569:
	.string	"INTR_SPURIOUS 0xfe"
.LASF376:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF472:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF559:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF588:
	.string	"spinlock_lock"
.LASF566:
	.string	"INTR_APICTIMER 0xf0"
.LASF531:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF524:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF534:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF597:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF573:
	.string	"IPL_HIGH 0xe0"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF473:
	.string	"TICK_MSECS 10"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF14:
	.string	"_LP64 1"
.LASF447:
	.string	"PT_SIZE 0x080"
.LASF602:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF513:
	.string	"DBG_KMALLOC DBG_MODE(6)"
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
.LASF586:
	.string	"lock"
.LASF440:
	.string	"PT_PRESENT 0x001"
.LASF506:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF405:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF446:
	.string	"PT_DIRTY 0x040"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF386:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF516:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF368:
	.string	"__ELF__ 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF68:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF393:
	.string	"PAGE_NSIZES 8"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF465:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF355:
	.string	"__SSE__ 1"
.LASF490:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF491:
	.string	"_RED_ \"\\x1b[31;40m\""
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
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF544:
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
.LASF409:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF538:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF519:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF535:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF459:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF478:
	.string	"MAX_VFS 8"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF390:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF406:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF480:
	.string	"NAME_LEN 28"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF475:
	.string	"PF_HASH_SIZE 17"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF593:
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
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF547:
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
.LASF434:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF572:
	.string	"IPL_LOW 0"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF570:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF522:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF556:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF585:
	.string	"spinlock_t"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF408:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF520:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF578:
	.string	"short int"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF581:
	.string	"long int"
.LASF474:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF470:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF493:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF402:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF454:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF592:
	.string	"intr_enable"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF421:
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
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF364:
	.string	"__linux 1"
.LASF540:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF412:
	.string	"PAGE_SHIFT_512GB 39"
.LASF418:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF379:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF584:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF452:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF436:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF554:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF435:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF495:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF543:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF445:
	.string	"PT_ACCESSED 0x020"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF589:
	.string	"spinlock_init"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF385:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF486:
	.string	"PID_IDLE 0"
.LASF401:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF378:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF590:
	.string	"intr_wait"
.LASF361:
	.string	"__SEG_FS 1"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF503:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF582:
	.string	"long unsigned int"
.LASF466:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF439:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF502:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF463:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF539:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF387:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF375:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF512:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF351:
	.string	"__k8 1"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF517:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF577:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF603:
	.string	"spinlock"
.LASF357:
	.string	"__FXSR__ 1"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF525:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF484:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF415:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF460:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF433:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF537:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF521:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF420:
	.string	"noreturn __attribute__((noreturn))"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF431:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF430:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF395:
	.string	"USE_1GB_PAGES 1"
.LASF437:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF576:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF579:
	.string	"short unsigned int"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF528:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF422:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF533:
	.string	"DBG_VM DBG_MODE(28)"
.LASF536:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF487:
	.string	"PID_INIT 1"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF416:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF489:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
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
.LASF605:
	.string	"spinlock_ownslock"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF508:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF549:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF476:
	.string	"MAXPATHLEN 1024"
.LASF505:
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
.LASF456:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF477:
	.string	"MAX_FILES 1024"
.LASF571:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF553:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
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
