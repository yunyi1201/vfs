	.file	"pcie.c"
	.text
.Ltext0:
	.file 1 "drivers/pcie.c"
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
	.local	pcie_base_addr
	.comm	pcie_base_addr,8,8
	.local	pcie_table
	.comm	pcie_table,8,8
	.local	pcie_wrapper_list
	.comm	pcie_wrapper_list,16,16
	.section	.rodata
.LC0:
	.string	"MCFG"
.LC1:
	.string	"table"
.LC2:
	.string	"assertion failed: %s"
.LC3:
	.string	"drivers/pcie.c"
	.text
	.globl	pci_init
	.type	pci_init, @function
pci_init:
.LFB10:
	.loc 1 24 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 26 30
	movabsq	$.LC0, %rax
	.loc 1 26 19
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	movabsq	$acpi_table, %rax
	call	*%rax
.LVL0:
	movq	%rax, -56(%rbp)
	.loc 1 27 5
	cmpq	$0, -56(%rbp)
	jne	.L19
	.loc 1 27 5 is_stmt 0 discriminator 1
	movabsq	$.LC1, %r8
	movabsq	$.LC2, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$27, %esi
	movabsq	$.LC3, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL1:
.L19:
	.loc 1 28 37 is_stmt 1
	movq	-56(%rbp), %rax
	.loc 1 28 54
	addq	$44, %rax
	.loc 1 28 22
	movq	(%rax), %rax
	.loc 1 28 60
	movabsq	$-131941395333120, %rdx
	addq	%rax, %rdx
	.loc 1 28 20
	movabsq	$pcie_base_addr, %rax
	movq	%rdx, (%rax)
	.loc 1 29 18
	movabsq	$pcie_base_addr, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 1 29 16
	movabsq	$pcie_table, %rax
	movq	%rdx, (%rax)
	.loc 1 30 5
	movabsq	$pcie_base_addr, %rax
	movq	(%rax), %rax
	leaq	1073741824(%rax), %r13
	movabsq	$pcie_base_addr, %rax
	movq	(%rax), %rbx
	movabsq	$pcie_base_addr, %rax
	movq	(%rax), %rax
	movabsq	$131941395333120, %rdx
	leaq	(%rax,%rdx), %r12
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL2:
	movl	$3, %r9d
	movl	$3, %r8d
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movabsq	$pt_map_range, %rax
	call	*%rax
.LVL3:
	.loc 1 34 5
	movabsq	$pcie_wrapper_list, %rax
	movq	%rax, %rdi
	movabsq	$list_init, %rax
	call	*%rax
.LVL4:
.LBB2:
	.loc 1 35 19
	movl	$0, -36(%rbp)
	.loc 1 35 5
	jmp	.L20
.L30:
.LBB3:
	.loc 1 37 23
	movl	$0, -40(%rbp)
	.loc 1 37 9
	jmp	.L21
.L29:
.LBB4:
	.loc 1 40 18
	movabsq	$pcie_table, %rax
	movq	(%rax), %rax
	.loc 1 40 52
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	salq	$5, %rcx
	addq	%rcx, %rdx
	salq	$15, %rdx
	addq	%rdx, %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	.loc 1 42 21
	testb	%al, %al
	jns	.L22
	.loc 1 42 21 is_stmt 0 discriminator 1
	movl	$32, %eax
	jmp	.L23
.L22:
	.loc 1 42 21 discriminator 2
	movl	$1, %eax
.L23:
	.loc 1 39 26 is_stmt 1
	movl	%eax, -60(%rbp)
.LBB5:
	.loc 1 43 27
	movl	$0, -44(%rbp)
	.loc 1 43 13
	jmp	.L24
.L28:
.LBB6:
	.loc 1 45 38
	movabsq	$pcie_table, %rax
	movq	(%rax), %rax
	.loc 1 45 32
	movl	-44(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	%rcx, %rsi
	salq	$5, %rsi
	movl	-40(%rbp), %ecx
	addq	%rsi, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	salq	$12, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 46 35
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 46 20
	testw	%ax, %ax
	je	.L31
	.loc 1 47 34 discriminator 2
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 46 46 discriminator 2
	cmpw	$-1, %ax
	je	.L31
	.loc 1 50 21
	movl	$32, %edi
	movabsq	$kmalloc, %rax
	call	*%rax
.LVL5:
	movq	%rax, -80(%rbp)
	.loc 1 51 30
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 52 47
	movq	-72(%rbp), %rax
	movzbl	11(%rax), %edx
	.loc 1 52 32
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 53 50
	movq	-72(%rbp), %rax
	movzbl	10(%rax), %edx
	.loc 1 53 35
	movq	-80(%rbp), %rax
	movb	%dl, 1(%rax)
	.loc 1 54 51
	movq	-72(%rbp), %rax
	movzbl	9(%rax), %edx
	.loc 1 54 36
	movq	-80(%rbp), %rax
	movb	%dl, 2(%rax)
	.loc 1 55 17
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL6:
	.loc 1 56 17
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movabsq	$pcie_wrapper_list, %rax
	movq	%rax, %rdi
	movabsq	$list_insert_tail, %rax
	call	*%rax
.LVL7:
	jmp	.L27
.L31:
	.loc 1 48 21
	nop
.L27:
.LBE6:
	.loc 1 43 75 discriminator 2
	addl	$1, -44(%rbp)
.L24:
	.loc 1 43 50 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L28
.LBE5:
.LBE4:
	.loc 1 37 75 discriminator 2
	addl	$1, -40(%rbp)
.L21:
	.loc 1 37 42 discriminator 1
	cmpl	$31, -40(%rbp)
	jbe	.L29
.LBE3:
	.loc 1 35 52 discriminator 2
	addl	$1, -36(%rbp)
.L20:
	.loc 1 35 32 discriminator 1
	cmpl	$255, -36(%rbp)
	jbe	.L30
.LBE2:
	.loc 1 60 1
	nop
	nop
	addq	$56, %rsp
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
.LFE10:
	.size	pci_init, .-pci_init
	.globl	pcie_lookup
	.type	pcie_lookup, @function
pcie_lookup:
.LFB11:
	.loc 1 63 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -20(%rbp)
	movl	%ecx, %edx
	movb	%dl, -24(%rbp)
	movb	%al, -28(%rbp)
.LBB7:
	.loc 1 64 5
	movabsq	$pcie_wrapper_list, %rax
	movq	(%rax), %rax
	subq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.L33
.L39:
	.loc 1 67 12
	cmpb	$-1, -20(%rbp)
	je	.L34
	.loc 1 67 56 discriminator 2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 67 45 discriminator 2
	cmpb	%al, -20(%rbp)
	jne	.L35
.L34:
	.loc 1 67 75 discriminator 3
	cmpb	$-1, -24(%rbp)
	je	.L36
	.loc 1 69 22
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	.loc 1 68 48
	cmpb	%al, -24(%rbp)
	jne	.L35
.L36:
	.loc 1 69 47
	cmpb	$-1, -28(%rbp)
	je	.L37
	.loc 1 71 22
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 70 49
	cmpb	%al, -28(%rbp)
	jne	.L35
.L37:
	.loc 1 73 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L38
.L35:
	.loc 1 64 5 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	$16, %rax
	movq	%rax, -16(%rbp)
.L33:
	.loc 1 64 5 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movabsq	$pcie_wrapper_list, %rax
	cmpq	%rax, %rdx
	jne	.L39
.LBE7:
	.loc 1 76 12 is_stmt 1
	movl	$0, %eax
.L38:
	.loc 1 77 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	pcie_lookup, .-pcie_lookup
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 9
__func__.0:
	.string	"pci_init"
	.text
.Letext0:
	.file 4 "include/types.h"
	.file 5 "include/util/list.h"
	.file 6 "include/drivers/pcie.h"
	.file 7 "include/mm/pagetable.h"
	.file 8 "include/mm/kmalloc.h"
	.file 9 "include/main/acpi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9ff
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF683
	.byte	0xc
	.long	.LASF684
	.long	.LASF685
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF587
	.uleb128 0x3
	.long	.LASF590
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF588
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF589
	.uleb128 0x3
	.long	.LASF591
	.byte	0x4
	.byte	0xc
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF592
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF593
	.byte	0x4
	.byte	0xe
	.byte	0x16
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF594
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF595
	.uleb128 0x3
	.long	.LASF596
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF597
	.uleb128 0x3
	.long	.LASF598
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x92
	.uleb128 0x3
	.long	.LASF599
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.long	0x86
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF604
	.byte	0x10
	.byte	0x5
	.byte	0x5e
	.byte	0x10
	.long	0xdb
	.uleb128 0x7
	.long	.LASF600
	.byte	0x5
	.byte	0x60
	.byte	0x12
	.long	0xdb
	.byte	0
	.uleb128 0x7
	.long	.LASF601
	.byte	0x5
	.byte	0x61
	.byte	0x12
	.long	0xdb
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb3
	.uleb128 0x3
	.long	.LASF602
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.long	0xb3
	.uleb128 0x3
	.long	.LASF603
	.byte	0x5
	.byte	0x62
	.byte	0xb
	.long	0xb3
	.uleb128 0x6
	.long	.LASF605
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x10
	.long	0x12d
	.uleb128 0x9
	.string	"id"
	.byte	0x6
	.byte	0x14
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF606
	.byte	0x6
	.byte	0x15
	.byte	0xd
	.long	0x38
	.byte	0x1
	.uleb128 0x7
	.long	.LASF607
	.byte	0x6
	.byte	0x16
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF608
	.byte	0x6
	.byte	0x17
	.byte	0xa
	.long	0xf9
	.uleb128 0xa
	.value	0x1000
	.byte	0x6
	.byte	0x34
	.byte	0x5
	.long	0x151
	.uleb128 0x7
	.long	.LASF609
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.long	0x151
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x162
	.long	0x162
	.uleb128 0xc
	.long	0x92
	.value	0xfff
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF610
	.uleb128 0xd
	.long	0x162
	.uleb128 0xe
	.byte	0x70
	.byte	0x6
	.byte	0x38
	.byte	0x5
	.long	0x366
	.uleb128 0x7
	.long	.LASF611
	.byte	0x6
	.byte	0x3a
	.byte	0x12
	.long	0x52
	.byte	0
	.uleb128 0x7
	.long	.LASF612
	.byte	0x6
	.byte	0x3b
	.byte	0x12
	.long	0x52
	.byte	0x2
	.uleb128 0x7
	.long	.LASF613
	.byte	0x6
	.byte	0x3c
	.byte	0x12
	.long	0x52
	.byte	0x4
	.uleb128 0x7
	.long	.LASF614
	.byte	0x6
	.byte	0x3d
	.byte	0x12
	.long	0x52
	.byte	0x6
	.uleb128 0x7
	.long	.LASF615
	.byte	0x6
	.byte	0x3e
	.byte	0x11
	.long	0x38
	.byte	0x8
	.uleb128 0x7
	.long	.LASF616
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.long	0x38
	.byte	0x9
	.uleb128 0x7
	.long	.LASF617
	.byte	0x6
	.byte	0x40
	.byte	0x11
	.long	0x38
	.byte	0xa
	.uleb128 0x7
	.long	.LASF618
	.byte	0x6
	.byte	0x41
	.byte	0x11
	.long	0x38
	.byte	0xb
	.uleb128 0x7
	.long	.LASF619
	.byte	0x6
	.byte	0x42
	.byte	0x11
	.long	0x38
	.byte	0xc
	.uleb128 0x7
	.long	.LASF620
	.byte	0x6
	.byte	0x43
	.byte	0x11
	.long	0x38
	.byte	0xd
	.uleb128 0x7
	.long	.LASF621
	.byte	0x6
	.byte	0x44
	.byte	0x11
	.long	0x38
	.byte	0xe
	.uleb128 0x7
	.long	.LASF622
	.byte	0x6
	.byte	0x45
	.byte	0x11
	.long	0x38
	.byte	0xf
	.uleb128 0x9
	.string	"bar"
	.byte	0x6
	.byte	0x46
	.byte	0x12
	.long	0x366
	.byte	0x10
	.uleb128 0x7
	.long	.LASF623
	.byte	0x6
	.byte	0x47
	.byte	0x12
	.long	0x6c
	.byte	0x28
	.uleb128 0x7
	.long	.LASF624
	.byte	0x6
	.byte	0x48
	.byte	0x12
	.long	0x52
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF625
	.byte	0x6
	.byte	0x49
	.byte	0x12
	.long	0x52
	.byte	0x2e
	.uleb128 0x7
	.long	.LASF626
	.byte	0x6
	.byte	0x4a
	.byte	0x12
	.long	0x6c
	.byte	0x30
	.uleb128 0x7
	.long	.LASF627
	.byte	0x6
	.byte	0x4b
	.byte	0x11
	.long	0x38
	.byte	0x34
	.uleb128 0x7
	.long	.LASF628
	.byte	0x6
	.byte	0x4c
	.byte	0x11
	.long	0x376
	.byte	0x35
	.uleb128 0x7
	.long	.LASF629
	.byte	0x6
	.byte	0x4d
	.byte	0x11
	.long	0x38
	.byte	0x3c
	.uleb128 0x7
	.long	.LASF630
	.byte	0x6
	.byte	0x4e
	.byte	0x11
	.long	0x38
	.byte	0x3d
	.uleb128 0x7
	.long	.LASF631
	.byte	0x6
	.byte	0x4f
	.byte	0x11
	.long	0x38
	.byte	0x3e
	.uleb128 0x7
	.long	.LASF632
	.byte	0x6
	.byte	0x50
	.byte	0x11
	.long	0x38
	.byte	0x3f
	.uleb128 0x7
	.long	.LASF633
	.byte	0x6
	.byte	0x51
	.byte	0x1a
	.long	0x12d
	.byte	0x40
	.uleb128 0x7
	.long	.LASF634
	.byte	0x6
	.byte	0x52
	.byte	0x12
	.long	0x52
	.byte	0x44
	.uleb128 0x9
	.string	"bse"
	.byte	0x6
	.byte	0x53
	.byte	0x11
	.long	0x38
	.byte	0x46
	.uleb128 0x7
	.long	.LASF609
	.byte	0x6
	.byte	0x54
	.byte	0x11
	.long	0x38
	.byte	0x47
	.uleb128 0x7
	.long	.LASF635
	.byte	0x6
	.byte	0x55
	.byte	0x1a
	.long	0x12d
	.byte	0x48
	.uleb128 0x7
	.long	.LASF636
	.byte	0x6
	.byte	0x56
	.byte	0x12
	.long	0x86
	.byte	0x50
	.uleb128 0x7
	.long	.LASF637
	.byte	0x6
	.byte	0x57
	.byte	0x12
	.long	0x52
	.byte	0x58
	.uleb128 0x7
	.long	.LASF638
	.byte	0x6
	.byte	0x58
	.byte	0x11
	.long	0x386
	.byte	0x5a
	.uleb128 0x7
	.long	.LASF639
	.byte	0x6
	.byte	0x59
	.byte	0x1a
	.long	0x12d
	.byte	0x5c
	.uleb128 0x7
	.long	.LASF640
	.byte	0x6
	.byte	0x5a
	.byte	0x12
	.long	0x6c
	.byte	0x60
	.uleb128 0x7
	.long	.LASF641
	.byte	0x6
	.byte	0x5b
	.byte	0x12
	.long	0x52
	.byte	0x64
	.uleb128 0x7
	.long	.LASF642
	.byte	0x6
	.byte	0x5c
	.byte	0x12
	.long	0x52
	.byte	0x66
	.uleb128 0x7
	.long	.LASF643
	.byte	0x6
	.byte	0x5d
	.byte	0x12
	.long	0x6c
	.byte	0x68
	.uleb128 0x7
	.long	.LASF644
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.long	0x52
	.byte	0x6c
	.uleb128 0x7
	.long	.LASF645
	.byte	0x6
	.byte	0x5f
	.byte	0x12
	.long	0x52
	.byte	0x6e
	.byte	0
	.uleb128 0xb
	.long	0x6c
	.long	0x376
	.uleb128 0xf
	.long	0x92
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x38
	.long	0x386
	.uleb128 0xf
	.long	0x92
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x38
	.long	0x396
	.uleb128 0xf
	.long	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF686
	.value	0x1000
	.byte	0x6
	.byte	0x33
	.byte	0xf
	.long	0x3bd
	.uleb128 0x11
	.string	"raw"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.long	0x139
	.uleb128 0x12
	.long	.LASF646
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x16e
	.byte	0
	.uleb128 0x3
	.long	.LASF647
	.byte	0x6
	.byte	0x61
	.byte	0xa
	.long	0x396
	.uleb128 0x6
	.long	.LASF648
	.byte	0x20
	.byte	0x6
	.byte	0x65
	.byte	0x10
	.long	0x418
	.uleb128 0x7
	.long	.LASF618
	.byte	0x6
	.byte	0x67
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF617
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.long	0x38
	.byte	0x1
	.uleb128 0x7
	.long	.LASF649
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.long	0x38
	.byte	0x2
	.uleb128 0x9
	.string	"dev"
	.byte	0x6
	.byte	0x6a
	.byte	0x14
	.long	0x418
	.byte	0x8
	.uleb128 0x7
	.long	.LASF650
	.byte	0x6
	.byte	0x6b
	.byte	0x11
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3bd
	.uleb128 0x3
	.long	.LASF651
	.byte	0x6
	.byte	0x6c
	.byte	0x3
	.long	0x3c9
	.uleb128 0x13
	.string	"pt"
	.value	0x1000
	.byte	0x7
	.byte	0x18
	.byte	0x10
	.long	0x445
	.uleb128 0x7
	.long	.LASF652
	.byte	0x7
	.byte	0x1a
	.byte	0xf
	.long	0x445
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x99
	.long	0x456
	.uleb128 0xc
	.long	0x92
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF653
	.byte	0x7
	.byte	0x1b
	.byte	0x16
	.long	0x42a
	.uleb128 0x8
	.byte	0x8
	.long	0x456
	.uleb128 0x14
	.long	.LASF657
	.byte	0x1
	.byte	0x9
	.byte	0x12
	.long	0x99
	.byte	0x9
	.byte	0x3
	.quad	pcie_base_addr
	.uleb128 0x15
	.long	.LASF654
	.long	0x10000000
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.long	0x49c
	.uleb128 0x7
	.long	.LASF655
	.byte	0x1
	.byte	0xd
	.byte	0x13
	.long	0x49c
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x3bd
	.long	0x4b8
	.uleb128 0xf
	.long	0x92
	.byte	0xff
	.uleb128 0xf
	.long	0x92
	.byte	0x1f
	.uleb128 0xf
	.long	0x92
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF656
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.long	0x47e
	.uleb128 0x14
	.long	.LASF654
	.byte	0x1
	.byte	0x11
	.byte	0x16
	.long	0x4da
	.byte	0x9
	.byte	0x3
	.quad	pcie_table
	.uleb128 0x8
	.byte	0x8
	.long	0x4b8
	.uleb128 0x14
	.long	.LASF658
	.byte	0x1
	.byte	0x15
	.byte	0xf
	.long	0xe1
	.byte	0x9
	.byte	0x3
	.quad	pcie_wrapper_list
	.uleb128 0x16
	.byte	0x1
	.long	.LASF659
	.byte	0x5
	.byte	0x9c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x510
	.uleb128 0x17
	.long	0x510
	.uleb128 0x17
	.long	0x516
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe1
	.uleb128 0x8
	.byte	0x8
	.long	0xed
	.uleb128 0x16
	.byte	0x1
	.long	.LASF660
	.byte	0x5
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x531
	.uleb128 0x17
	.long	0x516
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF662
	.byte	0x8
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0x54a
	.uleb128 0x17
	.long	0xa5
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF661
	.byte	0x5
	.byte	0x6c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x55f
	.uleb128 0x17
	.long	0x510
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF663
	.byte	0x7
	.byte	0x57
	.byte	0x6
	.byte	0x1
	.long	0x7f
	.byte	0x1
	.long	0x591
	.uleb128 0x17
	.long	0x462
	.uleb128 0x17
	.long	0x99
	.uleb128 0x17
	.long	0x99
	.uleb128 0x17
	.long	0x99
	.uleb128 0x17
	.long	0x6c
	.uleb128 0x17
	.long	0x6c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF664
	.byte	0x7
	.byte	0x4a
	.byte	0x9
	.long	0x462
	.byte	0x1
	.long	0x5a5
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF665
	.byte	0x3
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x5cb
	.uleb128 0x17
	.long	0x5cb
	.uleb128 0x17
	.long	0x65
	.uleb128 0x17
	.long	0x5cb
	.uleb128 0x17
	.long	0x5cb
	.uleb128 0x1a
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x169
	.uleb128 0x18
	.byte	0x1
	.long	.LASF666
	.byte	0x9
	.byte	0x14
	.byte	0x7
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0x5ef
	.uleb128 0x17
	.long	0x6c
	.uleb128 0x17
	.long	0x65
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF687
	.byte	0x1
	.byte	0x3e
	.byte	0x10
	.byte	0x1
	.long	0x418
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x672
	.uleb128 0x1d
	.long	.LASF618
	.byte	0x1
	.byte	0x3e
	.byte	0x24
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF617
	.byte	0x1
	.byte	0x3e
	.byte	0x33
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF649
	.byte	0x1
	.byte	0x3e
	.byte	0x45
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x14
	.long	.LASF667
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF668
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.long	0x672
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x41e
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF688
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7e1
	.uleb128 0x14
	.long	.LASF669
	.byte	0x1
	.byte	0x1a
	.byte	0xb
	.long	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF689
	.long	0x7f1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2
	.long	0x79f
	.uleb128 0x22
	.string	"bus"
	.byte	0x1
	.byte	0x23
	.byte	0x13
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x14
	.long	.LASF670
	.byte	0x1
	.byte	0x25
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x14
	.long	.LASF671
	.byte	0x1
	.byte	0x27
	.byte	0x1a
	.long	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x14
	.long	.LASF672
	.byte	0x1
	.byte	0x2b
	.byte	0x1b
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x22
	.string	"dev"
	.byte	0x1
	.byte	0x2d
	.byte	0x20
	.long	0x418
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF667
	.byte	0x1
	.byte	0x31
	.byte	0x28
	.long	0x672
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LVL5
	.long	0x531
	.uleb128 0x23
	.quad	.LVL6
	.long	0x51c
	.uleb128 0x23
	.quad	.LVL7
	.long	0x4f6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL0
	.long	0x5d1
	.uleb128 0x23
	.quad	.LVL1
	.long	0x5a5
	.uleb128 0x23
	.quad	.LVL2
	.long	0x591
	.uleb128 0x23
	.quad	.LVL3
	.long	0x55f
	.uleb128 0x23
	.quad	.LVL4
	.long	0x54a
	.byte	0
	.uleb128 0xb
	.long	0x169
	.long	0x7f1
	.uleb128 0xf
	.long	0x92
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x7e1
	.uleb128 0x24
	.long	.LASF673
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
	.long	0x838
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x124
	.byte	0x20
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x124
	.byte	0x28
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF674
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
	.long	0x87a
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x122
	.byte	0x1d
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x122
	.byte	0x25
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF675
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
	.long	0x8bc
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x120
	.byte	0x1e
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x120
	.byte	0x26
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF676
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
	.long	0x8fe
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x11e
	.byte	0x1b
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x11e
	.byte	0x23
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF677
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
	.long	0x940
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x11c
	.byte	0x1c
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x11c
	.byte	0x24
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF678
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
	.long	0x982
	.uleb128 0x25
	.string	"l"
	.byte	0x3
	.value	0x117
	.byte	0x19
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"r"
	.byte	0x3
	.value	0x117
	.byte	0x21
	.long	0x7f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF679
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.long	.LASF680
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.long	.LASF681
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.long	.LASF690
	.byte	0x2
	.byte	0x51
	.byte	0x18
	.long	0x86
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x14
	.long	.LASF682
	.byte	0x2
	.byte	0x53
	.byte	0xe
	.long	0x86
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x25
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
	.file 10 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.file 11 "include/mm/page.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 12 "include/vm/vmmap.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
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
	.file 15 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.file 16 "include/proc/core.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.file 17 "include/proc/context.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x4
	.file 18 "include/proc/sched.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.file 19 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x8
	.long	.LASF477
	.byte	0x4
	.byte	0x5
	.uleb128 0x19
	.long	.LASF478
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF479
	.byte	0x4
	.file 20 "include/proc/kthread.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.byte	0x4
	.file 21 "include/proc/proc.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
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
	.long	.LASF497
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 23 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x10
	.long	.LASF511
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x5
	.uleb128 0x8
	.long	.LASF585
	.byte	0x5
	.uleb128 0x13
	.long	.LASF586
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
	.long	.LASF377
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x5
	.uleb128 0x21
	.long	.LASF380
	.byte	0x5
	.uleb128 0x26
	.long	.LASF381
	.byte	0x5
	.uleb128 0x29
	.long	.LASF382
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF383
	.byte	0x5
	.uleb128 0x37
	.long	.LASF384
	.byte	0x5
	.uleb128 0x38
	.long	.LASF385
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF386
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.81.e8b2f05650366a7d54625f3c709387c4,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x51
	.long	.LASF387
	.byte	0x5
	.uleb128 0x59
	.long	.LASF388
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF389
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF390
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF391
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF392
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF393
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF394
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF395
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pcie.h.5.b32a90fb266d93dfdeefd3f973a3e454,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF396
	.byte	0x5
	.uleb128 0x6
	.long	.LASF397
	.byte	0x5
	.uleb128 0x7
	.long	.LASF398
	.byte	0x5
	.uleb128 0x8
	.long	.LASF399
	.byte	0x5
	.uleb128 0x9
	.long	.LASF400
	.byte	0x5
	.uleb128 0xa
	.long	.LASF401
	.byte	0x5
	.uleb128 0xe
	.long	.LASF402
	.byte	0x5
	.uleb128 0x10
	.long	.LASF403
	.byte	0x5
	.uleb128 0x63
	.long	.LASF404
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF405
	.byte	0x5
	.uleb128 0x11
	.long	.LASF406
	.byte	0x5
	.uleb128 0x12
	.long	.LASF407
	.byte	0x5
	.uleb128 0x14
	.long	.LASF408
	.byte	0x5
	.uleb128 0x15
	.long	.LASF409
	.byte	0x5
	.uleb128 0x18
	.long	.LASF410
	.byte	0x5
	.uleb128 0x19
	.long	.LASF411
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF413
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF414
	.byte	0x5
	.uleb128 0x20
	.long	.LASF415
	.byte	0x5
	.uleb128 0x22
	.long	.LASF416
	.byte	0x5
	.uleb128 0x23
	.long	.LASF417
	.byte	0x5
	.uleb128 0x25
	.long	.LASF418
	.byte	0x5
	.uleb128 0x26
	.long	.LASF419
	.byte	0x5
	.uleb128 0x27
	.long	.LASF420
	.byte	0x5
	.uleb128 0x28
	.long	.LASF421
	.byte	0x5
	.uleb128 0x29
	.long	.LASF422
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF423
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF424
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF425
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF426
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF427
	.byte	0x5
	.uleb128 0x30
	.long	.LASF428
	.byte	0x5
	.uleb128 0x31
	.long	.LASF429
	.byte	0x5
	.uleb128 0x32
	.long	.LASF430
	.byte	0x5
	.uleb128 0x33
	.long	.LASF431
	.byte	0x5
	.uleb128 0x34
	.long	.LASF432
	.byte	0x5
	.uleb128 0x35
	.long	.LASF433
	.byte	0x5
	.uleb128 0x37
	.long	.LASF434
	.byte	0x5
	.uleb128 0x38
	.long	.LASF435
	.byte	0x5
	.uleb128 0x39
	.long	.LASF436
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF437
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF438
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF439
	.byte	0x5
	.uleb128 0x40
	.long	.LASF440
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.vmmap.h.7.19545d496afbad2f9659dd15270e0d7a,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x7
	.long	.LASF441
	.byte	0x5
	.uleb128 0x8
	.long	.LASF442
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pagetable.h.6.22608c150ad8426775e8969d2a213369,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.long	.LASF443
	.byte	0x5
	.uleb128 0x7
	.long	.LASF444
	.byte	0x5
	.uleb128 0x8
	.long	.LASF445
	.byte	0x5
	.uleb128 0x9
	.long	.LASF446
	.byte	0x5
	.uleb128 0xa
	.long	.LASF447
	.byte	0x5
	.uleb128 0xb
	.long	.LASF448
	.byte	0x5
	.uleb128 0xc
	.long	.LASF449
	.byte	0x5
	.uleb128 0xd
	.long	.LASF450
	.byte	0x5
	.uleb128 0xe
	.long	.LASF451
	.byte	0x5
	.uleb128 0x10
	.long	.LASF452
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF453
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF454
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF455
	.byte	0x5
	.uleb128 0x20
	.long	.LASF456
	.byte	0x5
	.uleb128 0x21
	.long	.LASF457
	.byte	0x5
	.uleb128 0x23
	.long	.LASF452
	.byte	0x5
	.uleb128 0x24
	.long	.LASF458
	.byte	0x5
	.uleb128 0x25
	.long	.LASF459
	.byte	0x5
	.uleb128 0x26
	.long	.LASF460
	.byte	0x5
	.uleb128 0x28
	.long	.LASF461
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF463
	.byte	0x5
	.uleb128 0x2e
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
	.uleb128 0x35
	.long	.LASF469
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF470
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.long	.LASF471
	.byte	0x5
	.uleb128 0x5
	.long	.LASF472
	.byte	0x5
	.uleb128 0x6
	.long	.LASF473
	.byte	0x5
	.uleb128 0x7
	.long	.LASF474
	.byte	0x5
	.uleb128 0xa
	.long	.LASF475
	.byte	0x5
	.uleb128 0xc
	.long	.LASF476
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.14.6e9669dd007d0bcb4308c0e82b88cc6e,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.long	.LASF480
	.byte	0x5
	.uleb128 0xf
	.long	.LASF481
	.byte	0x5
	.uleb128 0x10
	.long	.LASF482
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF484
	.byte	0x5
	.uleb128 0x23
	.long	.LASF485
	.byte	0x5
	.uleb128 0x24
	.long	.LASF486
	.byte	0x5
	.uleb128 0x25
	.long	.LASF487
	.byte	0x5
	.uleb128 0x26
	.long	.LASF488
	.byte	0x5
	.uleb128 0x27
	.long	.LASF489
	.byte	0x5
	.uleb128 0x28
	.long	.LASF490
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF491
	.byte	0x5
	.uleb128 0x31
	.long	.LASF492
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.proc.h.16.d5cbe4ff5cf52613d45c388ad8a49d2b,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF493
	.byte	0x5
	.uleb128 0x11
	.long	.LASF494
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF495
	.byte	0x5
	.uleb128 0xab
	.long	.LASF496
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.8.e18d17fef3e23eba1335c3f7cd8b9b26,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.long	.LASF498
	.byte	0x5
	.uleb128 0x9
	.long	.LASF499
	.byte	0x5
	.uleb128 0xa
	.long	.LASF500
	.byte	0x5
	.uleb128 0xb
	.long	.LASF501
	.byte	0x5
	.uleb128 0xd
	.long	.LASF502
	.byte	0x5
	.uleb128 0xe
	.long	.LASF503
	.byte	0x5
	.uleb128 0x10
	.long	.LASF504
	.byte	0x5
	.uleb128 0x11
	.long	.LASF505
	.byte	0x5
	.uleb128 0x12
	.long	.LASF506
	.byte	0x5
	.uleb128 0x13
	.long	.LASF507
	.byte	0x5
	.uleb128 0x19
	.long	.LASF508
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF509
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF510
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.debug.h.29.320d85be495b514ff3c326a420b3cb7f,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF514
	.byte	0x5
	.uleb128 0x20
	.long	.LASF515
	.byte	0x5
	.uleb128 0x21
	.long	.LASF516
	.byte	0x5
	.uleb128 0x22
	.long	.LASF517
	.byte	0x5
	.uleb128 0x23
	.long	.LASF518
	.byte	0x5
	.uleb128 0x24
	.long	.LASF519
	.byte	0x5
	.uleb128 0x25
	.long	.LASF520
	.byte	0x5
	.uleb128 0x27
	.long	.LASF521
	.byte	0x5
	.uleb128 0x28
	.long	.LASF522
	.byte	0x5
	.uleb128 0x29
	.long	.LASF523
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF524
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF525
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF526
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF527
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF528
	.byte	0x5
	.uleb128 0x34
	.long	.LASF529
	.byte	0x5
	.uleb128 0x35
	.long	.LASF530
	.byte	0x5
	.uleb128 0x36
	.long	.LASF531
	.byte	0x5
	.uleb128 0x37
	.long	.LASF532
	.byte	0x5
	.uleb128 0x38
	.long	.LASF533
	.byte	0x5
	.uleb128 0x39
	.long	.LASF534
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF535
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF536
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF537
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF538
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF539
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF540
	.byte	0x5
	.uleb128 0x40
	.long	.LASF541
	.byte	0x5
	.uleb128 0x41
	.long	.LASF542
	.byte	0x5
	.uleb128 0x42
	.long	.LASF543
	.byte	0x5
	.uleb128 0x43
	.long	.LASF544
	.byte	0x5
	.uleb128 0x44
	.long	.LASF545
	.byte	0x5
	.uleb128 0x45
	.long	.LASF546
	.byte	0x5
	.uleb128 0x46
	.long	.LASF547
	.byte	0x5
	.uleb128 0x47
	.long	.LASF548
	.byte	0x5
	.uleb128 0x48
	.long	.LASF549
	.byte	0x5
	.uleb128 0x49
	.long	.LASF550
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF551
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF552
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF553
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF554
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF555
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF556
	.byte	0x5
	.uleb128 0x50
	.long	.LASF557
	.byte	0x5
	.uleb128 0x51
	.long	.LASF558
	.byte	0x5
	.uleb128 0x52
	.long	.LASF559
	.byte	0x5
	.uleb128 0x54
	.long	.LASF560
	.byte	0x5
	.uleb128 0x55
	.long	.LASF561
	.byte	0x5
	.uleb128 0x56
	.long	.LASF562
	.byte	0x5
	.uleb128 0x57
	.long	.LASF563
	.byte	0x5
	.uleb128 0x58
	.long	.LASF564
	.byte	0x5
	.uleb128 0x59
	.long	.LASF565
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF566
	.byte	0x5
	.uleb128 0x64
	.long	.LASF567
	.byte	0x5
	.uleb128 0x97
	.long	.LASF568
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF569
	.byte	0x5
	.uleb128 0xac
	.long	.LASF570
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF571
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF572
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF573
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF574
	.byte	0x5
	.uleb128 0xee
	.long	.LASF575
	.byte	0x5
	.uleb128 0x101
	.long	.LASF576
	.byte	0x5
	.uleb128 0x104
	.long	.LASF577
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF578
	.byte	0x5
	.uleb128 0x126
	.long	.LASF579
	.byte	0x5
	.uleb128 0x127
	.long	.LASF580
	.byte	0x5
	.uleb128 0x128
	.long	.LASF581
	.byte	0x5
	.uleb128 0x129
	.long	.LASF582
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF583
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF584
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
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF602:
	.string	"list_t"
.LASF646:
	.string	"standard"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF461:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF405:
	.string	"PAGE_SHIFT 12"
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF456:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF623:
	.string	"cardbus_cis_pointer"
.LASF581:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF342:
	.string	"__amd64 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF386:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF478:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF517:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF674:
	.string	"lessthaneq"
.LASF663:
	.string	"pt_map_range"
.LASF519:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF414:
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
.LASF460:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF682:
	.string	"flags"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF497:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF649:
	.string	"interface"
.LASF511:
	.string	"MAX_LAPICS 8"
.LASF580:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF473:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF607:
	.string	"control"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF594:
	.string	"unsigned int"
.LASF624:
	.string	"subsystem_vendor_id"
.LASF406:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF625:
	.string	"subsystem_id"
.LASF629:
	.string	"interrupt_line"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF526:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF453:
	.string	"INDEX_MASK 0b111111111"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF549:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF638:
	.string	"_reserved2"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
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
.LASF480:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
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
.LASF675:
	.string	"greaterthan"
.LASF403:
	.string	"MSI_DATA_FOR(vector) ((uint16_t)(0b00000001 << 8) | (vector))"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF534:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF583:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF532:
	.string	"DBG_INIT DBG_MODE(2)"
.LASF510:
	.string	"IPL_HIGHEST 0xff"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF385:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF676:
	.string	"lessthan"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF569:
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
.LASF575:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF603:
	.string	"list_link_t"
.LASF435:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF454:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF611:
	.string	"vendor_id"
.LASF501:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF419:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF494:
	.string	"PROC_NAME_LEN 256"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF574:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF604:
	.string	"list"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF612:
	.string	"device_id"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF579:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF523:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF605:
	.string	"pci_capability"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF670:
	.string	"device"
.LASF301:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF522:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF639:
	.string	"pe_capability"
.LASF593:
	.string	"uint32_t"
.LASF555:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF416:
	.string	"USE_2MB_PAGES 1"
.LASF465:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF445:
	.string	"PT_USER 0x004"
.LASF436:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF381:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF367:
	.string	"__unix__ 1"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF411:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF384:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF441:
	.string	"VMMAP_DIR_LOHI 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF509:
	.string	"IPL_HIGH 0xe0"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF421:
	.string	"PAGE_ALIGN_DOWN_2MB(x) (((uintptr_t)(x)) & PAGE_MASK_2MB)"
.LASF668:
	.string	"__next_wrapper"
.LASF427:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF474:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF641:
	.string	"device_control"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF559:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF681:
	.string	"intr_enable"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF3:
	.string	"__GNUC__ 12"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF36:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF488:
	.string	"MAX_VNODES 1024"
.LASF458:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF498:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF520:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF537:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF683:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF600:
	.string	"l_next"
.LASF382:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF492:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF524:
	.string	"_BBLUE_ \"\\x1b[1;34;40m\""
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF390:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF490:
	.string	"NFILES 32"
.LASF183:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF542:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF375:
	.string	"NULL 0"
.LASF632:
	.string	"max_latency"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF664:
	.string	"pt_get"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF354:
	.string	"__MMX__ 1"
.LASF413:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF499:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF584:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF686:
	.string	"pcie_device"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF470:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF452:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF426:
	.string	"PAGE_SHIFT_1GB 30"
.LASF444:
	.string	"PT_WRITE 0x002"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF599:
	.string	"size_t"
.LASF636:
	.string	"message_address"
.LASF565:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF515:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF616:
	.string	"prog_if"
.LASF487:
	.string	"MAX_VFS 8"
.LASF429:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF601:
	.string	"l_prev"
.LASF577:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF553:
	.string	"DBG_THR DBG_MODE(23)"
.LASF431:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF398:
	.string	"PCI_NUM_FUNCTIONS_PER_DEVICE 8"
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
.LASF571:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF620:
	.string	"latency_type"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF343:
	.string	"__amd64__ 1"
.LASF530:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF383:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF433:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF245:
	.string	"__FLT128_DIG__ 33"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF446:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF447:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF315:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF439:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF491:
	.string	"VFS_ROOTFS_DEV \"disk0\""
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF420:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF546:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF475:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF590:
	.string	"uint8_t"
.LASF585:
	.string	"MCFG_SIGNATURE (*(uint32_t *)\"MCFG\")"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF451:
	.string	"PT_GLOBAL 0x100"
.LASF645:
	.string	"link_status"
.LASF678:
	.string	"equals"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF660:
	.string	"list_link_init"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF380:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF504:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF610:
	.string	"char"
.LASF622:
	.string	"bist"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF619:
	.string	"cache_line_size"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF541:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF647:
	.string	"pcie_device_t"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF377:
	.string	"inline __attribute__((always_inline, used))"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF345:
	.string	"__x86_64__ 1"
.LASF464:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF91:
	.string	"__INTMAX_C(c) c ## L"
.LASF538:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF527:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF486:
	.string	"MAX_FILES 1024"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF669:
	.string	"table"
.LASF606:
	.string	"next_cap"
.LASF410:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF609:
	.string	"data"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF628:
	.string	"_reserved1"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF387:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF627:
	.string	"capabilities_ptr"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF449:
	.string	"PT_DIRTY 0x040"
.LASF481:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF425:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF608:
	.string	"pci_capability_t"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
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
.LASF502:
	.string	"INTR_APICTIMER 0xf0"
.LASF621:
	.string	"header_type"
.LASF554:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF659:
	.string	"list_insert_tail"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF677:
	.string	"notequals"
.LASF15:
	.string	"__LP64__ 1"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF640:
	.string	"pcie_device_capabilities"
.LASF432:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF482:
	.string	"TICK_MSECS 10"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF652:
	.string	"phys"
.LASF14:
	.string	"_LP64 1"
.LASF450:
	.string	"PT_SIZE 0x080"
.LASF685:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF536:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF671:
	.string	"max_functions"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF397:
	.string	"PCI_NUM_DEVICES_PER_BUS 32"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF443:
	.string	"PT_PRESENT 0x001"
.LASF529:
	.string	"DBG_ALL (~0ULL)"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF573:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF408:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF539:
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
.LASF415:
	.string	"PAGE_NSIZES 8"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF468:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF290:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF351:
	.string	"__k8 1"
.LASF513:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF514:
	.string	"_RED_ \"\\x1b[31;40m\""
.LASF0:
	.string	"__STDC__ 1"
.LASF356:
	.string	"__SSE2__ 1"
.LASF547:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF418:
	.string	"PAGE_SHIFT_2MB 21"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF401:
	.string	"PCI_MSI_CAPABILITY_ID 0x5"
.LASF661:
	.string	"list_init"
.LASF402:
	.string	"MSI_ADDRESS_FOR(destination) ((uint32_t)((0x0FEE << 20) | ((destination) << 12) | (0b1100)))"
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
.LASF613:
	.string	"command"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF561:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF505:
	.string	"INTR_SPURIOUS 0xfe"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF558:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF462:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF476:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF344:
	.string	"__x86_64 1"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF412:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF428:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF489:
	.string	"NAME_LEN 28"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF484:
	.string	"PF_HASH_SIZE 17"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF533:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF673:
	.string	"greaterthaneq"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF653:
	.string	"pml4_t"
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
.LASF684:
	.string	"drivers/pcie.c"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF557:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF626:
	.string	"expansion_rom_base_addr"
.LASF550:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF570:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF578:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF362:
	.string	"__SEG_GS 1"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF591:
	.string	"uint16_t"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF642:
	.string	"device_status"
.LASF552:
	.string	"DBG_KB DBG_MODE(22)"
.LASF392:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF508:
	.string	"IPL_LOW 0"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF506:
	.string	"INTR_APICERR 0xff"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF545:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF687:
	.string	"pcie_lookup"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF472:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF430:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF543:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF589:
	.string	"short int"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF656:
	.string	"pcie_table_t"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF582:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF595:
	.string	"long int"
.LASF483:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF479:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF516:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF424:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF457:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF379:
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
.LASF563:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF434:
	.string	"PAGE_SHIFT_512GB 39"
.LASF440:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF644:
	.string	"link_control"
.LASF596:
	.string	"uint64_t"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF455:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF394:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF634:
	.string	"pmcsr"
.LASF295:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF393:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF518:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF566:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF448:
	.string	"PT_ACCESSED 0x020"
.LASF615:
	.string	"revision_id"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF617:
	.string	"subclass"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF359:
	.string	"__SSE2_MATH__ 1"
.LASF586:
	.string	"PCIE_DEV(bus,device,func) (&pcie_table->devices[(bus)][(device)][(func)])"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF400:
	.string	"PCI_CAPABILITY_PTR_MASK (0b11111100)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF467:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF495:
	.string	"PID_IDLE 0"
.LASF423:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF567:
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
.LASF630:
	.string	"interrupt_pin"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF643:
	.string	"pcie_link_capabilities"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF690:
	.string	"intr_enabled"
.LASF637:
	.string	"message_data"
.LASF407:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF654:
	.string	"pcie_table"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF598:
	.string	"uintptr_t"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF500:
	.string	"INTR_GPF 0x0d"
.LASF679:
	.string	"intr_wait"
.LASF361:
	.string	"__SEG_FS 1"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF399:
	.string	"PCI_DEVICE_FUNCTION_SIZE 4096"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF597:
	.string	"long unsigned int"
.LASF469:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF442:
	.string	"VMMAP_DIR_HILO 2"
.LASF366:
	.string	"__unix 1"
.LASF525:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF466:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF562:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF409:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF564:
	.string	"DBG_USER DBG_MODE(38)"
.LASF618:
	.string	"class"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF471:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF535:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF651:
	.string	"pcie_device_wrapper_t"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF540:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF588:
	.string	"unsigned char"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF503:
	.string	"INTR_KEYBOARD 0xe0"
.LASF655:
	.string	"devices"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF672:
	.string	"function"
.LASF662:
	.string	"kmalloc"
.LASF396:
	.string	"PCI_NUM_BUSES 256"
.LASF667:
	.string	"wrapper"
.LASF650:
	.string	"link"
.LASF357:
	.string	"__FXSR__ 1"
.LASF521:
	.string	"_BRED_ \"\\x1b[1;31;40m\""
.LASF665:
	.string	"dbg_panic"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF548:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF493:
	.string	"PROC_MAX_COUNT 65536"
.LASF371:
	.string	"__VFS__ 1"
.LASF437:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF463:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF365:
	.string	"__linux__ 1"
.LASF635:
	.string	"msi_capability"
.LASF391:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF560:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF544:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF378:
	.string	"noreturn __attribute__((noreturn))"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF477:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF389:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF388:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF417:
	.string	"USE_1GB_PAGES 1"
.LASF395:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF587:
	.string	"signed char"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF592:
	.string	"short unsigned int"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF404:
	.string	"PCI_LOOKUP_WILDCARD 0xff"
.LASF355:
	.string	"__SSE__ 1"
.LASF422:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF666:
	.string	"acpi_table"
.LASF631:
	.string	"min_grant"
.LASF556:
	.string	"DBG_VM DBG_MODE(28)"
.LASF689:
	.string	"__func__"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF633:
	.string	"pm_capability"
.LASF496:
	.string	"PID_INIT 1"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF614:
	.string	"status"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF438:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF512:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF657:
	.string	"pcie_base_addr"
.LASF568:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF268:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF531:
	.string	"DBG_MM DBG_MODE(1)"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF658:
	.string	"pcie_wrapper_list"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF572:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF485:
	.string	"MAXPATHLEN 1024"
.LASF528:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF648:
	.string	"pcie_device_wrapper"
.LASF459:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF680:
	.string	"intr_disable"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF551:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF688:
	.string	"pci_init"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF507:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF576:
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
