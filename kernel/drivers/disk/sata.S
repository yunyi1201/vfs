	.file	"sata.c"
	.text
.Ltext0:
	.file 1 "drivers/disk/sata.c"
	.type	__atomic_add_unless, @function
__atomic_add_unless:
.LFB0:
	.file 2 "include/util/atomic.h"
	.loc 2 9 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	.loc 2 11 9
	movq	-24(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 2 11 7
	movl	%edx, -4(%rbp)
	.loc 2 12 11
	jmp	.L2
.L4:
	.loc 2 13 11
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L2:
	.loc 2 12 19
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L3
	.loc 2 12 65 discriminator 1
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 2 12 29 discriminator 1
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 2 12 27 discriminator 1
	movl	%eax, -8(%rbp)
	.loc 2 12 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L4
.L3:
	.loc 2 14 12
	movl	-4(%rbp), %eax
	.loc 2 15 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__atomic_add_unless, .-__atomic_add_unless
	.type	atomic_set, @function
atomic_set:
.LFB1:
	.loc 2 17 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 2 17 56
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 17 61
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	atomic_set, .-atomic_set
	.type	atomic_inc, @function
atomic_inc:
.LFB2:
	.loc 2 19 44
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 19 46
	movq	-8(%rbp), %rax
	lock addl	$1, (%rax)
	.loc 2 19 74
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	atomic_inc, .-atomic_inc
	.type	atomic_dec_and_test, @function
atomic_dec_and_test:
.LFB3:
	.loc 2 22 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 23 12
	movq	-8(%rbp), %rdx
	movl	$1, %eax
	negl	%eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	lock xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	.loc 2 23 39
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 2 24 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	atomic_dec_and_test, .-atomic_dec_and_test
	.type	atomic_inc_not_zero, @function
atomic_inc_not_zero:
.LFB4:
	.loc 2 27 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB13:
.LBB14:
	.loc 2 11 9
	movq	-8(%rbp), %rax
	movl	$0, %edx
	lock xaddl	%edx, (%rax)
	.loc 2 11 7
	movl	%edx, -20(%rbp)
	.loc 2 12 11
	jmp	.L11
.L13:
	.loc 2 13 11
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L11:
	.loc 2 12 19
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L12
	.loc 2 12 65
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 2 12 29
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	lock cmpxchgl	%ecx, (%rdx)
	.loc 2 12 27
	movl	%eax, -24(%rbp)
	.loc 2 12 19
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L13
.L12:
	.loc 2 14 12
	movl	-20(%rbp), %eax
.LBE14:
.LBE13:
	.loc 2 29 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	atomic_inc_not_zero, .-atomic_inc_not_zero
	.data
	.type	px_interrupt_status_clear, @object
	.size	px_interrupt_status_clear, 4
px_interrupt_status_clear:
	.long	-1
	.type	px_interrupt_enable_all_enabled, @object
	.size	px_interrupt_enable_all_enabled, 4
px_interrupt_enable_all_enabled:
	.long	-1
	.text
	.type	intr_enabled, @function
intr_enabled:
.LFB5:
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
.LFE5:
	.size	intr_enabled, .-intr_enabled
	.type	intr_enable, @function
intr_enable:
.LFB6:
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
.LFE6:
	.size	intr_enable, .-intr_enable
	.type	intr_disable, @function
intr_disable:
.LFB7:
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
.LFE7:
	.size	intr_disable, .-intr_disable
	.type	intr_wait, @function
intr_wait:
.LFB8:
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
.LFE8:
	.size	intr_wait, .-intr_wait
	.type	equals, @function
equals:
.LFB9:
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
.LFE9:
	.size	equals, .-equals
	.type	notequals, @function
notequals:
.LFB10:
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
.LFE10:
	.size	notequals, .-notequals
	.type	lessthan, @function
lessthan:
.LFB11:
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
.LFE11:
	.size	lessthan, .-lessthan
	.type	greaterthan, @function
greaterthan:
.LFB12:
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
.LFE12:
	.size	greaterthan, .-greaterthan
	.type	lessthaneq, @function
lessthaneq:
.LFB13:
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
.LFE13:
	.size	lessthaneq, .-lessthaneq
	.type	greaterthaneq, @function
greaterthaneq:
.LFB14:
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
.LFE14:
	.size	greaterthaneq, .-greaterthaneq
	.local	hba
	.comm	hba,8,8
	.local	outstanding_requests
	.comm	outstanding_requests,128,32
	.local	outstanding_request_queues
	.comm	outstanding_request_queues,24576,32
	.local	command_slot_queues
	.comm	command_slot_queues,768,32
	.data
	.align 16
	.type	sata_disk_ops, @object
	.size	sata_disk_ops, 16
sata_disk_ops:
	.quad	sata_read_block
	.quad	sata_write_block
	.text
	.globl	find_cmdslot
	.type	find_cmdslot, @function
find_cmdslot:
.LFB15:
	.loc 1 49 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 55 32
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	.loc 1 55 48
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 55 42
	movl	%edx, %ecx
	orl	%eax, %ecx
	.loc 1 56 49
	movabsq	$hba, %rax
	movq	(%rax), %rax
	addq	$256, %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	.loc 1 56 48
	movabsq	$outstanding_requests, %rax
	movl	(%rax,%rdx,4), %eax
	.loc 1 55 56
	orl	%ecx, %eax
	.loc 1 55 12
	notl	%eax
	rep bsfl	%eax, %eax
	cltq
	.loc 1 57 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	find_cmdslot, .-find_cmdslot
	.globl	ensure_mapped
	.type	ensure_mapped, @function
ensure_mapped:
.LFB16:
	.loc 1 61 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 64 29
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$4095, %rax
	.loc 1 62 5
	andq	$-4096, %rax
	movq	%rax, %r13
	movq	-40(%rbp), %rax
	andq	$-4096, %rax
	movq	%rax, %r12
	.loc 1 62 28
	movq	-40(%rbp), %rax
	andq	$-4096, %rax
	movq	%rax, %rdx
	.loc 1 62 5
	movabsq	$131941395333120, %rax
	leaq	(%rdx,%rax), %rbx
	movl	$0, %eax
	movabsq	$pt_get, %rdx
	call	*%rdx
.LVL0:
	movl	$3, %r9d
	movl	$3, %r8d
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movabsq	$pt_map_range, %rax
	call	*%rax
.LVL1:
	.loc 1 66 1
	nop
	addq	$24, %rsp
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
.LFE16:
	.size	ensure_mapped, .-ensure_mapped
	.globl	because_qemu_doesnt_emulate_ahci_ncq_correctly
	.bss
	.align 32
	.type	because_qemu_doesnt_emulate_ahci_ncq_correctly, @object
	.size	because_qemu_doesnt_emulate_ahci_ncq_correctly, 48
because_qemu_doesnt_emulate_ahci_ncq_correctly:
	.zero	48
	.section	.rodata
.LC0:
	.string	"count && buf"
.LC1:
	.string	"assertion failed: %s"
.LC2:
	.string	"drivers/disk/sata.c"
.LC3:
	.string	"lba >= 0 && lba < 1L << 23"
.LC4:
	.string	"command_header->prdtl"
.LC5:
	.string	"%s"
.LC6:
	.string	"C%ld P%ld "
.LC7:
	.string	"%s:%d %s(): "
.LC8:
	.string	"write"
.LC9:
	.string	"read"
	.align 8
.LC10:
	.string	"initiating request on slot %ld to %s sectors [%lu, %lu)\n"
.LC11:
	.string	"\033[0m"
.LC12:
	.string	"!curthr->kt_retval"
	.align 8
.LC13:
	.string	"initiating request on slot %ld to %s sectors [%lu, %lu)...sleeping\n"
	.align 8
.LC14:
	.string	"completed request on slot %ld to %s sectors [%lu, %lu)\n"
	.text
	.globl	ahci_do_operation
	.type	ahci_do_operation, @function
ahci_do_operation:
.LFB17:
	.loc 1 83 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, %eax
	movq	%rcx, -144(%rbp)
	movl	%r8d, -136(%rbp)
	movw	%ax, -132(%rbp)
	.loc 1 84 5
	movabsq	$because_qemu_doesnt_emulate_ahci_ncq_correctly, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_lock, %rax
	call	*%rax
.LVL2:
	.loc 1 85 5
	cmpw	$0, -132(%rbp)
	je	.L37
	.loc 1 85 5 is_stmt 0 discriminator 2
	cmpq	$0, -144(%rbp)
	jne	.L38
.L37:
	.loc 1 85 5 discriminator 3
	movabsq	$.LC0, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$85, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL3:
.L38:
	.loc 1 87 5 is_stmt 1
	cmpq	$0, -128(%rbp)
	js	.L39
	.loc 1 87 5 is_stmt 0 discriminator 2
	cmpq	$8388607, -128(%rbp)
	jle	.L40
.L39:
	.loc 1 87 5 discriminator 3
	movabsq	$.LC3, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$87, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL4:
.L40:
	.loc 1 90 25 is_stmt 1
	movabsq	$hba, %rax
	movq	(%rax), %rax
	addq	$256, %rax
	movq	-120(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$7, %rax
	.loc 1 90 12
	movq	%rax, -40(%rbp)
	.loc 1 92 19
	movl	$224, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL5:
	movb	%al, -41(%rbp)
	.loc 1 94 24
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	movabsq	$pt_virt_to_phys, %rax
	call	*%rax
.LVL6:
	movq	%rax, -8(%rbp)
	.loc 1 98 11
	jmp	.L41
.L43:
	.loc 1 100 44
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 100 9
	movabsq	$command_slot_queues, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$sched_sleep_on, %rax
	call	*%rax
.LVL7:
.L41:
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB15:
.LBB16:
	.loc 1 55 32
	movq	-104(%rbp), %rax
	movl	52(%rax), %edx
	.loc 1 55 48
	movq	-104(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 55 42
	movl	%edx, %ecx
	orl	%eax, %ecx
	.loc 1 56 49
	movabsq	$hba, %rax
	movq	(%rax), %rax
	addq	$256, %rax
	movq	-104(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	.loc 1 56 48
	movabsq	$outstanding_requests, %rax
	movl	(%rax,%rdx,4), %eax
	.loc 1 55 56
	orl	%ecx, %eax
	.loc 1 55 12
	notl	%eax
	rep bsfl	%eax, %eax
	cltq
.LBE16:
.LBE15:
	.loc 1 98 28
	movq	%rax, -56(%rbp)
	.loc 1 98 48
	cmpq	$-1, -56(%rbp)
	je	.L43
	.loc 1 105 32
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 105 41
	movabsq	$-131941395333120, %rdx
	addq	%rdx, %rax
	.loc 1 104 21
	movq	%rax, -64(%rbp)
	.loc 1 107 9
	movq	-64(%rbp), %rax
	.loc 1 107 39
	movq	-56(%rbp), %rdx
	salq	$5, %rdx
	.loc 1 106 23
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 108 5
	movq	-72(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL8:
	.loc 1 111 25
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-32, %edx
	orl	$5, %edx
	movb	%dl, (%rax)
	.loc 1 112 29
	movl	-136(%rbp), %eax
	andl	$1, %eax
	.loc 1 112 27
	movq	-72(%rbp), %rdx
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %ecx
	movzbl	(%rdx), %eax
	andl	$-65, %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	.loc 1 114 9
	movzwl	-132(%rbp), %eax
	subl	$1, %eax
	andl	$-8192, %eax
	addl	$8192, %eax
	.loc 1 114 54
	leal	8191(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$13, %eax
	.loc 1 113 29
	movl	%eax, %edx
	.loc 1 113 27
	movq	-72(%rbp), %rax
	movw	%dx, 2(%rax)
	.loc 1 115 5
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	testw	%ax, %ax
	jne	.L44
	.loc 1 115 5 is_stmt 0 discriminator 1
	movabsq	$.LC4, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$115, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL9:
.L44:
	.loc 1 119 43 is_stmt 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 119 50
	movabsq	$-131941395333120, %rdx
	addq	%rdx, %rax
	.loc 1 118 22
	movq	%rax, -80(%rbp)
	.loc 1 120 5
	movq	-80(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL10:
	.loc 1 123 12
	movq	-80(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -16(%rbp)
.LBB17:
	.loc 1 126 19
	movl	$0, -20(%rbp)
	.loc 1 126 5
	jmp	.L45
.L46:
	.loc 1 128 19 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %edx
	orl	$-1, %edx
	movb	%dl, 12(%rax)
	movzbl	13(%rax), %edx
	orl	$-1, %edx
	movb	%dl, 13(%rax)
	movzbl	14(%rax), %edx
	orl	$63, %edx
	movb	%dl, 14(%rax)
	.loc 1 129 19 discriminator 3
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 130 17 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 15(%rax)
	.loc 1 131 17 discriminator 3
	addq	$4194304, -8(%rbp)
	.loc 1 133 13 discriminator 3
	addq	$16, -16(%rbp)
	.loc 1 126 59 discriminator 3
	addl	$1, -20(%rbp)
.L45:
	.loc 1 126 44 discriminator 1
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %eax
	movzwl	%ax, %eax
	.loc 1 126 52 discriminator 1
	subl	$1, %eax
	.loc 1 126 28 discriminator 1
	cmpl	%eax, -20(%rbp)
	jb	.L46
.LBE17:
	.loc 1 135 17
	movzwl	-132(%rbp), %eax
	andl	$8191, %eax
	.loc 1 135 59
	sall	$9, %eax
	.loc 1 135 77
	subl	$1, %eax
	andl	$4194303, %eax
	movl	%eax, %edx
	.loc 1 135 15
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movzbl	%cl, %esi
	movzbl	12(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 12(%rax)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %esi
	movzbl	13(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 13(%rax)
	shrl	$16, %edx
	movl	%edx, %edx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	14(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 14(%rax)
	.loc 1 136 15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 139 25
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 140 27
	movq	-88(%rbp), %rax
	movb	$39, (%rax)
	.loc 1 141 20
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1(%rax)
	.loc 1 142 25
	movq	-88(%rbp), %rax
	movb	$64, 7(%rax)
	.loc 1 143 24
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	andl	$16777215, %edx
	.loc 1 143 22
	movq	-88(%rbp), %rax
	movl	%edx, %ecx
	movzbl	%cl, %esi
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 4(%rax)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %esi
	movzbl	5(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 5(%rax)
	shrl	$16, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	6(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 6(%rax)
	.loc 1 144 43
	movq	-128(%rbp), %rax
	sarq	$24, %rax
	.loc 1 144 28
	movl	%eax, %edx
	andl	$16777215, %edx
	.loc 1 144 26
	movq	-88(%rbp), %rax
	movl	%edx, %ecx
	movzbl	%cl, %esi
	movzbl	8(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 8(%rax)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %esi
	movzbl	9(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 9(%rax)
	shrl	$16, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	10(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 10(%rax)
	.loc 1 149 12
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 149 9
	movzbl	3(%rax), %eax
	andl	$64, %eax
	.loc 1 149 8
	testb	%al, %al
	je	.L47
	.loc 1 152 33
	movzwl	-132(%rbp), %eax
	movl	%eax, %edx
	.loc 1 152 31
	movq	-88(%rbp), %rax
	movb	%dl, 3(%rax)
	.loc 1 153 37
	movzwl	-132(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	.loc 1 153 35
	movq	-88(%rbp), %rax
	movb	%dl, 11(%rax)
	.loc 1 156 37
	movq	-56(%rbp), %rax
	leal	0(,%rax,8), %edx
	.loc 1 156 35
	movq	-88(%rbp), %rax
	movw	%dx, 12(%rax)
	.loc 1 159 32
	cmpl	$0, -136(%rbp)
	je	.L48
	.loc 1 159 32 is_stmt 0 discriminator 1
	movl	$97, %edx
	jmp	.L49
.L48:
	.loc 1 159 32 discriminator 2
	movl	$96, %edx
.L49:
	.loc 1 159 30 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax
	movb	%dl, 2(%rax)
	jmp	.L50
.L47:
	.loc 1 164 35
	movq	-88(%rbp), %rax
	movzwl	-132(%rbp), %edx
	movw	%dx, 12(%rax)
	.loc 1 166 32
	cmpl	$0, -136(%rbp)
	je	.L51
	.loc 1 166 32 is_stmt 0 discriminator 1
	movl	$53, %edx
	jmp	.L52
.L51:
	.loc 1 166 32 discriminator 2
	movl	$37, %edx
.L52:
	.loc 1 166 30 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax
	movb	%dl, 2(%rax)
.L50:
	.loc 1 177 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L53
	.loc 1 177 5 is_stmt 0 discriminator 1
	movl	$16, %edi
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
	je	.L54
	.loc 1 177 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L55
.L54:
	.loc 1 177 5 discriminator 3
	movq	$-1, %rax
.L55:
	.loc 1 177 5 discriminator 5
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
	movl	$177, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL14:
	movzwl	-132(%rbp), %edx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	cmpl	$0, -136(%rbp)
	je	.L56
	.loc 1 177 5 discriminator 6
	movabsq	$.LC8, %rax
	jmp	.L57
.L56:
	.loc 1 177 5 discriminator 7
	movabsq	$.LC9, %rax
.L57:
	.loc 1 177 5 discriminator 9
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movabsq	$.LC10, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r9
	call	*%r9
.LVL15:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL16:
.L53:
	.loc 1 182 25 is_stmt 1
	movabsq	$outstanding_requests, %rdx
	movq	-40(%rbp), %rax
	movl	(%rdx,%rax,4), %eax
	.loc 1 182 44
	movq	-56(%rbp), %rdx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 1 182 38
	orl	%edx, %eax
	movl	%eax, %ecx
	movabsq	$outstanding_requests, %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rdx,%rax,4)
	.loc 1 185 9
	movq	-120(%rbp), %rax
	movl	52(%rax), %eax
	.loc 1 185 25
	movq	-56(%rbp), %rdx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 1 185 19
	orl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 52(%rax)
	.loc 1 186 9
	movq	-120(%rbp), %rax
	movl	56(%rax), %eax
	.loc 1 186 23
	movq	-56(%rbp), %rdx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 1 186 17
	orl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 56(%rax)
	.loc 1 188 11
	movq	$0, -32(%rbp)
	.loc 1 189 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	.loc 1 189 8
	testq	%rax, %rax
	je	.L58
	.loc 1 191 28
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 191 20
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 192 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 192 27
	movq	$0, 56(%rax)
.L58:
	.loc 1 195 5
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L59
	.loc 1 195 5 is_stmt 0 discriminator 1
	movabsq	$.LC12, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.3, %rax
	movq	%rax, %rdx
	movl	$195, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL17:
.L59:
	.loc 1 197 5 is_stmt 1
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L60
	.loc 1 197 5 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL18:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL19:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	.loc 1 197 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L62
.L61:
	.loc 1 197 5 discriminator 3
	movq	$-1, %rax
.L62:
	.loc 1 197 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL20:
	movabsq	$__func__.3, %rax
	movq	%rax, %rcx
	movl	$197, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL21:
	movzwl	-132(%rbp), %edx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	cmpl	$0, -136(%rbp)
	je	.L63
	.loc 1 197 5 discriminator 6
	movabsq	$.LC8, %rax
	jmp	.L64
.L63:
	.loc 1 197 5 discriminator 7
	movabsq	$.LC9, %rax
.L64:
	.loc 1 197 5 discriminator 9
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movabsq	$.LC13, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r9
	call	*%r9
.LVL22:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL23:
.L60:
	.loc 1 200 20 is_stmt 1
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$8, %rax
	movabsq	$outstanding_request_queues, %rdx
	leaq	(%rax,%rdx), %rcx
	.loc 1 200 59
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 200 5
	addq	%rcx, %rax
	movq	%rax, %rdi
	movabsq	$sched_sleep_on, %rax
	call	*%rax
.LVL24:
	.loc 1 201 5
	movzbl	-41(%rbp), %eax
	movl	%eax, %edi
	movabsq	$intr_setipl, %rax
	call	*%rax
.LVL25:
	.loc 1 202 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L65
	.loc 1 202 5 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL26:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL27:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L66
	.loc 1 202 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L67
.L66:
	.loc 1 202 5 discriminator 3
	movq	$-1, %rax
.L67:
	.loc 1 202 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL28:
	movabsq	$__func__.3, %rax
	movq	%rax, %rcx
	movl	$202, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL29:
	movzwl	-132(%rbp), %edx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	cmpl	$0, -136(%rbp)
	je	.L68
	.loc 1 202 5 discriminator 6
	movabsq	$.LC8, %rax
	jmp	.L69
.L68:
	.loc 1 202 5 discriminator 7
	movabsq	$.LC9, %rax
.L69:
	.loc 1 202 5 discriminator 9
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movabsq	$.LC14, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r9
	call	*%r9
.LVL30:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL31:
.L65:
	.loc 1 204 5 is_stmt 1
	movabsq	$because_qemu_doesnt_emulate_ahci_ncq_correctly, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_unlock, %rax
	call	*%rax
.LVL32:
	.loc 1 206 28
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	.loc 1 206 10
	movq	%rax, -96(%rbp)
	.loc 1 207 8
	cmpq	$0, -32(%rbp)
	je	.L70
	.loc 1 209 15
	movabsq	$curthr, %rax
	movq	(%rax), %rax
	.loc 1 209 27
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
.L70:
	.loc 1 211 12
	movq	-96(%rbp), %rax
	.loc 1 212 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ahci_do_operation, .-ahci_do_operation
	.type	start_cmd, @function
start_cmd:
.LFB18:
	.loc 1 216 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 217 11
	nop
.L73:
	.loc 1 217 12 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L73
	.loc 1 219 22
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$16, %edx
	movb	%dl, 24(%rax)
	.loc 1 220 21
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.loc 1 221 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	start_cmd, .-start_cmd
	.type	stop_cmd, @function
stop_cmd:
.LFB19:
	.loc 1 225 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 226 21
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.loc 1 227 11
	nop
.L75:
	.loc 1 227 12 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L75
	.loc 1 229 22
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 24(%rax)
	.loc 1 230 11
	nop
.L76:
	.loc 1 230 12 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L76
	.loc 1 232 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	stop_cmd, .-stop_cmd
	.section	.rodata
.LC15:
	.string	"Initializing AHCI Port %d\n"
	.align 8
.LC16:
	.string	"\tAdding SATA Disk Drive at Port %d\n"
.LC17:
	.string	"!ret"
	.align 8
.LC18:
	.string	"\tunknown device signature: 0x%x\n"
	.text
	.type	ahci_initialize_port, @function
ahci_initialize_port:
.LFB20:
	.loc 1 237 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 1 238 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L78
	.loc 1 238 5 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL33:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL34:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	.loc 1 238 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L80
.L79:
	.loc 1 238 5 discriminator 3
	movq	$-1, %rax
.L80:
	.loc 1 238 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL35:
	movabsq	$__func__.2, %rax
	movq	%rax, %rcx
	movl	$238, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL36:
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movabsq	$.LC15, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL37:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL38:
.L78:
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB18:
.LBB19:
	.loc 1 226 21 is_stmt 1
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.loc 1 227 11
	nop
.L81:
	.loc 1 227 12
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L81
	.loc 1 229 22
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 24(%rax)
	.loc 1 230 11
	nop
.L82:
	.loc 1 230 12
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L82
	.loc 1 232 1
	nop
.LBE19:
.LBE18:
	.loc 1 252 67
	movl	-76(%rbp), %eax
	salq	$10, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 251 21
	movq	%rax, -16(%rbp)
	.loc 1 254 67
	movl	-76(%rbp), %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	addq	$32768, %rax
	.loc 1 253 21
	movq	%rax, -24(%rbp)
	.loc 1 256 20
	movq	-16(%rbp), %rax
	.loc 1 256 43
	movabsq	$131941395333120, %rdx
	addq	%rax, %rdx
	.loc 1 256 18
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 257 19
	movq	-24(%rbp), %rax
	.loc 1 257 42
	movabsq	$131941395333120, %rdx
	addq	%rax, %rdx
	.loc 1 257 17
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 258 17
	movq	-72(%rbp), %rax
	movabsq	$px_interrupt_enable_all_enabled, %rdx
	movl	(%rdx), %edx
	movl	%edx, 20(%rax)
	.loc 1 265 17
	movq	-72(%rbp), %rax
	movabsq	$px_interrupt_status_clear, %rdx
	movl	(%rdx), %edx
	movl	%edx, 16(%rax)
	.loc 1 272 21
	movl	-76(%rbp), %eax
	sall	$5, %eax
	movl	%eax, %eax
	.loc 1 271 69
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	addq	$40960, %rax
	.loc 1 270 22
	movq	%rax, -32(%rbp)
.LBB20:
	.loc 1 273 19
	movl	$0, -4(%rbp)
	.loc 1 273 5
	jmp	.L83
.L84:
	.loc 1 276 54 discriminator 3
	movl	-4(%rbp), %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 276 13 discriminator 3
	movq	%rax, %rdx
	.loc 1 276 59 discriminator 3
	movabsq	$131941395333120, %rax
	addq	%rax, %rdx
	.loc 1 275 47 discriminator 3
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	salq	$5, %rcx
	addq	%rcx, %rax
	movq	%rdx, 8(%rax)
	.loc 1 277 26 discriminator 3
	movl	-76(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$8, %rax
	movabsq	$outstanding_request_queues, %rdx
	leaq	(%rax,%rdx), %rcx
	.loc 1 277 66 discriminator 3
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 277 9 discriminator 3
	addq	%rcx, %rax
	movq	%rax, %rdi
	movabsq	$sched_queue_init, %rax
	call	*%rax
.LVL39:
	.loc 1 273 62 discriminator 3
	addl	$1, -4(%rbp)
.L83:
	.loc 1 273 28 discriminator 1
	cmpl	$31, -4(%rbp)
	jbe	.L84
.LBE20:
	.loc 1 281 42
	movl	-76(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 281 5
	movabsq	$command_slot_queues, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$sched_queue_init, %rax
	call	*%rax
.LVL40:
	.loc 1 284 13
	movq	-72(%rbp), %rax
	movl	36(%rax), %eax
	.loc 1 284 8
	cmpl	$257, %eax
	jne	.L85
.LBB21:
	.loc 1 286 9
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L86
	.loc 1 286 9 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL41:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL42:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L87
	.loc 1 286 9 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L88
.L87:
	.loc 1 286 9 discriminator 3
	movq	$-1, %rax
.L88:
	.loc 1 286 9 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL43:
	movabsq	$__func__.2, %rax
	movq	%rax, %rcx
	movl	$286, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL44:
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movabsq	$.LC16, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL45:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL46:
.L86:
	.loc 1 287 28 is_stmt 1
	movl	$40, %edi
	movabsq	$kmalloc, %rax
	call	*%rax
.LVL47:
	movq	%rax, -40(%rbp)
	.loc 1 288 20
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 289 28
	movl	-76(%rbp), %eax
	orb	$1, %ah
	movl	%eax, %edx
	.loc 1 289 26
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 290 27
	movq	-40(%rbp), %rax
	movabsq	$sata_disk_ops, %rsi
	movq	%rsi, 16(%rax)
	.loc 1 291 9
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	movabsq	$list_link_init, %rax
	call	*%rax
.LVL48:
	.loc 1 292 20
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movabsq	$blockdev_register, %rax
	call	*%rax
.LVL49:
	movq	%rax, -48(%rbp)
	.loc 1 293 9
	cmpq	$0, -48(%rbp)
	je	.L89
	.loc 1 293 9 is_stmt 0 discriminator 1
	movabsq	$.LC17, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.2, %rax
	movq	%rax, %rdx
	movl	$293, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL50:
.L85:
.LBE21:
	.loc 1 299 9 is_stmt 1
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L89
	.loc 1 299 9 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL51:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL52:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L90
	.loc 1 299 9 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L91
.L90:
	.loc 1 299 9 discriminator 3
	movq	$-1, %rax
.L91:
	.loc 1 299 9 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL53:
	movabsq	$__func__.2, %rax
	movq	%rax, %rcx
	movl	$299, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL54:
	movq	-72(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %esi
	movabsq	$.LC18, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL55:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL56:
.L89:
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB22:
.LBB23:
	.loc 1 217 11 is_stmt 1
	nop
.L92:
	.loc 1 217 12
	movq	-64(%rbp), %rax
	movzbl	25(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L92
	.loc 1 219 22
	movq	-64(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$16, %edx
	movb	%dl, 24(%rax)
	.loc 1 220 21
	movq	-64(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.loc 1 221 1
	nop
.LBE23:
.LBE22:
	.loc 1 307 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ahci_initialize_port, .-ahci_initialize_port
	.section	.rodata
	.align 8
.LC19:
	.string	"dev->standard.capabilities_ptr & PCI_CAPABILITY_PTR_MASK"
	.align 8
.LC20:
	.string	"cap->next_cap && \"couldn't find msi control for ahci device\""
	.align 8
.LC21:
	.string	"dev && \"Could not find AHCI Controller\""
.LC22:
	.string	"Found AHCI Controller\n"
.LC23:
	.string	"ahci_base"
.LC24:
	.string	"hba->ghc.ghc.ae"
.LC25:
	.string	"true"
.LC26:
	.string	"false"
.LC27:
	.string	"ahci ncq supported: %s\n"
.LC28:
	.string	"ports_implemented"
	.text
	.globl	ahci_initialize_hba
	.type	ahci_initialize_hba, @function
ahci_initialize_hba:
.LFB21:
	.loc 1 312 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 313 5
	movabsq	$because_qemu_doesnt_emulate_ahci_ncq_correctly, %rax
	movq	%rax, %rdi
	movabsq	$kmutex_init, %rax
	call	*%rax
.LVL57:
	.loc 1 317 9
	movl	$1, %edx
	movl	$6, %esi
	movl	$1, %edi
	movabsq	$pcie_lookup, %rax
	call	*%rax
.LVL58:
	movq	%rax, -24(%rbp)
	.loc 1 326 5
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %eax
	movzbl	%al, %eax
	andl	$252, %eax
	testl	%eax, %eax
	jne	.L94
	.loc 1 326 5 is_stmt 0 discriminator 1
	movabsq	$.LC19, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$326, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL59:
.L94:
	.loc 1 328 61 is_stmt 1
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 1 328 79
	movzbl	%al, %eax
	andl	$252, %eax
	movq	%rax, %rdx
	.loc 1 328 30
	movq	-24(%rbp), %rax
	.loc 1 328 45
	addq	%rdx, %rax
	.loc 1 327 23
	movq	%rax, -8(%rbp)
	.loc 1 330 11
	jmp	.L95
.L97:
	.loc 1 332 9
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	jne	.L96
	.loc 1 332 9 is_stmt 0 discriminator 1
	movabsq	$.LC20, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$332, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL60:
.L96:
	.loc 1 334 40 is_stmt 1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	.loc 1 334 51
	movzbl	%al, %eax
	andl	$252, %eax
	movq	%rax, %rdx
	.loc 1 333 36
	movq	-24(%rbp), %rax
	.loc 1 333 51
	addq	%rdx, %rax
	.loc 1 333 13
	movq	%rax, -8(%rbp)
.L95:
	.loc 1 330 15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 330 20
	cmpb	$5, %al
	jne	.L97
	.loc 1 336 23
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 339 27
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	orl	$1, %edx
	movb	%dl, 2(%rax)
	.loc 1 348 9
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	andl	$-128, %eax
	.loc 1 348 8
	testb	%al, %al
	je	.L98
	.loc 1 350 41
	movq	-32(%rbp), %rax
	movl	$4276097036, %esi
	movq	%rsi, 4(%rax)
	.loc 1 351 41
	movq	-32(%rbp), %rax
	movw	$464, 12(%rax)
	jmp	.L99
.L98:
	.loc 1 355 41
	movq	-32(%rbp), %rax
	movl	$-18870260, 4(%rax)
	.loc 1 356 41
	movq	-32(%rbp), %rax
	movw	$464, 8(%rax)
.L99:
	.loc 1 359 5
	cmpq	$0, -24(%rbp)
	jne	.L100
	.loc 1 359 5 is_stmt 0 discriminator 1
	movabsq	$.LC21, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$359, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL61:
.L100:
	.loc 1 360 5 is_stmt 1
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L101
	.loc 1 360 5 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL62:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL63:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L102
	.loc 1 360 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L103
.L102:
	.loc 1 360 5 discriminator 3
	movq	$-1, %rax
.L103:
	.loc 1 360 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL64:
	movabsq	$__func__.1, %rax
	movq	%rax, %rcx
	movl	$360, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL65:
	movabsq	$.LC22, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL66:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL67:
.L101:
	.loc 1 364 52 is_stmt 1
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %edx
	.loc 1 364 33
	movabsq	$-131941395333120, %rax
	addq	%rdx, %rax
	.loc 1 364 11
	movq	%rax, %rdx
	.loc 1 364 9
	movabsq	$hba, %rax
	movq	%rdx, (%rax)
	.loc 1 367 5
	movabsq	$hba, %rax
	movq	(%rax), %rax
	movl	$4352, %esi
	movq	%rax, %rdi
	movabsq	$ensure_mapped, %rax
	call	*%rax
.LVL68:
	.loc 1 375 38
	movl	$74, %edi
	movabsq	$page_alloc_n, %rax
	call	*%rax
.LVL69:
	.loc 1 375 15
	movq	%rax, -40(%rbp)
	.loc 1 376 5
	movq	-40(%rbp), %rax
	movl	$303104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset, %rax
	call	*%rax
.LVL70:
	.loc 1 378 5
	cmpq	$0, -40(%rbp)
	jne	.L104
	.loc 1 378 5 is_stmt 0 discriminator 1
	movabsq	$.LC23, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$378, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL71:
.L104:
	.loc 1 383 5 is_stmt 1
	movabsq	$hba, %rax
	movq	(%rax), %rax
	movzbl	7(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L105
	.loc 1 383 5 is_stmt 0 discriminator 1
	movabsq	$.LC24, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$383, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL72:
.L105:
	.loc 1 386 8 is_stmt 1
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 386 21
	movzbl	4(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 4(%rax)
	.loc 1 388 5
	movabsq	$dbg_modes, %rax
	movq	(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L106
	.loc 1 388 5 is_stmt 0 discriminator 1
	movl	$16, %edi
	movabsq	$dbg_color, %rax
	call	*%rax
.LVL73:
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL74:
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L107
	.loc 1 388 5 discriminator 2
	movabsq	$curproc, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	jmp	.L108
.L107:
	.loc 1 388 5 discriminator 3
	movq	$-1, %rax
.L108:
	.loc 1 388 5 discriminator 5
	movabsq	$curcore, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movabsq	$.LC6, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rcx
	call	*%rcx
.LVL75:
	movabsq	$__func__.1, %rax
	movq	%rax, %rcx
	movl	$388, %edx
	movabsq	$.LC2, %rax
	movq	%rax, %rsi
	movabsq	$.LC7, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %r8
	call	*%r8
.LVL76:
	movabsq	$hba, %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L109
	.loc 1 388 5 discriminator 6
	movabsq	$.LC25, %rax
	jmp	.L110
.L109:
	.loc 1 388 5 discriminator 7
	movabsq	$.LC26, %rax
.L110:
	.loc 1 388 5 discriminator 9
	movq	%rax, %rsi
	movabsq	$.LC27, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL77:
	movabsq	$.LC11, %rax
	movq	%rax, %rsi
	movabsq	$.LC5, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_print, %rdx
	call	*%rdx
.LVL78:
.L106:
	.loc 1 392 37 is_stmt 1
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 392 14
	movl	12(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 393 5
	cmpl	$0, -12(%rbp)
	jne	.L112
	.loc 1 393 5 is_stmt 0 discriminator 1
	movabsq	$.LC28, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.1, %rax
	movq	%rax, %rdx
	movl	$393, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL79:
.L113:
.LBB24:
	.loc 1 396 32 is_stmt 1
	xorl	%eax, %eax
	rep bsfl	-12(%rbp), %eax
	.loc 1 396 18
	movl	%eax, -44(%rbp)
	.loc 1 397 34
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 397 30
	notl	%eax
	.loc 1 397 27
	andl	%eax, -12(%rbp)
	.loc 1 398 33
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 398 30
	leaq	256(%rax), %rdx
	.loc 1 398 41
	movl	-44(%rbp), %eax
	salq	$7, %rax
	.loc 1 398 9
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	movabsq	$ahci_initialize_port, %rax
	call	*%rax
.LVL80:
.L112:
.LBE24:
	.loc 1 394 12
	cmpl	$0, -12(%rbp)
	jne	.L113
	.loc 1 402 8
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 402 17
	movl	$-1, 8(%rax)
	.loc 1 405 8
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 405 21
	movzbl	4(%rax), %edx
	orl	$2, %edx
	movb	%dl, 4(%rax)
	.loc 1 406 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ahci_initialize_hba, .-ahci_initialize_hba
	.section	.rodata
.LC29:
	.string	"port->px_is.bits.sdbs"
.LC30:
	.string	"port->px_is.bits.dhrs"
	.text
	.type	ahci_interrupt_handler, @function
ahci_interrupt_handler:
.LFB22:
	.loc 1 411 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 413 11
	jmp	.L115
.L124:
.LBB25:
	.loc 1 416 48
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 416 31
	movl	8(%rax), %eax
	rep bsfl	%eax, %eax
	.loc 1 416 18
	movl	%eax, -8(%rbp)
	.loc 1 419 31
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 419 28
	leaq	256(%rax), %rdx
	.loc 1 419 39
	movl	-8(%rbp), %eax
	salq	$7, %rax
	.loc 1 419 21
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 431 16
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 431 13
	movzbl	3(%rax), %eax
	andl	$64, %eax
	.loc 1 431 12
	testb	%al, %al
	je	.L116
	.loc 1 433 13
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L117
	.loc 1 433 13 is_stmt 0 discriminator 1
	movabsq	$.LC29, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$433, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL81:
.L117:
	.loc 1 434 35 is_stmt 1
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$8, %edx
	movb	%dl, 16(%rax)
	jmp	.L118
.L116:
	.loc 1 438 13
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L119
	.loc 1 438 13 is_stmt 0 discriminator 1
	movabsq	$.LC30, %r8
	movabsq	$.LC1, %rax
	movq	%rax, %rcx
	movabsq	$__func__.0, %rax
	movq	%rax, %rdx
	movl	$438, %esi
	movabsq	$.LC2, %rax
	movq	%rax, %rdi
	movl	$0, %eax
	movabsq	$dbg_panic, %r9
	call	*%r9
.LVL82:
.L119:
	.loc 1 439 35 is_stmt 1
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
.L118:
	.loc 1 449 12
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 449 17
	movl	8(%rax), %edx
	.loc 1 449 27
	movl	-8(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %ecx
	.loc 1 449 12
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 449 21
	andl	%ecx, %edx
	movl	%edx, 8(%rax)
	.loc 1 454 30
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 454 45
	movzbl	3(%rax), %eax
	andl	$64, %eax
	.loc 1 454 61
	testb	%al, %al
	je	.L120
	.loc 1 454 61 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	jmp	.L121
.L120:
	.loc 1 454 61 discriminator 2
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
.L121:
	.loc 1 454 18 is_stmt 1 discriminator 4
	movl	%eax, -20(%rbp)
	.loc 1 462 50 discriminator 4
	movabsq	$outstanding_requests, %rdx
	movl	-8(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	.loc 1 462 63 discriminator 4
	movl	-20(%rbp), %edx
	notl	%edx
	.loc 1 462 18 discriminator 4
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 465 15 discriminator 4
	jmp	.L122
.L123:
.LBB26:
	.loc 1 467 29
	xorl	%eax, %eax
	rep bsfl	-4(%rbp), %eax
	.loc 1 467 22
	movl	%eax, -24(%rbp)
	.loc 1 471 13
	movl	-24(%rbp), %eax
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rdx
	movl	-8(%rbp), %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$8, %rax
	addq	%rax, %rdx
	movabsq	$outstanding_request_queues, %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$sched_wakeup_on, %rax
	call	*%rax
.LVL83:
	.loc 1 475 30
	movl	-24(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 475 26
	notl	%eax
	.loc 1 475 23
	andl	%eax, -4(%rbp)
	.loc 1 476 33
	movabsq	$outstanding_requests, %rdx
	movl	-8(%rbp), %eax
	movl	(%rdx,%rax,4), %edx
	.loc 1 476 53
	movl	-24(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 1 476 49
	notl	%eax
	.loc 1 476 46
	movl	%edx, %ecx
	andl	%eax, %ecx
	movabsq	$outstanding_requests, %rdx
	movl	-8(%rbp), %eax
	movl	%ecx, (%rdx,%rax,4)
.L122:
.LBE26:
	.loc 1 465 16
	cmpl	$0, -4(%rbp)
	jne	.L123
.L115:
.LBE25:
	.loc 1 413 15
	movabsq	$hba, %rax
	movq	(%rax), %rax
	.loc 1 413 20
	movl	8(%rax), %eax
	.loc 1 413 12
	testl	%eax, %eax
	jne	.L124
	.loc 1 482 12
	movl	$0, %eax
	.loc 1 483 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ahci_interrupt_handler, .-ahci_interrupt_handler
	.globl	sata_init
	.type	sata_init, @function
sata_init:
.LFB23:
	.loc 1 486 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 487 5
	movabsq	$ahci_interrupt_handler, %rax
	movq	%rax, %rsi
	movl	$208, %edi
	movabsq	$intr_register, %rax
	call	*%rax
.LVL84:
	.loc 1 488 5
	movl	$0, %eax
	movabsq	$ahci_initialize_hba, %rdx
	call	*%rdx
.LVL85:
	.loc 1 489 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	sata_init, .-sata_init
	.globl	sata_read_block
	.type	sata_read_block, @function
sata_read_block:
.LFB24:
	.loc 1 508 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 510 21
	movq	-32(%rbp), %rax
	salq	$3, %rax
	.loc 1 510 8
	cmpq	$65535, %rax
	jbe	.L128
	.loc 1 512 16
	movq	$-5, %rax
	jmp	.L129
.L128:
	.loc 1 516 9
	movq	-32(%rbp), %rax
	sall	$3, %eax
	.loc 1 514 12
	movzwl	%ax, %edx
	.loc 1 515 45
	movl	-20(%rbp), %eax
	sall	$3, %eax
	.loc 1 514 12
	movl	%eax, %esi
	.loc 1 515 9
	movq	-8(%rbp), %rax
	subq	$8, %rax
	.loc 1 514 12
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %r8d
	movq	%rax, %rdi
	movabsq	$ahci_do_operation, %rax
	call	*%rax
.LVL86:
.L129:
	.loc 1 519 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	sata_read_block, .-sata_read_block
	.globl	sata_write_block
	.type	sata_write_block, @function
sata_write_block:
.LFB25:
	.loc 1 535 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 537 21
	movq	-32(%rbp), %rax
	salq	$3, %rax
	.loc 1 537 8
	cmpq	$65535, %rax
	jbe	.L131
	.loc 1 539 16
	movq	$-5, %rax
	jmp	.L132
.L131:
	.loc 1 543 9
	movq	-32(%rbp), %rax
	sall	$3, %eax
	.loc 1 541 12
	movzwl	%ax, %edx
	.loc 1 542 45
	movl	-20(%rbp), %eax
	sall	$3, %eax
	.loc 1 541 12
	movl	%eax, %esi
	.loc 1 542 9
	movq	-8(%rbp), %rax
	subq	$8, %rax
	.loc 1 541 12
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	movabsq	$ahci_do_operation, %rax
	call	*%rax
.LVL87:
.L132:
	.loc 1 546 1
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	sata_write_block, .-sata_write_block
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"ahci_do_operation"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"ahci_initialize_port"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"ahci_initialize_hba"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ahci_interrupt_handler"
	.text
.Letext0:
	.file 5 "include/types.h"
	.file 6 "include/util/list.h"
	.file 7 "include/proc/sched.h"
	.file 8 "include/proc/kmutex.h"
	.file 9 "include/proc/kthread.h"
	.file 10 "include/drivers/blockdev.h"
	.file 11 "include/drivers/disk/ahci.h"
	.file 12 "include/drivers/disk/sata.h"
	.file 13 "include/drivers/pcie.h"
	.file 14 "include/vm/vmmap.h"
	.file 15 "include/proc/proc.h"
	.file 16 "include/mm/pagetable.h"
	.file 17 "include/proc/context.h"
	.file 18 "include/proc/core.h"
	.file 19 "include/globals.h"
	.file 20 "include/mm/page.h"
	.file 21 "include/mm/kmalloc.h"
	.file 22 "include/util/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x22cf
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1082
	.byte	0xc
	.long	.LASF1083
	.long	.LASF1084
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF771
	.uleb128 0x3
	.long	.LASF774
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.long	0x44
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF772
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF773
	.uleb128 0x3
	.long	.LASF775
	.byte	0x5
	.byte	0xc
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF776
	.uleb128 0x3
	.long	.LASF777
	.byte	0x5
	.byte	0xd
	.byte	0x14
	.long	0x71
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF778
	.byte	0x5
	.byte	0xe
	.byte	0x16
	.long	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF779
	.uleb128 0x3
	.long	.LASF780
	.byte	0x5
	.byte	0x10
	.byte	0x15
	.long	0x97
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF781
	.uleb128 0x3
	.long	.LASF782
	.byte	0x5
	.byte	0x11
	.byte	0x17
	.long	0xaa
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF783
	.uleb128 0x3
	.long	.LASF784
	.byte	0x5
	.byte	0x13
	.byte	0x17
	.long	0xaa
	.uleb128 0x3
	.long	.LASF785
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.long	0x9e
	.uleb128 0x3
	.long	.LASF786
	.byte	0x5
	.byte	0x15
	.byte	0x11
	.long	0x8b
	.uleb128 0x3
	.long	.LASF787
	.byte	0x5
	.byte	0x18
	.byte	0x11
	.long	0x65
	.uleb128 0x3
	.long	.LASF788
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.long	0x78
	.uleb128 0x3
	.long	.LASF789
	.byte	0x5
	.byte	0x1c
	.byte	0x12
	.long	0x78
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	.LASF795
	.byte	0x10
	.byte	0x6
	.byte	0x5e
	.byte	0x10
	.long	0x123
	.uleb128 0x7
	.long	.LASF790
	.byte	0x6
	.byte	0x60
	.byte	0x12
	.long	0x123
	.byte	0
	.uleb128 0x7
	.long	.LASF791
	.byte	0x6
	.byte	0x61
	.byte	0x12
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xfb
	.uleb128 0x3
	.long	.LASF792
	.byte	0x6
	.byte	0x62
	.byte	0x3
	.long	0xfb
	.uleb128 0x3
	.long	.LASF793
	.byte	0x6
	.byte	0x62
	.byte	0xb
	.long	0xfb
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF794
	.uleb128 0x9
	.long	0x141
	.uleb128 0x6
	.long	.LASF796
	.byte	0x18
	.byte	0x7
	.byte	0xf
	.byte	0x10
	.long	0x175
	.uleb128 0x7
	.long	.LASF797
	.byte	0x7
	.byte	0x11
	.byte	0xc
	.long	0x129
	.byte	0
	.uleb128 0x7
	.long	.LASF798
	.byte	0x7
	.byte	0x12
	.byte	0xc
	.long	0xbd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF799
	.byte	0x7
	.byte	0x13
	.byte	0x3
	.long	0x14d
	.uleb128 0x6
	.long	.LASF800
	.byte	0x30
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x1b6
	.uleb128 0x7
	.long	.LASF801
	.byte	0x8
	.byte	0xc
	.byte	0xf
	.long	0x175
	.byte	0
	.uleb128 0x7
	.long	.LASF802
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.long	0x260
	.byte	0x18
	.uleb128 0x7
	.long	.LASF803
	.byte	0x8
	.byte	0xe
	.byte	0x11
	.long	0x135
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF804
	.byte	0xa0
	.byte	0x9
	.byte	0x21
	.byte	0x10
	.long	0x260
	.uleb128 0x7
	.long	.LASF805
	.byte	0x9
	.byte	0x23
	.byte	0xf
	.long	0xe58
	.byte	0
	.uleb128 0x7
	.long	.LASF806
	.byte	0x9
	.byte	0x24
	.byte	0xb
	.long	0x312
	.byte	0x30
	.uleb128 0x7
	.long	.LASF807
	.byte	0x9
	.byte	0x25
	.byte	0xb
	.long	0xf9
	.byte	0x38
	.uleb128 0x7
	.long	.LASF808
	.byte	0x9
	.byte	0x26
	.byte	0xa
	.long	0x97
	.byte	0x40
	.uleb128 0x7
	.long	.LASF809
	.byte	0x9
	.byte	0x27
	.byte	0x12
	.long	0xdb2
	.byte	0x48
	.uleb128 0x7
	.long	.LASF810
	.byte	0x9
	.byte	0x29
	.byte	0xa
	.long	0x97
	.byte	0x50
	.uleb128 0x7
	.long	.LASF811
	.byte	0x9
	.byte	0x2a
	.byte	0x10
	.long	0xea6
	.byte	0x58
	.uleb128 0x7
	.long	.LASF812
	.byte	0x9
	.byte	0x2b
	.byte	0x15
	.long	0xeeb
	.byte	0x60
	.uleb128 0x7
	.long	.LASF813
	.byte	0x9
	.byte	0x2d
	.byte	0x11
	.long	0x135
	.byte	0x68
	.uleb128 0x7
	.long	.LASF814
	.byte	0x9
	.byte	0x2f
	.byte	0x9
	.long	0x135
	.byte	0x78
	.uleb128 0x7
	.long	.LASF815
	.byte	0x9
	.byte	0x31
	.byte	0xc
	.long	0x129
	.byte	0x88
	.uleb128 0x7
	.long	.LASF816
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.long	0x9e
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1b6
	.uleb128 0x3
	.long	.LASF817
	.byte	0x8
	.byte	0xf
	.byte	0x3
	.long	0x181
	.uleb128 0x3
	.long	.LASF818
	.byte	0x2
	.byte	0x4
	.byte	0xd
	.long	0x71
	.uleb128 0x6
	.long	.LASF819
	.byte	0x20
	.byte	0xa
	.byte	0x17
	.byte	0x10
	.long	0x2b3
	.uleb128 0x7
	.long	.LASF820
	.byte	0xa
	.byte	0x1a
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x7
	.long	.LASF821
	.byte	0xa
	.byte	0x1c
	.byte	0x1a
	.long	0x2db
	.byte	0x8
	.uleb128 0x7
	.long	.LASF822
	.byte	0xa
	.byte	0x1f
	.byte	0x11
	.long	0x135
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF823
	.byte	0x10
	.byte	0xa
	.byte	0x22
	.byte	0x10
	.long	0x2db
	.uleb128 0x7
	.long	.LASF824
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.long	0x318
	.byte	0
	.uleb128 0x7
	.long	.LASF825
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x343
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2b3
	.uleb128 0x3
	.long	.LASF826
	.byte	0xa
	.byte	0x20
	.byte	0x3
	.long	0x27e
	.uleb128 0xa
	.byte	0x1
	.long	0x97
	.long	0x30c
	.uleb128 0xb
	.long	0x30c
	.uleb128 0xb
	.long	0x312
	.uleb128 0xb
	.long	0xe1
	.uleb128 0xb
	.long	0xbd
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e1
	.uleb128 0x8
	.byte	0x8
	.long	0x141
	.uleb128 0x8
	.byte	0x8
	.long	0x2ed
	.uleb128 0xa
	.byte	0x1
	.long	0x97
	.long	0x33d
	.uleb128 0xb
	.long	0x30c
	.uleb128 0xb
	.long	0x33d
	.uleb128 0xb
	.long	0xe1
	.uleb128 0xb
	.long	0xbd
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x148
	.uleb128 0x8
	.byte	0x8
	.long	0x31e
	.uleb128 0x3
	.long	.LASF827
	.byte	0xa
	.byte	0x3d
	.byte	0x3
	.long	0x2b3
	.uleb128 0xc
	.long	.LASF829
	.byte	0x7
	.byte	0x1
	.long	0x44
	.byte	0xb
	.byte	0x38
	.byte	0xe
	.long	0x36e
	.uleb128 0xd
	.long	.LASF971
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF828
	.byte	0x14
	.byte	0xb
	.byte	0x4f
	.byte	0x10
	.long	0x3f8
	.uleb128 0x7
	.long	.LASF829
	.byte	0xb
	.byte	0x51
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"c"
	.byte	0xb
	.byte	0x53
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x1
	.uleb128 0x7
	.long	.LASF830
	.byte	0xb
	.byte	0x55
	.byte	0xd
	.long	0x38
	.byte	0x2
	.uleb128 0x7
	.long	.LASF831
	.byte	0xb
	.byte	0x57
	.byte	0x9
	.long	0x38
	.byte	0x3
	.uleb128 0xe
	.string	"lba"
	.byte	0xb
	.byte	0x5a
	.byte	0xe
	.long	0x78
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x4
	.uleb128 0x7
	.long	.LASF832
	.byte	0xb
	.byte	0x5c
	.byte	0xd
	.long	0x38
	.byte	0x7
	.uleb128 0xf
	.long	.LASF833
	.byte	0xb
	.byte	0x5f
	.byte	0xe
	.long	0x78
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x8
	.uleb128 0x7
	.long	.LASF834
	.byte	0xb
	.byte	0x60
	.byte	0xd
	.long	0x38
	.byte	0xb
	.uleb128 0x7
	.long	.LASF835
	.byte	0xb
	.byte	0x61
	.byte	0xe
	.long	0x52
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF836
	.byte	0xb
	.byte	0x66
	.byte	0xa
	.long	0x36e
	.uleb128 0x10
	.byte	0x40
	.byte	0xb
	.byte	0x72
	.byte	0x5
	.long	0x41b
	.uleb128 0x7
	.long	.LASF837
	.byte	0xb
	.byte	0x74
	.byte	0x11
	.long	0x41b
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0x42b
	.uleb128 0x12
	.long	0xaa
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.long	.LASF857
	.byte	0x40
	.byte	0xb
	.byte	0x6e
	.byte	0xf
	.long	0x44a
	.uleb128 0x14
	.long	.LASF828
	.byte	0xb
	.byte	0x6f
	.byte	0x18
	.long	0x3f8
	.uleb128 0x15
	.long	0x404
	.byte	0
	.uleb128 0x3
	.long	.LASF838
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x42b
	.uleb128 0x16
	.long	.LASF839
	.value	0x100
	.byte	0xb
	.byte	0x7a
	.byte	0x10
	.long	0x472
	.uleb128 0x7
	.long	.LASF840
	.byte	0xb
	.byte	0x7c
	.byte	0xd
	.long	0x472
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0x482
	.uleb128 0x12
	.long	0xaa
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.long	.LASF841
	.byte	0xb
	.byte	0x7e
	.byte	0xa
	.long	0x456
	.uleb128 0x17
	.string	"prd"
	.byte	0x10
	.byte	0xb
	.byte	0x85
	.byte	0x10
	.long	0x4c7
	.uleb128 0x18
	.string	"dba"
	.byte	0xb
	.byte	0x87
	.byte	0xe
	.long	0x9e
	.byte	0
	.uleb128 0xe
	.string	"dbc"
	.byte	0xb
	.byte	0x8a
	.byte	0x9
	.long	0x78
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0xc
	.uleb128 0xe
	.string	"i"
	.byte	0xb
	.byte	0x90
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.long	.LASF842
	.byte	0xb
	.byte	0x97
	.byte	0xa
	.long	0x48e
	.uleb128 0x16
	.long	.LASF843
	.value	0x100
	.byte	0xb
	.byte	0x9c
	.byte	0x10
	.long	0x509
	.uleb128 0x7
	.long	.LASF844
	.byte	0xb
	.byte	0x9f
	.byte	0x9
	.long	0x44a
	.byte	0
	.uleb128 0x7
	.long	.LASF840
	.byte	0xb
	.byte	0xa0
	.byte	0xd
	.long	0x41b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF845
	.byte	0xb
	.byte	0xa1
	.byte	0xb
	.long	0x509
	.byte	0x80
	.byte	0
	.uleb128 0x11
	.long	0x4c7
	.long	0x519
	.uleb128 0x12
	.long	0xaa
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF846
	.byte	0xb
	.byte	0xa8
	.byte	0xa
	.long	0x4d3
	.uleb128 0x6
	.long	.LASF847
	.byte	0x20
	.byte	0xb
	.byte	0xac
	.byte	0x10
	.long	0x56d
	.uleb128 0xe
	.string	"cfl"
	.byte	0xb
	.byte	0xae
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF848
	.byte	0xb
	.byte	0xb1
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF849
	.byte	0xb
	.byte	0xb3
	.byte	0xe
	.long	0x52
	.byte	0x2
	.uleb128 0x7
	.long	.LASF850
	.byte	0xb
	.byte	0xb6
	.byte	0xe
	.long	0x9e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF851
	.byte	0xb
	.byte	0xba
	.byte	0xa
	.long	0x525
	.uleb128 0x16
	.long	.LASF852
	.value	0x400
	.byte	0xb
	.byte	0xbf
	.byte	0x10
	.long	0x595
	.uleb128 0x7
	.long	.LASF853
	.byte	0xb
	.byte	0xc1
	.byte	0x16
	.long	0x595
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x56d
	.long	0x5a5
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF854
	.byte	0xb
	.byte	0xc2
	.byte	0xa
	.long	0x579
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xcc
	.byte	0x5
	.long	0x5eb
	.uleb128 0xf
	.long	.LASF855
	.byte	0xb
	.byte	0xce
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.long	.LASF856
	.byte	0xb
	.byte	0xd3
	.byte	0xd
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"dps"
	.byte	0xb
	.byte	0xd6
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF858
	.byte	0x4
	.byte	0xb
	.byte	0xcb
	.byte	0xf
	.long	0x611
	.uleb128 0x14
	.long	.LASF859
	.byte	0xb
	.byte	0xda
	.byte	0x7
	.long	0x5b1
	.uleb128 0x14
	.long	.LASF860
	.byte	0xb
	.byte	0xdb
	.byte	0xe
	.long	0x78
	.byte	0
	.uleb128 0x3
	.long	.LASF861
	.byte	0xb
	.byte	0xdc
	.byte	0xa
	.long	0x5eb
	.uleb128 0x19
	.long	.LASF864
	.byte	0xb
	.byte	0xdf
	.byte	0x1e
	.long	0x611
	.byte	0x9
	.byte	0x3
	.quad	px_interrupt_status_clear
	.uleb128 0x13
	.long	.LASF862
	.byte	0x4
	.byte	0xb
	.byte	0xe4
	.byte	0xf
	.long	0x64d
	.uleb128 0x14
	.long	.LASF860
	.byte	0xb
	.byte	0xe5
	.byte	0xe
	.long	0x78
	.byte	0
	.uleb128 0x3
	.long	.LASF863
	.byte	0xb
	.byte	0xe6
	.byte	0xa
	.long	0x633
	.uleb128 0x19
	.long	.LASF865
	.byte	0xb
	.byte	0xea
	.byte	0x1e
	.long	0x64d
	.byte	0x9
	.byte	0x3
	.quad	px_interrupt_enable_all_enabled
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xf2
	.byte	0x5
	.long	0x689
	.uleb128 0xf
	.long	.LASF866
	.byte	0xb
	.byte	0xf5
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.byte	0xf8
	.byte	0x5
	.long	0x6b1
	.uleb128 0xe
	.string	"ie"
	.byte	0xb
	.byte	0xfb
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"ae"
	.byte	0xb
	.byte	0xfe
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF867
	.byte	0x2c
	.byte	0xb
	.byte	0xf0
	.byte	0x10
	.long	0x702
	.uleb128 0x18
	.string	"cap"
	.byte	0xb
	.byte	0xf7
	.byte	0xe
	.long	0x66f
	.byte	0
	.uleb128 0x1a
	.string	"ghc"
	.byte	0xb
	.value	0x100
	.byte	0xe
	.long	0x689
	.byte	0x4
	.uleb128 0x1a
	.string	"is"
	.byte	0xb
	.value	0x101
	.byte	0xe
	.long	0x78
	.byte	0x8
	.uleb128 0x1a
	.string	"pi"
	.byte	0xb
	.value	0x103
	.byte	0xe
	.long	0x78
	.byte	0xc
	.uleb128 0x1b
	.long	.LASF840
	.byte	0xb
	.value	0x105
	.byte	0xe
	.long	0x702
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	0x78
	.long	0x712
	.uleb128 0x12
	.long	0xaa
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.long	.LASF868
	.byte	0xb
	.value	0x106
	.byte	0xa
	.long	0x6b1
	.uleb128 0x1d
	.byte	0x4
	.byte	0xb
	.value	0x11a
	.byte	0x5
	.long	0x76b
	.uleb128 0x1e
	.string	"st"
	.byte	0xb
	.value	0x11c
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.string	"fre"
	.byte	0xb
	.value	0x11e
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.string	"fr"
	.byte	0xb
	.value	0x121
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"cr"
	.byte	0xb
	.value	0x123
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.long	.LASF869
	.byte	0x80
	.byte	0xb
	.value	0x111
	.byte	0x10
	.long	0x806
	.uleb128 0x1b
	.long	.LASF870
	.byte	0xb
	.value	0x113
	.byte	0xe
	.long	0x9e
	.byte	0
	.uleb128 0x1b
	.long	.LASF871
	.byte	0xb
	.value	0x115
	.byte	0xe
	.long	0x9e
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF872
	.byte	0xb
	.value	0x118
	.byte	0x1b
	.long	0x611
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF873
	.byte	0xb
	.value	0x119
	.byte	0x1b
	.long	0x64d
	.byte	0x14
	.uleb128 0x1b
	.long	.LASF874
	.byte	0xb
	.value	0x126
	.byte	0xe
	.long	0x71f
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF875
	.byte	0xb
	.value	0x128
	.byte	0xe
	.long	0x78
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF876
	.byte	0xb
	.value	0x12c
	.byte	0xe
	.long	0x78
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF877
	.byte	0xb
	.value	0x12e
	.byte	0xe
	.long	0x78
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF878
	.byte	0xb
	.value	0x133
	.byte	0xe
	.long	0x78
	.byte	0x38
	.uleb128 0x1b
	.long	.LASF840
	.byte	0xb
	.value	0x137
	.byte	0xe
	.long	0x806
	.byte	0x3c
	.byte	0
	.uleb128 0x11
	.long	0x78
	.long	0x816
	.uleb128 0x12
	.long	0xaa
	.byte	0x10
	.byte	0
	.uleb128 0x1c
	.long	.LASF879
	.byte	0xb
	.value	0x138
	.byte	0xa
	.long	0x76b
	.uleb128 0x20
	.string	"hba"
	.value	0x1100
	.byte	0xb
	.value	0x13e
	.byte	0x10
	.long	0x85e
	.uleb128 0x1a
	.string	"ghc"
	.byte	0xb
	.value	0x140
	.byte	0xf
	.long	0x712
	.byte	0
	.uleb128 0x1b
	.long	.LASF840
	.byte	0xb
	.value	0x141
	.byte	0xe
	.long	0x85e
	.byte	0x2c
	.uleb128 0x21
	.long	.LASF880
	.byte	0xb
	.value	0x142
	.byte	0x10
	.long	0x86e
	.value	0x100
	.byte	0
	.uleb128 0x11
	.long	0x78
	.long	0x86e
	.uleb128 0x12
	.long	0xaa
	.byte	0x34
	.byte	0
	.uleb128 0x11
	.long	0x816
	.long	0x87e
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.long	.LASF881
	.byte	0xb
	.value	0x143
	.byte	0xa
	.long	0x823
	.uleb128 0x6
	.long	.LASF882
	.byte	0x28
	.byte	0xc
	.byte	0xa
	.byte	0x10
	.long	0x8b3
	.uleb128 0x7
	.long	.LASF883
	.byte	0xc
	.byte	0xc
	.byte	0x11
	.long	0x8b3
	.byte	0
	.uleb128 0x7
	.long	.LASF884
	.byte	0xc
	.byte	0xd
	.byte	0x10
	.long	0x2e1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x816
	.uleb128 0x3
	.long	.LASF885
	.byte	0xc
	.byte	0xe
	.byte	0x3
	.long	0x88b
	.uleb128 0x6
	.long	.LASF886
	.byte	0x4
	.byte	0xd
	.byte	0x12
	.byte	0x10
	.long	0x8f9
	.uleb128 0x18
	.string	"id"
	.byte	0xd
	.byte	0x14
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF887
	.byte	0xd
	.byte	0x15
	.byte	0xd
	.long	0x38
	.byte	0x1
	.uleb128 0x7
	.long	.LASF888
	.byte	0xd
	.byte	0x16
	.byte	0xe
	.long	0x52
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF889
	.byte	0xd
	.byte	0x17
	.byte	0xa
	.long	0x8c5
	.uleb128 0x10
	.byte	0x2
	.byte	0xd
	.byte	0x1d
	.byte	0x5
	.long	0x95c
	.uleb128 0xf
	.long	.LASF890
	.byte	0xd
	.byte	0x1f
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"mmc"
	.byte	0xd
	.byte	0x20
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"mme"
	.byte	0xd
	.byte	0x21
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"c64"
	.byte	0xd
	.byte	0x22
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF891
	.byte	0xd
	.byte	0x23
	.byte	0x11
	.long	0x38
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0xd
	.byte	0x26
	.byte	0x9
	.long	0x980
	.uleb128 0x7
	.long	.LASF892
	.byte	0xd
	.byte	0x28
	.byte	0x16
	.long	0x78
	.byte	0
	.uleb128 0x7
	.long	.LASF893
	.byte	0xd
	.byte	0x29
	.byte	0x16
	.long	0x52
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xd
	.byte	0x2b
	.byte	0x9
	.long	0x9a4
	.uleb128 0x7
	.long	.LASF892
	.byte	0xd
	.byte	0x2d
	.byte	0x16
	.long	0x9e
	.byte	0
	.uleb128 0x7
	.long	.LASF893
	.byte	0xd
	.byte	0x2e
	.byte	0x16
	.long	0x52
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.byte	0x10
	.byte	0xd
	.byte	0x25
	.byte	0x5
	.long	0x9c6
	.uleb128 0x14
	.long	.LASF894
	.byte	0xd
	.byte	0x2a
	.byte	0xb
	.long	0x95c
	.uleb128 0x14
	.long	.LASF895
	.byte	0xd
	.byte	0x2f
	.byte	0xb
	.long	0x980
	.byte	0
	.uleb128 0x6
	.long	.LASF896
	.byte	0x14
	.byte	0xd
	.byte	0x19
	.byte	0x10
	.long	0xa07
	.uleb128 0x18
	.string	"id"
	.byte	0xd
	.byte	0x1b
	.byte	0xd
	.long	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF887
	.byte	0xd
	.byte	0x1c
	.byte	0xd
	.long	0x38
	.byte	0x1
	.uleb128 0x7
	.long	.LASF888
	.byte	0xd
	.byte	0x24
	.byte	0x7
	.long	0x905
	.byte	0x2
	.uleb128 0x7
	.long	.LASF897
	.byte	0xd
	.byte	0x30
	.byte	0x7
	.long	0x9a4
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF898
	.byte	0xd
	.byte	0x31
	.byte	0xa
	.long	0x9c6
	.uleb128 0x23
	.value	0x1000
	.byte	0xd
	.byte	0x34
	.byte	0x5
	.long	0xa2b
	.uleb128 0x7
	.long	.LASF893
	.byte	0xd
	.byte	0x36
	.byte	0xe
	.long	0xa2b
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x141
	.long	0xa3c
	.uleb128 0x24
	.long	0xaa
	.value	0xfff
	.byte	0
	.uleb128 0x10
	.byte	0x70
	.byte	0xd
	.byte	0x38
	.byte	0x5
	.long	0xc34
	.uleb128 0x7
	.long	.LASF899
	.byte	0xd
	.byte	0x3a
	.byte	0x12
	.long	0x52
	.byte	0
	.uleb128 0x7
	.long	.LASF900
	.byte	0xd
	.byte	0x3b
	.byte	0x12
	.long	0x52
	.byte	0x2
	.uleb128 0x7
	.long	.LASF830
	.byte	0xd
	.byte	0x3c
	.byte	0x12
	.long	0x52
	.byte	0x4
	.uleb128 0x7
	.long	.LASF901
	.byte	0xd
	.byte	0x3d
	.byte	0x12
	.long	0x52
	.byte	0x6
	.uleb128 0x7
	.long	.LASF902
	.byte	0xd
	.byte	0x3e
	.byte	0x11
	.long	0x38
	.byte	0x8
	.uleb128 0x7
	.long	.LASF903
	.byte	0xd
	.byte	0x3f
	.byte	0x11
	.long	0x38
	.byte	0x9
	.uleb128 0x7
	.long	.LASF904
	.byte	0xd
	.byte	0x40
	.byte	0x11
	.long	0x38
	.byte	0xa
	.uleb128 0x7
	.long	.LASF905
	.byte	0xd
	.byte	0x41
	.byte	0x11
	.long	0x38
	.byte	0xb
	.uleb128 0x7
	.long	.LASF906
	.byte	0xd
	.byte	0x42
	.byte	0x11
	.long	0x38
	.byte	0xc
	.uleb128 0x7
	.long	.LASF907
	.byte	0xd
	.byte	0x43
	.byte	0x11
	.long	0x38
	.byte	0xd
	.uleb128 0x7
	.long	.LASF908
	.byte	0xd
	.byte	0x44
	.byte	0x11
	.long	0x38
	.byte	0xe
	.uleb128 0x7
	.long	.LASF909
	.byte	0xd
	.byte	0x45
	.byte	0x11
	.long	0x38
	.byte	0xf
	.uleb128 0x18
	.string	"bar"
	.byte	0xd
	.byte	0x46
	.byte	0x12
	.long	0xc34
	.byte	0x10
	.uleb128 0x7
	.long	.LASF910
	.byte	0xd
	.byte	0x47
	.byte	0x12
	.long	0x78
	.byte	0x28
	.uleb128 0x7
	.long	.LASF911
	.byte	0xd
	.byte	0x48
	.byte	0x12
	.long	0x52
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF912
	.byte	0xd
	.byte	0x49
	.byte	0x12
	.long	0x52
	.byte	0x2e
	.uleb128 0x7
	.long	.LASF913
	.byte	0xd
	.byte	0x4a
	.byte	0x12
	.long	0x78
	.byte	0x30
	.uleb128 0x7
	.long	.LASF914
	.byte	0xd
	.byte	0x4b
	.byte	0x11
	.long	0x38
	.byte	0x34
	.uleb128 0x7
	.long	.LASF915
	.byte	0xd
	.byte	0x4c
	.byte	0x11
	.long	0xc44
	.byte	0x35
	.uleb128 0x7
	.long	.LASF916
	.byte	0xd
	.byte	0x4d
	.byte	0x11
	.long	0x38
	.byte	0x3c
	.uleb128 0x7
	.long	.LASF917
	.byte	0xd
	.byte	0x4e
	.byte	0x11
	.long	0x38
	.byte	0x3d
	.uleb128 0x7
	.long	.LASF918
	.byte	0xd
	.byte	0x4f
	.byte	0x11
	.long	0x38
	.byte	0x3e
	.uleb128 0x7
	.long	.LASF919
	.byte	0xd
	.byte	0x50
	.byte	0x11
	.long	0x38
	.byte	0x3f
	.uleb128 0x7
	.long	.LASF920
	.byte	0xd
	.byte	0x51
	.byte	0x1a
	.long	0x8f9
	.byte	0x40
	.uleb128 0x7
	.long	.LASF921
	.byte	0xd
	.byte	0x52
	.byte	0x12
	.long	0x52
	.byte	0x44
	.uleb128 0x18
	.string	"bse"
	.byte	0xd
	.byte	0x53
	.byte	0x11
	.long	0x38
	.byte	0x46
	.uleb128 0x7
	.long	.LASF893
	.byte	0xd
	.byte	0x54
	.byte	0x11
	.long	0x38
	.byte	0x47
	.uleb128 0x7
	.long	.LASF896
	.byte	0xd
	.byte	0x55
	.byte	0x1a
	.long	0x8f9
	.byte	0x48
	.uleb128 0x7
	.long	.LASF922
	.byte	0xd
	.byte	0x56
	.byte	0x12
	.long	0x9e
	.byte	0x50
	.uleb128 0x7
	.long	.LASF923
	.byte	0xd
	.byte	0x57
	.byte	0x12
	.long	0x52
	.byte	0x58
	.uleb128 0x7
	.long	.LASF924
	.byte	0xd
	.byte	0x58
	.byte	0x11
	.long	0xc54
	.byte	0x5a
	.uleb128 0x7
	.long	.LASF925
	.byte	0xd
	.byte	0x59
	.byte	0x1a
	.long	0x8f9
	.byte	0x5c
	.uleb128 0x7
	.long	.LASF926
	.byte	0xd
	.byte	0x5a
	.byte	0x12
	.long	0x78
	.byte	0x60
	.uleb128 0x7
	.long	.LASF927
	.byte	0xd
	.byte	0x5b
	.byte	0x12
	.long	0x52
	.byte	0x64
	.uleb128 0x7
	.long	.LASF928
	.byte	0xd
	.byte	0x5c
	.byte	0x12
	.long	0x52
	.byte	0x66
	.uleb128 0x7
	.long	.LASF929
	.byte	0xd
	.byte	0x5d
	.byte	0x12
	.long	0x78
	.byte	0x68
	.uleb128 0x7
	.long	.LASF930
	.byte	0xd
	.byte	0x5e
	.byte	0x12
	.long	0x52
	.byte	0x6c
	.uleb128 0x7
	.long	.LASF931
	.byte	0xd
	.byte	0x5f
	.byte	0x12
	.long	0x52
	.byte	0x6e
	.byte	0
	.uleb128 0x11
	.long	0x78
	.long	0xc44
	.uleb128 0x12
	.long	0xaa
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0xc54
	.uleb128 0x12
	.long	0xaa
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0xc64
	.uleb128 0x12
	.long	0xaa
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.long	.LASF932
	.value	0x1000
	.byte	0xd
	.byte	0x33
	.byte	0xf
	.long	0xc8b
	.uleb128 0x26
	.string	"raw"
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0xa13
	.uleb128 0x14
	.long	.LASF933
	.byte	0xd
	.byte	0x60
	.byte	0x7
	.long	0xa3c
	.byte	0
	.uleb128 0x3
	.long	.LASF934
	.byte	0xd
	.byte	0x61
	.byte	0xa
	.long	0xc64
	.uleb128 0x8
	.byte	0x8
	.long	0xc8b
	.uleb128 0x6
	.long	.LASF935
	.byte	0x18
	.byte	0xe
	.byte	0xe
	.byte	0x10
	.long	0xcc5
	.uleb128 0x7
	.long	.LASF936
	.byte	0xe
	.byte	0x10
	.byte	0xc
	.long	0x129
	.byte	0
	.uleb128 0x7
	.long	.LASF937
	.byte	0xe
	.byte	0x11
	.byte	0x12
	.long	0xdb2
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	.LASF938
	.value	0x2a0
	.byte	0xf
	.byte	0x1b
	.byte	0x10
	.long	0xdb2
	.uleb128 0x7
	.long	.LASF939
	.byte	0xf
	.byte	0x1d
	.byte	0xb
	.long	0xd5
	.byte	0
	.uleb128 0x7
	.long	.LASF940
	.byte	0xf
	.byte	0x1e
	.byte	0xa
	.long	0xf2a
	.byte	0x4
	.uleb128 0x27
	.long	.LASF941
	.byte	0xf
	.byte	0x20
	.byte	0xc
	.long	0x129
	.value	0x108
	.uleb128 0x27
	.long	.LASF942
	.byte	0xf
	.byte	0x21
	.byte	0xc
	.long	0x129
	.value	0x118
	.uleb128 0x27
	.long	.LASF943
	.byte	0xf
	.byte	0x22
	.byte	0x12
	.long	0xdb2
	.value	0x128
	.uleb128 0x27
	.long	.LASF944
	.byte	0xf
	.byte	0x24
	.byte	0x11
	.long	0x135
	.value	0x130
	.uleb128 0x27
	.long	.LASF945
	.byte	0xf
	.byte	0x25
	.byte	0x11
	.long	0x135
	.value	0x140
	.uleb128 0x27
	.long	.LASF946
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x97
	.value	0x150
	.uleb128 0x27
	.long	.LASF947
	.byte	0xf
	.byte	0x28
	.byte	0x12
	.long	0xf1e
	.value	0x158
	.uleb128 0x27
	.long	.LASF948
	.byte	0xf
	.byte	0x2a
	.byte	0xd
	.long	0xe52
	.value	0x160
	.uleb128 0x27
	.long	.LASF949
	.byte	0xf
	.byte	0x31
	.byte	0xf
	.long	0x175
	.value	0x168
	.uleb128 0x27
	.long	.LASF950
	.byte	0xf
	.byte	0x34
	.byte	0x12
	.long	0xf3a
	.value	0x180
	.uleb128 0x27
	.long	.LASF951
	.byte	0xf
	.byte	0x35
	.byte	0x13
	.long	0xf5c
	.value	0x280
	.uleb128 0x27
	.long	.LASF952
	.byte	0xf
	.byte	0x45
	.byte	0xb
	.long	0xf9
	.value	0x288
	.uleb128 0x27
	.long	.LASF953
	.byte	0xf
	.byte	0x46
	.byte	0xb
	.long	0xf9
	.value	0x290
	.uleb128 0x27
	.long	.LASF954
	.byte	0xf
	.byte	0x47
	.byte	0x13
	.long	0xdb8
	.value	0x298
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xcc5
	.uleb128 0x8
	.byte	0x8
	.long	0xc9d
	.uleb128 0x28
	.string	"pt"
	.value	0x1000
	.byte	0x10
	.byte	0x18
	.byte	0x10
	.long	0xdd9
	.uleb128 0x7
	.long	.LASF955
	.byte	0x10
	.byte	0x1a
	.byte	0xf
	.long	0xdd9
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xb1
	.long	0xdea
	.uleb128 0x24
	.long	0xaa
	.value	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF956
	.byte	0x10
	.byte	0x1b
	.byte	0x16
	.long	0xdbe
	.uleb128 0x6
	.long	.LASF957
	.byte	0x30
	.byte	0x11
	.byte	0xd
	.byte	0x10
	.long	0xe52
	.uleb128 0x7
	.long	.LASF958
	.byte	0x11
	.byte	0xf
	.byte	0xf
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.long	.LASF959
	.byte	0x11
	.byte	0x10
	.byte	0xf
	.long	0xb1
	.byte	0x8
	.uleb128 0x7
	.long	.LASF960
	.byte	0x11
	.byte	0x11
	.byte	0xf
	.long	0xb1
	.byte	0x10
	.uleb128 0x7
	.long	.LASF961
	.byte	0x11
	.byte	0x14
	.byte	0xa
	.long	0xe52
	.byte	0x18
	.uleb128 0x7
	.long	.LASF962
	.byte	0x11
	.byte	0x18
	.byte	0xf
	.long	0xb1
	.byte	0x20
	.uleb128 0x7
	.long	.LASF963
	.byte	0x11
	.byte	0x19
	.byte	0xc
	.long	0xbd
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdea
	.uleb128 0x3
	.long	.LASF964
	.byte	0x11
	.byte	0x1a
	.byte	0x3
	.long	0xdf6
	.uleb128 0x6
	.long	.LASF965
	.byte	0x48
	.byte	0x12
	.byte	0x7
	.byte	0x10
	.long	0xea6
	.uleb128 0x7
	.long	.LASF966
	.byte	0x12
	.byte	0x9
	.byte	0xa
	.long	0x97
	.byte	0
	.uleb128 0x7
	.long	.LASF967
	.byte	0x12
	.byte	0xa
	.byte	0xf
	.long	0xe58
	.byte	0x8
	.uleb128 0x7
	.long	.LASF968
	.byte	0x12
	.byte	0xc
	.byte	0x10
	.long	0xea6
	.byte	0x38
	.uleb128 0x7
	.long	.LASF969
	.byte	0x12
	.byte	0xe
	.byte	0xf
	.long	0xb1
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x175
	.uleb128 0x3
	.long	.LASF970
	.byte	0x12
	.byte	0xf
	.byte	0x3
	.long	0xe64
	.uleb128 0x29
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.long	0xeeb
	.uleb128 0xd
	.long	.LASF972
	.byte	0
	.uleb128 0xd
	.long	.LASF973
	.byte	0x1
	.uleb128 0xd
	.long	.LASF974
	.byte	0x2
	.uleb128 0xd
	.long	.LASF975
	.byte	0x3
	.uleb128 0xd
	.long	.LASF976
	.byte	0x4
	.uleb128 0xd
	.long	.LASF977
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF978
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.long	0xeb8
	.uleb128 0x3
	.long	.LASF979
	.byte	0x9
	.byte	0x35
	.byte	0x3
	.long	0x1b6
	.uleb128 0x29
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.long	0xf1e
	.uleb128 0xd
	.long	.LASF980
	.byte	0
	.uleb128 0xd
	.long	.LASF981
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF982
	.byte	0xf
	.byte	0x18
	.byte	0x3
	.long	0xf03
	.uleb128 0x11
	.long	0x141
	.long	0xf3a
	.uleb128 0x12
	.long	0xaa
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	0xf4a
	.long	0xf4a
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf50
	.uleb128 0x2a
	.long	.LASF983
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF984
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xf56
	.uleb128 0x3
	.long	.LASF985
	.byte	0xf
	.byte	0x49
	.byte	0x3
	.long	0xcc5
	.uleb128 0x2b
	.long	.LASF986
	.byte	0x13
	.byte	0x9
	.byte	0xf
	.long	0xeac
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF987
	.byte	0x13
	.byte	0xa
	.byte	0x10
	.long	0xf8a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xf62
	.uleb128 0x2b
	.long	.LASF988
	.byte	0x13
	.byte	0xb
	.byte	0x13
	.long	0xf9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x8
	.long	0xef7
	.uleb128 0x6
	.long	.LASF989
	.byte	0xb0
	.byte	0x3
	.byte	0x1f
	.byte	0x10
	.long	0x10d0
	.uleb128 0x7
	.long	.LASF990
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x9e
	.byte	0
	.uleb128 0x7
	.long	.LASF991
	.byte	0x3
	.byte	0x23
	.byte	0xe
	.long	0x9e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF992
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.long	0x9e
	.byte	0x10
	.uleb128 0x7
	.long	.LASF993
	.byte	0x3
	.byte	0x25
	.byte	0xe
	.long	0x9e
	.byte	0x18
	.uleb128 0x7
	.long	.LASF994
	.byte	0x3
	.byte	0x26
	.byte	0xe
	.long	0x9e
	.byte	0x20
	.uleb128 0x7
	.long	.LASF995
	.byte	0x3
	.byte	0x27
	.byte	0xe
	.long	0x9e
	.byte	0x28
	.uleb128 0x7
	.long	.LASF996
	.byte	0x3
	.byte	0x28
	.byte	0xe
	.long	0x9e
	.byte	0x30
	.uleb128 0x7
	.long	.LASF997
	.byte	0x3
	.byte	0x29
	.byte	0xe
	.long	0x9e
	.byte	0x38
	.uleb128 0x7
	.long	.LASF998
	.byte	0x3
	.byte	0x2a
	.byte	0xe
	.long	0x9e
	.byte	0x40
	.uleb128 0x7
	.long	.LASF999
	.byte	0x3
	.byte	0x2b
	.byte	0xe
	.long	0x9e
	.byte	0x48
	.uleb128 0x7
	.long	.LASF1000
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.long	0x9e
	.byte	0x50
	.uleb128 0x7
	.long	.LASF1001
	.byte	0x3
	.byte	0x2d
	.byte	0xe
	.long	0x9e
	.byte	0x58
	.uleb128 0x7
	.long	.LASF1002
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.long	0x9e
	.byte	0x60
	.uleb128 0x7
	.long	.LASF1003
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.long	0x9e
	.byte	0x68
	.uleb128 0x7
	.long	.LASF1004
	.byte	0x3
	.byte	0x30
	.byte	0xe
	.long	0x9e
	.byte	0x70
	.uleb128 0x7
	.long	.LASF1005
	.byte	0x3
	.byte	0x33
	.byte	0xe
	.long	0x9e
	.byte	0x78
	.uleb128 0x7
	.long	.LASF1006
	.byte	0x3
	.byte	0x36
	.byte	0xe
	.long	0x9e
	.byte	0x80
	.uleb128 0x7
	.long	.LASF1007
	.byte	0x3
	.byte	0x37
	.byte	0xe
	.long	0x9e
	.byte	0x88
	.uleb128 0x7
	.long	.LASF1008
	.byte	0x3
	.byte	0x38
	.byte	0xe
	.long	0x9e
	.byte	0x90
	.uleb128 0x7
	.long	.LASF1009
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.long	0x9e
	.byte	0x98
	.uleb128 0x7
	.long	.LASF1010
	.byte	0x3
	.byte	0x3a
	.byte	0xe
	.long	0x9e
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF1011
	.byte	0x3
	.byte	0x3b
	.byte	0xe
	.long	0x9e
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.long	.LASF1012
	.byte	0x3
	.byte	0x3c
	.byte	0xa
	.long	0xfa4
	.uleb128 0x3
	.long	.LASF1013
	.byte	0x3
	.byte	0x46
	.byte	0x10
	.long	0x10e8
	.uleb128 0x8
	.byte	0x8
	.long	0x10ee
	.uleb128 0xa
	.byte	0x1
	.long	0x97
	.long	0x10fe
	.uleb128 0xb
	.long	0x10fe
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x10d0
	.uleb128 0x2b
	.long	.LASF1014
	.byte	0x4
	.byte	0x8c
	.byte	0x11
	.long	0x9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"hba"
	.byte	0x1
	.byte	0x14
	.byte	0xf
	.long	0x1128
	.byte	0x9
	.byte	0x3
	.quad	hba
	.uleb128 0x8
	.byte	0x8
	.long	0x87e
	.uleb128 0x11
	.long	0x78
	.long	0x113e
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.long	.LASF1015
	.byte	0x1
	.byte	0x18
	.byte	0x11
	.long	0x112e
	.byte	0x9
	.byte	0x3
	.quad	outstanding_requests
	.uleb128 0x11
	.long	0x175
	.long	0x116a
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.long	.LASF1016
	.byte	0x1
	.byte	0x1c
	.byte	0x12
	.long	0x1154
	.byte	0x9
	.byte	0x3
	.quad	outstanding_request_queues
	.uleb128 0x11
	.long	0x175
	.long	0x1190
	.uleb128 0x12
	.long	0xaa
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.long	.LASF1017
	.byte	0x1
	.byte	0x21
	.byte	0x12
	.long	0x1180
	.byte	0x9
	.byte	0x3
	.quad	command_slot_queues
	.uleb128 0x19
	.long	.LASF1018
	.byte	0x1
	.byte	0x29
	.byte	0x17
	.long	0x349
	.byte	0x9
	.byte	0x3
	.quad	sata_disk_ops
	.uleb128 0x2d
	.long	.LASF1019
	.byte	0x1
	.byte	0x44
	.byte	0xa
	.long	0x266
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	because_qemu_doesnt_emulate_ahci_ncq_correctly
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1020
	.byte	0x3
	.byte	0x4d
	.byte	0x10
	.byte	0x1
	.long	0x10dc
	.byte	0x1
	.long	0x11f1
	.uleb128 0xb
	.long	0x38
	.uleb128 0xb
	.long	0x10dc
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1023
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x120b
	.uleb128 0xb
	.long	0xea6
	.uleb128 0xb
	.long	0x120b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x260
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1021
	.byte	0x14
	.byte	0x6d
	.byte	0x7
	.byte	0x1
	.long	0xf9
	.byte	0x1
	.long	0x122a
	.uleb128 0xb
	.long	0xbd
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1022
	.byte	0xd
	.byte	0x70
	.byte	0x10
	.byte	0x1
	.long	0xc97
	.byte	0x1
	.long	0x124d
	.uleb128 0xb
	.long	0x38
	.uleb128 0xb
	.long	0x38
	.uleb128 0xb
	.long	0x38
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1024
	.byte	0x8
	.byte	0x20
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1262
	.uleb128 0xb
	.long	0x1262
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x266
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1025
	.byte	0xa
	.byte	0x49
	.byte	0x6
	.byte	0x1
	.long	0x97
	.byte	0x1
	.long	0x1281
	.uleb128 0xb
	.long	0x30c
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1026
	.byte	0x6
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1296
	.uleb128 0xb
	.long	0x1296
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x135
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1027
	.byte	0x15
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.long	0xf9
	.byte	0x1
	.long	0x12b5
	.uleb128 0xb
	.long	0xbd
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1028
	.byte	0x7
	.byte	0x6e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x12ca
	.uleb128 0xb
	.long	0xea6
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1029
	.byte	0x8
	.byte	0x32
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x12df
	.uleb128 0xb
	.long	0x1262
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1030
	.byte	0x4
	.byte	0x9b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x12f5
	.uleb128 0xb
	.long	0x312
	.uleb128 0x30
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1031
	.byte	0x4
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.long	0x33d
	.byte	0x1
	.long	0x130e
	.uleb128 0xb
	.long	0x9e
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1032
	.byte	0x16
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.long	0xf9
	.byte	0x1
	.long	0x1331
	.uleb128 0xb
	.long	0xf9
	.uleb128 0xb
	.long	0x71
	.uleb128 0xb
	.long	0xbd
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1033
	.byte	0x7
	.byte	0x46
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x1346
	.uleb128 0xb
	.long	0xea6
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1034
	.byte	0x10
	.byte	0x43
	.byte	0xb
	.byte	0x1
	.long	0xb1
	.byte	0x1
	.long	0x135f
	.uleb128 0xb
	.long	0xb1
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1035
	.byte	0x3
	.byte	0x70
	.byte	0x9
	.byte	0x1
	.long	0x38
	.byte	0x1
	.long	0x1378
	.uleb128 0xb
	.long	0x38
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1036
	.byte	0x4
	.byte	0xfd
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.long	0x139e
	.uleb128 0xb
	.long	0x33d
	.uleb128 0xb
	.long	0x71
	.uleb128 0xb
	.long	0x33d
	.uleb128 0xb
	.long	0x33d
	.uleb128 0x30
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF1037
	.byte	0x8
	.byte	0x2b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.long	0x13b3
	.uleb128 0xb
	.long	0x1262
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF1038
	.byte	0x10
	.byte	0x57
	.byte	0x6
	.byte	0x1
	.long	0x97
	.byte	0x1
	.long	0x13e5
	.uleb128 0xb
	.long	0xe52
	.uleb128 0xb
	.long	0xb1
	.uleb128 0xb
	.long	0xb1
	.uleb128 0xb
	.long	0xb1
	.uleb128 0xb
	.long	0x78
	.uleb128 0xb
	.long	0x78
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF1039
	.byte	0x10
	.byte	0x4a
	.byte	0x9
	.long	0xe52
	.byte	0x1
	.long	0x13f9
	.uleb128 0x30
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF1042
	.byte	0x1
	.value	0x215
	.byte	0x6
	.byte	0x1
	.long	0x97
	.quad	.LFB25
	.quad	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x146d
	.uleb128 0x34
	.long	.LASF884
	.byte	0x1
	.value	0x215
	.byte	0x23
	.long	0x30c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x215
	.byte	0x35
	.long	0x33d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1040
	.byte	0x1
	.value	0x215
	.byte	0x45
	.long	0xe1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1041
	.byte	0x1
	.value	0x216
	.byte	0x1e
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LVL87
	.long	0x1b05
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF1043
	.byte	0x1
	.value	0x1fa
	.byte	0x6
	.byte	0x1
	.long	0x97
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x14e1
	.uleb128 0x34
	.long	.LASF884
	.byte	0x1
	.value	0x1fa
	.byte	0x22
	.long	0x30c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x1fa
	.byte	0x2e
	.long	0x312
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1040
	.byte	0x1
	.value	0x1fa
	.byte	0x3e
	.long	0xe1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1041
	.byte	0x1
	.value	0x1fb
	.byte	0x1d
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LVL86
	.long	0x1b05
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF1048
	.byte	0x1
	.value	0x1e5
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x151d
	.uleb128 0x36
	.quad	.LVL84
	.long	0x11d3
	.uleb128 0x36
	.quad	.LVL85
	.long	0x162b
	.byte	0
	.uleb128 0x38
	.long	.LASF1065
	.byte	0x1
	.value	0x19a
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB22
	.quad	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1616
	.uleb128 0x34
	.long	.LASF989
	.byte	0x1
	.value	0x19a
	.byte	0x2c
	.long	0x10fe
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF1050
	.long	0x1626
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.0
	.uleb128 0x3a
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x3b
	.long	.LASF1044
	.byte	0x1
	.value	0x1a0
	.byte	0x12
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF883
	.byte	0x1
	.value	0x1a3
	.byte	0x15
	.long	0x8b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF1045
	.byte	0x1
	.value	0x1c6
	.byte	0x12
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF1046
	.byte	0x1
	.value	0x1ce
	.byte	0x12
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.quad	.LBB26
	.quad	.LBE26
	.long	0x15fa
	.uleb128 0x3b
	.long	.LASF1047
	.byte	0x1
	.value	0x1d3
	.byte	0x16
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3d
	.string	"thr"
	.byte	0x1
	.value	0x1d6
	.byte	0x18
	.long	0xf9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LVL83
	.long	0x11f1
	.byte	0
	.uleb128 0x36
	.quad	.LVL81
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL82
	.long	0x1378
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x148
	.long	0x1626
	.uleb128 0x12
	.long	0xaa
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.long	0x1616
	.uleb128 0x37
	.byte	0x1
	.long	.LASF1049
	.byte	0x1
	.value	0x137
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x180f
	.uleb128 0x3d
	.string	"dev"
	.byte	0x1
	.value	0x13c
	.byte	0x14
	.long	0xc97
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF1050
	.long	0x181f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.1
	.uleb128 0x3d
	.string	"cap"
	.byte	0x1
	.value	0x147
	.byte	0x17
	.long	0x1824
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF1051
	.byte	0x1
	.value	0x150
	.byte	0x17
	.long	0x182a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	.LASF1052
	.byte	0x1
	.value	0x177
	.byte	0xf
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.long	.LASF1053
	.byte	0x1
	.value	0x188
	.byte	0xe
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.quad	.LBB24
	.quad	.LBE24
	.long	0x16e3
	.uleb128 0x3b
	.long	.LASF1054
	.byte	0x1
	.value	0x18c
	.byte	0x12
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.quad	.LVL80
	.long	0x1830
	.byte	0
	.uleb128 0x36
	.quad	.LVL57
	.long	0x124d
	.uleb128 0x36
	.quad	.LVL58
	.long	0x122a
	.uleb128 0x36
	.quad	.LVL59
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL60
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL61
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL62
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL63
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL64
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL65
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL66
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL67
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL68
	.long	0x1e3d
	.uleb128 0x36
	.quad	.LVL69
	.long	0x1211
	.uleb128 0x36
	.quad	.LVL70
	.long	0x130e
	.uleb128 0x36
	.quad	.LVL71
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL72
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL73
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL74
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL75
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL76
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL77
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL78
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL79
	.long	0x1378
	.byte	0
	.uleb128 0x11
	.long	0x148
	.long	0x181f
	.uleb128 0x12
	.long	0xaa
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	0x180f
	.uleb128 0x8
	.byte	0x8
	.long	0x8f9
	.uleb128 0x8
	.byte	0x8
	.long	0xa07
	.uleb128 0x3e
	.long	.LASF1075
	.byte	0x1
	.byte	0xeb
	.byte	0xd
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1aa2
	.uleb128 0x3f
	.long	.LASF883
	.byte	0x1
	.byte	0xeb
	.byte	0x2e
	.long	0x8b3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3f
	.long	.LASF1054
	.byte	0x1
	.byte	0xeb
	.byte	0x41
	.long	0x84
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3f
	.long	.LASF1052
	.byte	0x1
	.byte	0xec
	.byte	0x2c
	.long	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.long	.LASF1050
	.long	0x1ab2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.2
	.uleb128 0x19
	.long	.LASF852
	.byte	0x1
	.byte	0xfb
	.byte	0x15
	.long	0x1ab7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF839
	.byte	0x1
	.byte	0xfd
	.byte	0x15
	.long	0x1abd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF1055
	.byte	0x1
	.value	0x10e
	.byte	0x16
	.long	0x1ac3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.quad	.LBB20
	.quad	.LBE20
	.long	0x18f3
	.uleb128 0x3d
	.string	"i"
	.byte	0x1
	.value	0x111
	.byte	0x13
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.quad	.LVL39
	.long	0x12b5
	.byte	0
	.uleb128 0x3c
	.quad	.LBB21
	.quad	.LBE21
	.long	0x19ab
	.uleb128 0x3b
	.long	.LASF1056
	.byte	0x1
	.value	0x11f
	.byte	0x15
	.long	0x1ac9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.string	"ret"
	.byte	0x1
	.value	0x124
	.byte	0xe
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LVL41
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL42
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL43
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL44
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL45
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL46
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL47
	.long	0x129c
	.uleb128 0x36
	.quad	.LVL48
	.long	0x1281
	.uleb128 0x36
	.quad	.LVL49
	.long	0x1268
	.uleb128 0x36
	.quad	.LVL50
	.long	0x1378
	.byte	0
	.uleb128 0x40
	.long	0x1acf
	.quad	.LBB18
	.quad	.LBE18
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.long	0x19d1
	.uleb128 0x41
	.long	0x1add
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x42
	.long	0x1aea
	.quad	.LBB22
	.quad	.LBE22
	.byte	0x1
	.value	0x12f
	.byte	0x5
	.long	0x19f8
	.uleb128 0x41
	.long	0x1af8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x36
	.quad	.LVL33
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL34
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL35
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL36
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL37
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL38
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL40
	.long	0x12b5
	.uleb128 0x36
	.quad	.LVL51
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL52
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL53
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL54
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL55
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL56
	.long	0x12df
	.byte	0
	.uleb128 0x11
	.long	0x148
	.long	0x1ab2
	.uleb128 0x12
	.long	0xaa
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.long	0x1aa2
	.uleb128 0x8
	.byte	0x8
	.long	0x5a5
	.uleb128 0x8
	.byte	0x8
	.long	0x482
	.uleb128 0x8
	.byte	0x8
	.long	0x519
	.uleb128 0x8
	.byte	0x8
	.long	0x8b9
	.uleb128 0x43
	.long	.LASF1057
	.byte	0x1
	.byte	0xe0
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x1aea
	.uleb128 0x44
	.long	.LASF883
	.byte	0x1
	.byte	0xe0
	.byte	0x29
	.long	0x8b3
	.byte	0
	.uleb128 0x43
	.long	.LASF1058
	.byte	0x1
	.byte	0xd7
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x1b05
	.uleb128 0x44
	.long	.LASF883
	.byte	0x1
	.byte	0xd7
	.byte	0x2a
	.long	0x8b3
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF1059
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.byte	0x1
	.long	0x97
	.quad	.LFB17
	.quad	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1e16
	.uleb128 0x3f
	.long	.LASF883
	.byte	0x1
	.byte	0x51
	.byte	0x24
	.long	0x8b3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x46
	.string	"lba"
	.byte	0x1
	.byte	0x51
	.byte	0x32
	.long	0xc9
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3f
	.long	.LASF1060
	.byte	0x1
	.byte	0x51
	.byte	0x40
	.long	0x52
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x46
	.string	"buf"
	.byte	0x1
	.byte	0x51
	.byte	0x4d
	.long	0xf9
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3f
	.long	.LASF848
	.byte	0x1
	.byte	0x52
	.byte	0x1c
	.long	0x71
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x39
	.long	.LASF1050
	.long	0x1e26
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.3
	.uleb128 0x19
	.long	.LASF1044
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"ipl"
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x19
	.long	.LASF1061
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF1062
	.byte	0x1
	.byte	0x61
	.byte	0xa
	.long	0x97
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF852
	.byte	0x1
	.byte	0x68
	.byte	0x15
	.long	0x1ab7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF847
	.byte	0x1
	.byte	0x6a
	.byte	0x17
	.long	0x1e2b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF843
	.byte	0x1
	.byte	0x76
	.byte	0x16
	.long	0x1ac3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.long	.LASF845
	.byte	0x1
	.byte	0x7b
	.byte	0xc
	.long	0x1e31
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF857
	.byte	0x1
	.byte	0x8b
	.byte	0x19
	.long	0x1e37
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.long	.LASF1063
	.byte	0x1
	.byte	0xbc
	.byte	0xb
	.long	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0xce
	.byte	0xa
	.long	0x97
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3c
	.quad	.LBB17
	.quad	.LBE17
	.long	0x1c5c
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.byte	0x13
	.long	0x84
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x40
	.long	0x1e97
	.quad	.LBB15
	.quad	.LBE15
	.byte	0x1
	.byte	0x62
	.byte	0x1c
	.long	0x1c82
	.uleb128 0x41
	.long	0x1eaa
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x36
	.quad	.LVL2
	.long	0x139e
	.uleb128 0x36
	.quad	.LVL3
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL4
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL5
	.long	0x135f
	.uleb128 0x36
	.quad	.LVL6
	.long	0x1346
	.uleb128 0x36
	.quad	.LVL7
	.long	0x1331
	.uleb128 0x36
	.quad	.LVL8
	.long	0x130e
	.uleb128 0x36
	.quad	.LVL9
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL10
	.long	0x130e
	.uleb128 0x36
	.quad	.LVL11
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL12
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL13
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL14
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL15
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL16
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL17
	.long	0x1378
	.uleb128 0x36
	.quad	.LVL18
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL19
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL20
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL21
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL22
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL23
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL24
	.long	0x1331
	.uleb128 0x36
	.quad	.LVL25
	.long	0x135f
	.uleb128 0x36
	.quad	.LVL26
	.long	0x12f5
	.uleb128 0x36
	.quad	.LVL27
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL28
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL29
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL30
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL31
	.long	0x12df
	.uleb128 0x36
	.quad	.LVL32
	.long	0x12ca
	.byte	0
	.uleb128 0x11
	.long	0x148
	.long	0x1e26
	.uleb128 0x12
	.long	0xaa
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.long	0x1e16
	.uleb128 0x8
	.byte	0x8
	.long	0x56d
	.uleb128 0x8
	.byte	0x8
	.long	0x4c7
	.uleb128 0x8
	.byte	0x8
	.long	0x3f8
	.uleb128 0x47
	.byte	0x1
	.long	.LASF1085
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1e97
	.uleb128 0x3f
	.long	.LASF892
	.byte	0x1
	.byte	0x3c
	.byte	0x1a
	.long	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3f
	.long	.LASF837
	.byte	0x1
	.byte	0x3c
	.byte	0x27
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LVL0
	.long	0x13e5
	.uleb128 0x36
	.quad	.LVL1
	.long	0x13b3
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF1064
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.long	0x97
	.byte	0x1
	.long	0x1eb7
	.uleb128 0x44
	.long	.LASF883
	.byte	0x1
	.byte	0x30
	.byte	0x26
	.long	0x8b3
	.byte	0
	.uleb128 0x38
	.long	.LASF1066
	.byte	0x4
	.value	0x124
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1ef9
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x124
	.byte	0x20
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x124
	.byte	0x28
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1067
	.byte	0x4
	.value	0x122
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB13
	.quad	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1f3b
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x122
	.byte	0x1d
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x122
	.byte	0x25
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1068
	.byte	0x4
	.value	0x120
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB12
	.quad	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1f7d
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x120
	.byte	0x1e
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x120
	.byte	0x26
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1069
	.byte	0x4
	.value	0x11e
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB11
	.quad	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1fbf
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x11e
	.byte	0x1b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x11e
	.byte	0x23
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1070
	.byte	0x4
	.value	0x11c
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB10
	.quad	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2001
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x11c
	.byte	0x1c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x11c
	.byte	0x24
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1071
	.byte	0x4
	.value	0x117
	.byte	0xd
	.byte	0x1
	.long	0x97
	.quad	.LFB9
	.quad	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2043
	.uleb128 0x35
	.string	"l"
	.byte	0x4
	.value	0x117
	.byte	0x19
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"r"
	.byte	0x4
	.value	0x117
	.byte	0x21
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x49
	.long	.LASF1072
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.quad	.LFB8
	.quad	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x49
	.long	.LASF1073
	.byte	0x3
	.byte	0x5b
	.byte	0x14
	.quad	.LFB7
	.quad	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x49
	.long	.LASF1074
	.byte	0x3
	.byte	0x59
	.byte	0x14
	.quad	.LFB6
	.quad	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF1076
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.long	0x9e
	.quad	.LFB5
	.quad	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x20c7
	.uleb128 0x19
	.long	.LASF1077
	.byte	0x3
	.byte	0x53
	.byte	0xe
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4b
	.long	.LASF1078
	.byte	0x2
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.long	0x71
	.quad	.LFB4
	.quad	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x213a
	.uleb128 0x46
	.string	"a"
	.byte	0x2
	.byte	0x1a
	.byte	0x31
	.long	0x213a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4c
	.long	0x21db
	.quad	.LBB13
	.quad	.LBE13
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.uleb128 0x41
	.long	0x2201
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x41
	.long	0x21f7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x41
	.long	0x21ed
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4d
	.long	0x220b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4d
	.long	0x2215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x272
	.uleb128 0x4b
	.long	.LASF1079
	.byte	0x2
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.long	0x71
	.quad	.LFB3
	.quad	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2172
	.uleb128 0x46
	.string	"a"
	.byte	0x2
	.byte	0x15
	.byte	0x31
	.long	0x213a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF1080
	.byte	0x2
	.byte	0x13
	.byte	0x14
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x21a0
	.uleb128 0x46
	.string	"a"
	.byte	0x2
	.byte	0x13
	.byte	0x29
	.long	0x213a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF1081
	.byte	0x2
	.byte	0x11
	.byte	0x14
	.byte	0x1
	.quad	.LFB1
	.quad	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x21db
	.uleb128 0x46
	.string	"a"
	.byte	0x2
	.byte	0x11
	.byte	0x29
	.long	0x213a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.string	"i"
	.byte	0x2
	.byte	0x11
	.byte	0x30
	.long	0x71
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4e
	.long	.LASF1086
	.byte	0x2
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.long	0x71
	.byte	0x1
	.long	0x2222
	.uleb128 0x4f
	.string	"a"
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.long	0x213a
	.uleb128 0x4f
	.string	"v"
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.long	0x71
	.uleb128 0x4f
	.string	"u"
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.long	0x71
	.uleb128 0x50
	.string	"c"
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.long	0x71
	.uleb128 0x50
	.string	"old"
	.byte	0x2
	.byte	0xa
	.byte	0xc
	.long	0x71
	.byte	0
	.uleb128 0x51
	.long	0x21db
	.quad	.LFB0
	.quad	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2267
	.uleb128 0x41
	.long	0x21ed
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x41
	.long	0x21f7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x41
	.long	0x2201
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4d
	.long	0x220b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4d
	.long	0x2215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x51
	.long	0x1e97
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x228c
	.uleb128 0x41
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x51
	.long	0x1aea
	.quad	.LFB18
	.quad	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x22b1
	.uleb128 0x41
	.long	0x1af8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x52
	.long	0x1acf
	.quad	.LFB19
	.quad	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x41
	.long	0x1add
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x17
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 23 "include/drivers/dev.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x6
	.file 24 "include/kernel.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 25 "include/mm/mobj.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x7
	.file 26 "include/proc/spinlock.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1a
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
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 27 "include/util/btree.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 28 "include/mm/pframe.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF452
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x3
	.long	.LASF478
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 29 "include/errno.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.file 30 "include/main/smp.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1e
	.file 31 "include/boot/config.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
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
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
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
	.file 32 "include/config.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF674
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.file 33 "include/main/apic.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x10
	.long	.LASF688
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x16
	.file 34 "include/stdarg.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x22
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF765
	.byte	0x5
	.uleb128 0xd
	.long	.LASF766
	.byte	0x5
	.uleb128 0xe
	.long	.LASF767
	.byte	0x5
	.uleb128 0x10
	.long	.LASF768
	.byte	0x5
	.uleb128 0x11
	.long	.LASF769
	.byte	0x5
	.uleb128 0x12
	.long	.LASF770
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
	.section	.debug_macro,"G",@progbits,wm4.atomic.h.2.72172410bc17d188b39a3ef968b1c0a6,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF411
	.byte	0x5
	.uleb128 0x6
	.long	.LASF412
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.btree.h.21.672c46ec88ac5af8e0e0b3d80372ebac,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF413
	.byte	0x5
	.uleb128 0x16
	.long	.LASF414
	.byte	0x5
	.uleb128 0x17
	.long	.LASF415
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.page.h.16.ce77fc105ad3d118d91491723596dd47,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF416
	.byte	0x5
	.uleb128 0x11
	.long	.LASF417
	.byte	0x5
	.uleb128 0x12
	.long	.LASF418
	.byte	0x5
	.uleb128 0x14
	.long	.LASF419
	.byte	0x5
	.uleb128 0x15
	.long	.LASF420
	.byte	0x5
	.uleb128 0x18
	.long	.LASF421
	.byte	0x5
	.uleb128 0x19
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF425
	.byte	0x5
	.uleb128 0x20
	.long	.LASF426
	.byte	0x5
	.uleb128 0x22
	.long	.LASF427
	.byte	0x5
	.uleb128 0x23
	.long	.LASF428
	.byte	0x5
	.uleb128 0x25
	.long	.LASF429
	.byte	0x5
	.uleb128 0x26
	.long	.LASF430
	.byte	0x5
	.uleb128 0x27
	.long	.LASF431
	.byte	0x5
	.uleb128 0x28
	.long	.LASF432
	.byte	0x5
	.uleb128 0x29
	.long	.LASF433
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF434
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF435
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF436
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF437
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF438
	.byte	0x5
	.uleb128 0x30
	.long	.LASF439
	.byte	0x5
	.uleb128 0x31
	.long	.LASF440
	.byte	0x5
	.uleb128 0x32
	.long	.LASF441
	.byte	0x5
	.uleb128 0x33
	.long	.LASF442
	.byte	0x5
	.uleb128 0x34
	.long	.LASF443
	.byte	0x5
	.uleb128 0x35
	.long	.LASF444
	.byte	0x5
	.uleb128 0x37
	.long	.LASF445
	.byte	0x5
	.uleb128 0x38
	.long	.LASF446
	.byte	0x5
	.uleb128 0x39
	.long	.LASF447
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF448
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF449
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF450
	.byte	0x5
	.uleb128 0x40
	.long	.LASF451
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ahci.h.15.f00349a0c671563a4811197ab8a9e909,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.long	.LASF453
	.byte	0x5
	.uleb128 0x10
	.long	.LASF454
	.byte	0x5
	.uleb128 0x11
	.long	.LASF455
	.byte	0x5
	.uleb128 0x12
	.long	.LASF456
	.byte	0x5
	.uleb128 0x13
	.long	.LASF457
	.byte	0x5
	.uleb128 0x15
	.long	.LASF458
	.byte	0x5
	.uleb128 0x18
	.long	.LASF459
	.byte	0x5
	.uleb128 0x19
	.long	.LASF460
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF462
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF463
	.byte	0x5
	.uleb128 0x21
	.long	.LASF464
	.byte	0x5
	.uleb128 0x24
	.long	.LASF465
	.byte	0x5
	.uleb128 0x26
	.long	.LASF466
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF467
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF468
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF469
	.byte	0x5
	.uleb128 0x30
	.long	.LASF470
	.byte	0x5
	.uleb128 0x40
	.long	.LASF471
	.byte	0x5
	.uleb128 0x41
	.long	.LASF472
	.byte	0x5
	.uleb128 0x42
	.long	.LASF473
	.byte	0x5
	.uleb128 0x43
	.long	.LASF474
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF475
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF476
	.byte	0x5
	.uleb128 0x145
	.long	.LASF477
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pcie.h.5.b32a90fb266d93dfdeefd3f973a3e454,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF479
	.byte	0x5
	.uleb128 0x6
	.long	.LASF480
	.byte	0x5
	.uleb128 0x7
	.long	.LASF481
	.byte	0x5
	.uleb128 0x8
	.long	.LASF482
	.byte	0x5
	.uleb128 0x9
	.long	.LASF483
	.byte	0x5
	.uleb128 0xa
	.long	.LASF484
	.byte	0x5
	.uleb128 0xe
	.long	.LASF485
	.byte	0x5
	.uleb128 0x10
	.long	.LASF486
	.byte	0x5
	.uleb128 0x63
	.long	.LASF487
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.12.8e602d82239fc14b356bf7ba5b1f7039,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF488
	.byte	0x5
	.uleb128 0xd
	.long	.LASF489
	.byte	0x5
	.uleb128 0xe
	.long	.LASF490
	.byte	0x5
	.uleb128 0xf
	.long	.LASF491
	.byte	0x5
	.uleb128 0x10
	.long	.LASF492
	.byte	0x5
	.uleb128 0x11
	.long	.LASF493
	.byte	0x5
	.uleb128 0x12
	.long	.LASF494
	.byte	0x5
	.uleb128 0x13
	.long	.LASF495
	.byte	0x5
	.uleb128 0x14
	.long	.LASF496
	.byte	0x5
	.uleb128 0x15
	.long	.LASF497
	.byte	0x5
	.uleb128 0x16
	.long	.LASF498
	.byte	0x5
	.uleb128 0x17
	.long	.LASF499
	.byte	0x5
	.uleb128 0x18
	.long	.LASF500
	.byte	0x5
	.uleb128 0x19
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF504
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
	.uleb128 0x26
	.long	.LASF514
	.byte	0x5
	.uleb128 0x27
	.long	.LASF515
	.byte	0x5
	.uleb128 0x28
	.long	.LASF516
	.byte	0x5
	.uleb128 0x29
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF519
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF520
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF521
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF522
	.byte	0x5
	.uleb128 0x30
	.long	.LASF523
	.byte	0x5
	.uleb128 0x31
	.long	.LASF524
	.byte	0x5
	.uleb128 0x32
	.long	.LASF525
	.byte	0x5
	.uleb128 0x33
	.long	.LASF526
	.byte	0x5
	.uleb128 0x34
	.long	.LASF527
	.byte	0x5
	.uleb128 0x35
	.long	.LASF528
	.byte	0x5
	.uleb128 0x36
	.long	.LASF529
	.byte	0x5
	.uleb128 0x37
	.long	.LASF530
	.byte	0x5
	.uleb128 0x38
	.long	.LASF531
	.byte	0x5
	.uleb128 0x39
	.long	.LASF532
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF533
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF534
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF535
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF536
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF537
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF538
	.byte	0x5
	.uleb128 0x40
	.long	.LASF539
	.byte	0x5
	.uleb128 0x41
	.long	.LASF540
	.byte	0x5
	.uleb128 0x42
	.long	.LASF541
	.byte	0x5
	.uleb128 0x43
	.long	.LASF542
	.byte	0x5
	.uleb128 0x44
	.long	.LASF543
	.byte	0x5
	.uleb128 0x45
	.long	.LASF544
	.byte	0x5
	.uleb128 0x47
	.long	.LASF545
	.byte	0x5
	.uleb128 0x49
	.long	.LASF546
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF547
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF548
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF549
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF550
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF551
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF552
	.byte	0x5
	.uleb128 0x50
	.long	.LASF553
	.byte	0x5
	.uleb128 0x51
	.long	.LASF554
	.byte	0x5
	.uleb128 0x52
	.long	.LASF555
	.byte	0x5
	.uleb128 0x53
	.long	.LASF556
	.byte	0x5
	.uleb128 0x54
	.long	.LASF557
	.byte	0x5
	.uleb128 0x55
	.long	.LASF558
	.byte	0x5
	.uleb128 0x56
	.long	.LASF559
	.byte	0x5
	.uleb128 0x57
	.long	.LASF560
	.byte	0x5
	.uleb128 0x58
	.long	.LASF561
	.byte	0x5
	.uleb128 0x59
	.long	.LASF562
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF563
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF564
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF565
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF566
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF567
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF568
	.byte	0x5
	.uleb128 0x60
	.long	.LASF569
	.byte	0x5
	.uleb128 0x61
	.long	.LASF570
	.byte	0x5
	.uleb128 0x62
	.long	.LASF571
	.byte	0x5
	.uleb128 0x63
	.long	.LASF572
	.byte	0x5
	.uleb128 0x64
	.long	.LASF573
	.byte	0x5
	.uleb128 0x65
	.long	.LASF574
	.byte	0x5
	.uleb128 0x66
	.long	.LASF575
	.byte	0x5
	.uleb128 0x67
	.long	.LASF576
	.byte	0x5
	.uleb128 0x68
	.long	.LASF577
	.byte	0x5
	.uleb128 0x69
	.long	.LASF578
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF579
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF580
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF581
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF583
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF584
	.byte	0x5
	.uleb128 0x70
	.long	.LASF585
	.byte	0x5
	.uleb128 0x71
	.long	.LASF586
	.byte	0x5
	.uleb128 0x72
	.long	.LASF587
	.byte	0x5
	.uleb128 0x73
	.long	.LASF588
	.byte	0x5
	.uleb128 0x74
	.long	.LASF589
	.byte	0x5
	.uleb128 0x75
	.long	.LASF590
	.byte	0x5
	.uleb128 0x76
	.long	.LASF591
	.byte	0x5
	.uleb128 0x77
	.long	.LASF592
	.byte	0x5
	.uleb128 0x78
	.long	.LASF593
	.byte	0x5
	.uleb128 0x79
	.long	.LASF594
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF595
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF596
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF597
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF598
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF599
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF600
	.byte	0x5
	.uleb128 0x80
	.long	.LASF601
	.byte	0x5
	.uleb128 0x81
	.long	.LASF602
	.byte	0x5
	.uleb128 0x82
	.long	.LASF603
	.byte	0x5
	.uleb128 0x83
	.long	.LASF604
	.byte	0x5
	.uleb128 0x84
	.long	.LASF605
	.byte	0x5
	.uleb128 0x85
	.long	.LASF606
	.byte	0x5
	.uleb128 0x86
	.long	.LASF607
	.byte	0x5
	.uleb128 0x87
	.long	.LASF608
	.byte	0x5
	.uleb128 0x88
	.long	.LASF609
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF610
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF611
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF612
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF613
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF614
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF615
	.byte	0x5
	.uleb128 0x90
	.long	.LASF616
	.byte	0x5
	.uleb128 0x93
	.long	.LASF617
	.byte	0x5
	.uleb128 0x94
	.long	.LASF618
	.byte	0x5
	.uleb128 0x97
	.long	.LASF619
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.3.5098c18d6f25962e3a31ca1ba399ffa3,comdat
.Ldebug_macro13:
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
.Ldebug_macro14:
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
.Ldebug_macro15:
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
.Ldebug_macro16:
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
.Ldebug_macro17:
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
.Ldebug_macro18:
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
.Ldebug_macro19:
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
.Ldebug_macro20:
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
.LASF466:
	.string	"AHCI_COMMAND_TABLE_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * AHCI_COMMAND_HEADERS_PER_LIST * sizeof(command_table_t))"
.LASF459:
	.string	"AHCI_MAX_NUM_PORTS 32"
.LASF247:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF733:
	.string	"DBG_VM DBG_MODE(28)"
.LASF895:
	.string	"ad64"
.LASF49:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF326:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF383:
	.string	"MEM_NULL_DEVID (MKDEVID(1, 0))"
.LASF373:
	.string	"__NDISKS__ 1"
.LASF593:
	.string	"EISCONN 106"
.LASF452:
	.string	"BLOCK_SIZE PAGE_SIZE"
.LASF847:
	.string	"command_header"
.LASF241:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF641:
	.string	"PDE(x) ((((uintptr_t)(x)) >> 21) & INDEX_MASK)"
.LASF967:
	.string	"kc_ctx"
.LASF739:
	.string	"DBG_VMMAP DBG_MODE(35)"
.LASF332:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF708:
	.string	"DBG_MM DBG_MODE(1)"
.LASF419:
	.string	"PAGE_ALIGN_DOWN(x) ((void *)(((uintptr_t)(x)&PAGE_MASK)))"
.LASF310:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF1051:
	.string	"msi_cap"
.LASF875:
	.string	"px_sig"
.LASF15:
	.string	"__LP64__ 1"
.LASF721:
	.string	"DBG_ERROR DBG_MODE(14)"
.LASF959:
	.string	"c_rsp"
.LASF811:
	.string	"kt_wchan"
.LASF1018:
	.string	"sata_disk_ops"
.LASF262:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF606:
	.string	"ENAVAIL 119"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF678:
	.string	"INTR_PAGE_FAULT 0x0e"
.LASF406:
	.string	"list_iterate(list,var,type,member) for (type *var = list_head(list, type, member), *__next_ ##var = list_next(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_next(var, type, member))"
.LASF185:
	.string	"__DECIMAL_DIG__ 21"
.LASF396:
	.string	"QUOTE_BY_NAME(...) #__VA_ARGS__"
.LASF514:
	.string	"EFBIG 27"
.LASF416:
	.string	"PAGE_SHIFT 12"
.LASF360:
	.string	"__MMX_WITH_SSE__ 1"
.LASF777:
	.string	"int32_t"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF168:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF1030:
	.string	"dbg_print"
.LASF728:
	.string	"DBG_S5FS DBG_MODE(21)"
.LASF632:
	.string	"PT_CACHE_DISABLED 0x010"
.LASF413:
	.string	"BRANCHING_FACTOR 2"
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
.LASF961:
	.string	"c_pml4"
.LASF43:
	.string	"__INT8_TYPE__ signed char"
.LASF205:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF610:
	.string	"ENOMEDIUM 123"
.LASF723:
	.string	"DBG_FREF DBG_MODE(16)"
.LASF218:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1050:
	.string	"__func__"
.LASF34:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF848:
	.string	"write"
.LASF349:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF734:
	.string	"DBG_TEST DBG_MODE(30)"
.LASF44:
	.string	"__INT16_TYPE__ short int"
.LASF812:
	.string	"kt_state"
.LASF415:
	.string	"MAX_CHILDREN 2*BRANCHING_FACTOR"
.LASF679:
	.string	"INTR_APICTIMER 0xf0"
.LASF471:
	.string	"ATA_READ_DMA_EXT_COMMAND 0x25"
.LASF1054:
	.string	"port_number"
.LASF623:
	.string	"KERNEL_VMA 0xffff800000000000"
.LASF602:
	.string	"EINPROGRESS 115"
.LASF375:
	.string	"NULL 0"
.LASF829:
	.string	"fis_type"
.LASF318:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF583:
	.string	"EPFNOSUPPORT 96"
.LASF365:
	.string	"__linux__ 1"
.LASF497:
	.string	"ECHILD 10"
.LASF2:
	.string	"__STDC_HOSTED__ 0"
.LASF565:
	.string	"EREMCHG 78"
.LASF451:
	.string	"PAGE_FLAGS(x) ((x) & (~PAGE_MASK))"
.LASF916:
	.string	"interrupt_line"
.LASF344:
	.string	"__x86_64 1"
.LASF456:
	.string	"AHCI_SECTORS_PER_PRDT (AHCI_MAX_PRDT_SIZE / ATA_SECTOR_SIZE)"
.LASF636:
	.string	"PT_GLOBAL 0x100"
.LASF221:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF1034:
	.string	"pt_virt_to_phys"
.LASF217:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF479:
	.string	"PCI_NUM_BUSES 256"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF510:
	.string	"ENFILE 23"
.LASF155:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF877:
	.string	"px_sact"
.LASF958:
	.string	"c_rip"
.LASF240:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF179:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF752:
	.string	"dbg_active(mode) (dbg_modes & (mode))"
.LASF542:
	.string	"ENOANO 55"
.LASF884:
	.string	"bdev"
.LASF521:
	.string	"ERANGE 34"
.LASF335:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF381:
	.string	"MKDEVID(major,minor) ((devid_t)(((major) << MINOR_BITS) | (minor)))"
.LASF209:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF631:
	.string	"PT_WRITE_THROUGH 0x008"
.LASF973:
	.string	"KT_ON_CPU"
.LASF231:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF32:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF669:
	.string	"VFS_ROOTFS_TYPE \"ramfs\""
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF234:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF864:
	.string	"px_interrupt_status_clear"
.LASF420:
	.string	"PAGE_ALIGN_UP(x) ((void *)((((uintptr_t)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)))"
.LASF259:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF495:
	.string	"ENOEXEC 8"
.LASF405:
	.string	"list_prev(current,type,member) list_tail(&(current)->member, type, member)"
.LASF646:
	.string	"PML4_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF515:
	.string	"ENOSPC 28"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF1067:
	.string	"lessthaneq"
.LASF487:
	.string	"PCI_LOOKUP_WILDCARD 0xff"
.LASF976:
	.string	"KT_SLEEP_CANCELLABLE"
.LASF309:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF493:
	.string	"ENXIO 6"
.LASF801:
	.string	"km_waitq"
.LASF951:
	.string	"p_cwd"
.LASF786:
	.string	"ssize_t"
.LASF756:
	.string	"KASSERTEQ(l,r) KASSERT_GENERIC(l, r, equals, \"==\")"
.LASF924:
	.string	"_reserved2"
.LASF258:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF230:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1060:
	.string	"count"
.LASF742:
	.string	"DBG_BTREE DBG_MODE(39)"
.LASF1065:
	.string	"ahci_interrupt_handler"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF297:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF651:
	.string	"GDB_PD_PHYSADDR(pd,v) (pd->phys[PDE(v)] & PAGE_MASK)"
.LASF481:
	.string	"PCI_NUM_FUNCTIONS_PER_DEVICE 8"
.LASF627:
	.string	"VMMAP_DIR_HILO 2"
.LASF1043:
	.string	"sata_read_block"
.LASF281:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF880:
	.string	"ports"
.LASF430:
	.string	"PAGE_SIZE_2MB ((uintptr_t)(1UL << PAGE_SHIFT_2MB))"
.LASF504:
	.string	"EEXIST 17"
.LASF404:
	.string	"list_next(current,type,member) list_head(&(current)->member, type, member)"
.LASF844:
	.string	"cfis"
.LASF842:
	.string	"prd_t"
.LASF725:
	.string	"DBG_BRK DBG_MODE(18)"
.LASF816:
	.string	"kt_preemption_count"
.LASF819:
	.string	"blockdev"
.LASF38:
	.string	"__INTMAX_TYPE__ long int"
.LASF208:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF613:
	.string	"ENOKEY 126"
.LASF252:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF473:
	.string	"ATA_READ_FPDMA_QUEUED_COMMAND 0x60"
.LASF187:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF296:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF1010:
	.string	"r_rsp"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF577:
	.string	"EMSGSIZE 90"
.LASF273:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF714:
	.string	"DBG_PAGEALLOC DBG_MODE(7)"
.LASF803:
	.string	"km_link"
.LASF753:
	.string	"panic(...) dbg_panic(__FILE__, __LINE__, __func__, __VA_ARGS__)"
.LASF55:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF348:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF1033:
	.string	"sched_sleep_on"
.LASF513:
	.string	"ETXTBSY 26"
.LASF571:
	.string	"EILSEQ 84"
.LASF781:
	.string	"long int"
.LASF648:
	.string	"IS_2MB_PAGE(n) ((n)&PT_SIZE)"
.LASF1021:
	.string	"page_alloc_n"
.LASF608:
	.string	"EREMOTEIO 121"
.LASF266:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF575:
	.string	"ENOTSOCK 88"
.LASF688:
	.string	"MAX_LAPICS 8"
.LASF274:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF908:
	.string	"header_type"
.LASF307:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF246:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF66:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF366:
	.string	"__unix 1"
.LASF874:
	.string	"px_cmd"
.LASF645:
	.string	"PDP_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF51:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF986:
	.string	"curcore"
.LASF1070:
	.string	"notequals"
.LASF31:
	.string	"__SIZEOF_POINTER__ 8"
.LASF322:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF905:
	.string	"class"
.LASF288:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF468:
	.string	"AHCI_SIZE_PAGES ((uintptr_t)PAGE_ALIGN_UP(AHCI_SIZE) / PAGE_SIZE)"
.LASF216:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF568:
	.string	"ELIBSCN 81"
.LASF1055:
	.string	"port_command_table_array_base"
.LASF65:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF677:
	.string	"INTR_GPF 0x0d"
.LASF839:
	.string	"received_fis"
.LASF675:
	.string	"INTR_DIVIDE_BY_ZERO 0x00"
.LASF33:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF1031:
	.string	"dbg_color"
.LASF724:
	.string	"DBG_PGTBL DBG_MODE(17)"
.LASF1048:
	.string	"sata_init"
.LASF376:
	.string	"packed __attribute__((packed))"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF178:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF617:
	.string	"EOWNERDEAD 130"
.LASF377:
	.string	"MINOR_BITS 8"
.LASF544:
	.string	"EBADSLT 57"
.LASF17:
	.string	"__SIZEOF_LONG__ 8"
.LASF388:
	.string	"MEM_ZERO_MINOR 1"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF950:
	.string	"p_files"
.LASF569:
	.string	"ELIBMAX 82"
.LASF184:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF693:
	.string	"_YELLOW_ \"\\x1b[33;40m\""
.LASF762:
	.string	"va_start(v,l) __builtin_va_start(v, l)"
.LASF789:
	.string	"devid_t"
.LASF1019:
	.string	"because_qemu_doesnt_emulate_ahci_ncq_correctly"
.LASF827:
	.string	"blockdev_ops_t"
.LASF891:
	.string	"_reserved"
.LASF239:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF303:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF511:
	.string	"EMFILE 24"
.LASF907:
	.string	"latency_type"
.LASF706:
	.string	"DBG_ALL (~0ULL)"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF236:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF523:
	.string	"ENAMETOOLONG 36"
.LASF619:
	.string	"ENOTSUP EOPNOTSUPP"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF412:
	.string	"ATOMIC_INIT(i) (i)"
.LASF448:
	.string	"PAGE_ALIGN_DOWN_512GB(x) (((uintptr_t)(x)) & PAGE_MASK_512GB)"
.LASF912:
	.string	"subsystem_id"
.LASF543:
	.string	"EBADRQC 56"
.LASF771:
	.string	"signed char"
.LASF774:
	.string	"uint8_t"
.LASF846:
	.string	"command_table_t"
.LASF432:
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
.LASF512:
	.string	"ENOTTY 25"
.LASF325:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1044:
	.string	"port_index"
.LASF740:
	.string	"DBG_ELF DBG_MODE(37)"
.LASF214:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF226:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF592:
	.string	"ENOBUFS 105"
.LASF516:
	.string	"ESPIPE 29"
.LASF887:
	.string	"next_cap"
.LASF271:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF233:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF599:
	.string	"EHOSTDOWN 112"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF772:
	.string	"unsigned char"
.LASF242:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF222:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF965:
	.string	"core"
.LASF308:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1024:
	.string	"kmutex_init"
.LASF572:
	.string	"ERESTART 85"
.LASF141:
	.string	"__GCC_IEC_559 2"
.LASF987:
	.string	"curproc"
.LASF278:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF730:
	.string	"DBG_THR DBG_MODE(23)"
.LASF635:
	.string	"PT_SIZE 0x080"
.LASF1012:
	.string	"regs_t"
.LASF535:
	.string	"ELNRNG 48"
.LASF638:
	.string	"INDEX_MASK 0b111111111"
.LASF799:
	.string	"ktqueue_t"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF747:
	.string	"DEBUG_EXIT do { } while (0);"
.LASF1075:
	.string	"ahci_initialize_port"
.LASF1003:
	.string	"r_rsi"
.LASF934:
	.string	"pcie_device_t"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF123:
	.string	"__UINT32_C(c) c ## U"
.LASF518:
	.string	"EMLINK 31"
.LASF982:
	.string	"proc_state_t"
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
.LASF705:
	.string	"DBG_MODE(x) (1ULL << (x))"
.LASF561:
	.string	"EBADMSG 74"
.LASF588:
	.string	"ENETUNREACH 101"
.LASF62:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF116:
	.string	"__INT64_C(c) c ## L"
.LASF1083:
	.string	"drivers/disk/sata.c"
.LASF317:
	.string	"__STRICT_ANSI__ 1"
.LASF764:
	.string	"va_arg(v,l) __builtin_va_arg(v, l)"
.LASF918:
	.string	"min_grant"
.LASF860:
	.string	"value"
.LASF902:
	.string	"revision_id"
.LASF690:
	.string	"_BLACK_ \"\\x1b[30;47m\""
.LASF93:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF253:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF868:
	.string	"hba_ghc_t"
.LASF746:
	.string	"DEBUG_ENTER do { } while (0);"
.LASF963:
	.string	"c_kstacksz"
.LASF428:
	.string	"USE_1GB_PAGES 1"
.LASF794:
	.string	"char"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF400:
	.string	"LIST_LINK_INITIALIZER(list_link) { .l_next = NULL, .l_prev = NULL }"
.LASF319:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF939:
	.string	"p_pid"
.LASF956:
	.string	"pml4_t"
.LASF582:
	.string	"EOPNOTSUPP 95"
.LASF401:
	.string	"list_item(link,type,member) (type *)((char *)(link)-offsetof(type, member))"
.LASF824:
	.string	"read_block"
.LASF886:
	.string	"pci_capability"
.LASF796:
	.string	"ktqueue"
.LASF878:
	.string	"px_ci"
.LASF598:
	.string	"ECONNREFUSED 111"
.LASF718:
	.string	"DBG_PROC DBG_MODE(11)"
.LASF580:
	.string	"EPROTONOSUPPORT 93"
.LASF609:
	.string	"EDQUOT 122"
.LASF227:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF748:
	.ascii	"dbg(mode,...) do { if (dbg_active(mod"
	.string	"e)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF906:
	.string	"cache_line_size"
.LASF201:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF927:
	.string	"device_control"
.LASF345:
	.string	"__x86_64__ 1"
.LASF1036:
	.string	"dbg_panic"
.LASF505:
	.string	"EXDEV 18"
.LASF1016:
	.string	"outstanding_request_queues"
.LASF863:
	.string	"px_interrupt_enable_t"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF899:
	.string	"vendor_id"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF378:
	.string	"MINOR_MASK ((1U << MINOR_BITS) - 1)"
.LASF1059:
	.string	"ahci_do_operation"
.LASF633:
	.string	"PT_ACCESSED 0x020"
.LASF624:
	.string	"PHYS_OFFSET 0xffff880000000000"
.LASF175:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF445:
	.string	"PAGE_SHIFT_512GB 39"
.LASF475:
	.string	"ATA_DEVICE_LBA_MODE 0x40"
.LASF361:
	.string	"__SEG_FS 1"
.LASF854:
	.string	"command_list_t"
.LASF938:
	.string	"proc"
.LASF491:
	.string	"EINTR 4"
.LASF652:
	.string	"GDB_PDP_PHYSADDR(pdp,v) (pdp->phys[PDPE(v)] & PAGE_MASK)"
.LASF1077:
	.string	"flags"
.LASF69:
	.string	"__GXX_ABI_VERSION 1017"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1046:
	.string	"completed"
.LASF248:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF1061:
	.string	"physbuf"
.LASF527:
	.string	"ELOOP 40"
.LASF699:
	.string	"_BGREEN_ \"\\x1b[1;32;40m\""
.LASF942:
	.string	"p_children"
.LASF327:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF741:
	.string	"DBG_USER DBG_MODE(38)"
.LASF364:
	.string	"__linux 1"
.LASF1072:
	.string	"intr_wait"
.LASF834:
	.string	"features_exp"
.LASF374:
	.string	"__KERNEL__ 1"
.LASF392:
	.string	"NOT_YET_IMPLEMENTED(f) dbg(DBG_PRINT, \"Not yet implemented: %s, file %s, line %d\\n\", f, __FILE__, __LINE__)"
.LASF1074:
	.string	"intr_enable"
.LASF717:
	.string	"DBG_FORK DBG_MODE(10)"
.LASF876:
	.string	"px_serr"
.LASF202:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF540:
	.string	"EBADR 53"
.LASF59:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF519:
	.string	"EPIPE 32"
.LASF831:
	.string	"features"
.LASF628:
	.string	"PT_PRESENT 0x001"
.LASF930:
	.string	"link_control"
.LASF1079:
	.string	"atomic_dec_and_test"
.LASF855:
	.string	"dhrs"
.LASF46:
	.string	"__INT64_TYPE__ long int"
.LASF398:
	.string	"QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)"
.LASF331:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF649:
	.string	"IS_1GB_PAGE IS_2MB_PAGE"
.LASF368:
	.string	"__ELF__ 1"
.LASF983:
	.string	"file"
.LASF567:
	.string	"ELIBBAD 80"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF558:
	.string	"EPROTO 71"
.LASF193:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF621:
	.string	"KERNEL_PHYS_BASE ((uintptr_t)(&kernel_phys_base))"
.LASF948:
	.string	"p_pml4"
.LASF978:
	.string	"kthread_state_t"
.LASF265:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF590:
	.string	"ECONNABORTED 103"
.LASF1084:
	.string	"/home/cs1670-user/weenix_64/kernel"
.LASF89:
	.string	"__SIZE_WIDTH__ 64"
.LASF1066:
	.string	"greaterthaneq"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF547:
	.string	"ENOSTR 60"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF589:
	.string	"ENETRESET 102"
.LASF329:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF1082:
	.ascii	"GNU C99 12.2.0 -march=x86-"
	.string	"64 -m64 -mno-red-zone -mcmodel=large -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-sse4 -mno-sse4a -mno-3dnow -mno-avx -mno-avx2 -g3 -gdwarf-3 -std=c99 -fno-pie -ffreestanding -fno-builtin -fno-stack-protector -fsigned-char -fasynchronous-unwind-tables"
.LASF977:
	.string	"KT_EXITED"
.LASF387:
	.string	"MEM_NULL_MINOR 0"
.LASF289:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF790:
	.string	"l_next"
.LASF337:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF664:
	.string	"MAX_VFS 8"
.LASF170:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF873:
	.string	"px_ie"
.LASF634:
	.string	"PT_DIRTY 0x040"
.LASF673:
	.string	"PID_INIT 1"
.LASF1058:
	.string	"start_cmd"
.LASF1006:
	.string	"r_err"
.LASF498:
	.string	"EAGAIN 11"
.LASF791:
	.string	"l_prev"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF600:
	.string	"EHOSTUNREACH 113"
.LASF925:
	.string	"pe_capability"
.LASF871:
	.string	"px_fb"
.LASF703:
	.string	"_BCYAN_ \"\\x1b[1;36;40m\""
.LASF788:
	.string	"blocknum_t"
.LASF305:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF897:
	.string	"address_data"
.LASF1025:
	.string	"blockdev_register"
.LASF805:
	.string	"kt_ctx"
.LASF529:
	.string	"ENOMSG 42"
.LASF700:
	.string	"_BYELLOW_ \"\\x1b[1;33;40m\""
.LASF923:
	.string	"message_data"
.LASF363:
	.string	"__gnu_linux__ 1"
.LASF751:
	.string	"dbginfo(mode,func,data) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_printinfo(func, data); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF186:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF496:
	.string	"EBADF 9"
.LASF1078:
	.string	"atomic_inc_not_zero"
.LASF54:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF1026:
	.string	"list_link_init"
.LASF620:
	.string	"IDENTITY_MAPPED_RAM_SIZE (1 << 16)"
.LASF840:
	.string	"_omit"
.LASF980:
	.string	"PROC_RUNNING"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF537:
	.string	"ENOCSI 50"
.LASF862:
	.string	"px_interrupt_enable"
.LASF759:
	.string	"KASSERT_LESS(l,r) KASSERT_GENERIC(l, r, lessthan, \"<\")"
.LASF743:
	.string	"DBG_DEFAULT DBG_ERROR"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF949:
	.string	"p_wait"
.LASF962:
	.string	"c_kstack"
.LASF264:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF889:
	.string	"pci_capability_t"
.LASF282:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF841:
	.string	"received_fis_t"
.LASF453:
	.string	"AHCI_PRDT_DBC_WIDTH 22"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF553:
	.string	"EREMOTE 66"
.LASF474:
	.string	"ATA_WRITE_FPDMA_QUEUED_COMMAND 0x61"
.LASF336:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF607:
	.string	"EISNAM 120"
.LASF783:
	.string	"long unsigned int"
.LASF472:
	.string	"ATA_WRITE_DMA_EXT_COMMAND 0x35"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF1008:
	.string	"r_cs"
.LASF727:
	.string	"DBG_VFS DBG_MODE(20)"
.LASF48:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF508:
	.string	"EISDIR 21"
.LASF370:
	.string	"__DRIVERS__ 1"
.LASF279:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF901:
	.string	"status"
.LASF190:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF294:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF502:
	.string	"ENOTBLK 15"
.LASF421:
	.string	"PAGE_OFFSET(x) (((uintptr_t)(x)) & ~PAGE_MASK)"
.LASF206:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF1000:
	.string	"r_rax"
.LASF442:
	.string	"PAGE_OFFSET_1GB(x) (((uintptr_t)(x)) & ~PAGE_MASK_1GB)"
.LASF548:
	.string	"ENODATA 61"
.LASF823:
	.string	"blockdev_ops"
.LASF352:
	.string	"__k8__ 1"
.LASF14:
	.string	"_LP64 1"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF562:
	.string	"EOVERFLOW 75"
.LASF657:
	.string	"DEFAULT_STACK_SIZE_PAGES 16"
.LASF250:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF1013:
	.string	"intr_handler_t"
.LASF738:
	.string	"DBG_ANON DBG_MODE(34)"
.LASF1045:
	.string	"active"
.LASF858:
	.string	"px_interrupt_status"
.LASF680:
	.string	"INTR_KEYBOARD 0xe0"
.LASF212:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF1035:
	.string	"intr_setipl"
.LASF867:
	.string	"hba_ghc"
.LASF139:
	.string	"__INTPTR_WIDTH__ 64"
.LASF659:
	.string	"TICK_MSECS 10"
.LASF926:
	.string	"pcie_device_capabilities"
.LASF556:
	.string	"ESRMNT 69"
.LASF578:
	.string	"EPROTOTYPE 91"
.LASF941:
	.string	"p_threads"
.LASF324:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF424:
	.string	"ADDR_TO_PN(x) (((uintptr_t)(x)) >> PAGE_SHIFT)"
.LASF808:
	.string	"kt_errno"
.LASF167:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF272:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF929:
	.string	"pcie_link_capabilities"
.LASF1041:
	.string	"block_count"
.LASF994:
	.string	"r_rbp"
.LASF612:
	.string	"ECANCELED 125"
.LASF435:
	.string	"PAGE_ALIGNED_2MB(x) ((x) == PAGE_ALIGN_DOWN_2MB(x))"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF960:
	.string	"c_rbp"
.LASF995:
	.string	"r_rbx"
.LASF237:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF402:
	.string	"list_head(list,type,member) list_item((list)->l_next, type, member)"
.LASF522:
	.string	"EDEADLK 35"
.LASF828:
	.string	"h2d_register_fis"
.LASF199:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF879:
	.string	"hba_port_t"
.LASF672:
	.string	"PID_IDLE 0"
.LASF263:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF825:
	.string	"write_block"
.LASF355:
	.string	"__SSE__ 1"
.LASF409:
	.string	"KTQUEUE_INITIALIZER(ktqueue) { .tq_list = LIST_INITIALIZER((ktqueue).tq_list), }"
.LASF585:
	.string	"EADDRINUSE 98"
.LASF3:
	.string	"__GNUC__ 12"
.LASF321:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF872:
	.string	"px_is"
.LASF695:
	.string	"_MAGENTA_ \"\\x1b[35;40m\""
.LASF499:
	.string	"ENOMEM 12"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF483:
	.string	"PCI_CAPABILITY_PTR_MASK (0b11111100)"
.LASF985:
	.string	"proc_t"
.LASF385:
	.string	"DISK_MAJOR 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF564:
	.string	"EBADFD 77"
.LASF517:
	.string	"EROFS 30"
.LASF393:
	.string	"MIN(a,b) ((a) < (b) ? (a) : (b))"
.LASF275:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF711:
	.string	"DBG_DISK DBG_MODE(4)"
.LASF534:
	.string	"EL3RST 47"
.LASF494:
	.string	"E2BIG 7"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF749:
	.ascii	"dbg_force(mode,.."
	.string	".) do { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(\"%s:%d %s(): \", __FILE__, __LINE__, __func__); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } while (0)"
.LASF1001:
	.string	"r_rcx"
.LASF804:
	.string	"kthread"
.LASF682:
	.string	"INTR_SPURIOUS 0xfe"
.LASF41:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF484:
	.string	"PCI_MSI_CAPABILITY_ID 0x5"
.LASF591:
	.string	"ECONNRESET 104"
.LASF194:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF343:
	.string	"__amd64__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF579:
	.string	"ENOPROTOOPT 92"
.LASF545:
	.string	"EDEADLOCK EDEADLK"
.LASF922:
	.string	"message_address"
.LASF920:
	.string	"pm_capability"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF745:
	.string	"DBG_BUFFER_SIZE (PAGE_SIZE)"
.LASF581:
	.string	"ESOCKTNOSUPPORT 94"
.LASF330:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF549:
	.string	"ETIME 62"
.LASF769:
	.string	"SATA_PCI_SUBCLASS 0x6"
.LASF800:
	.string	"kmutex"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF411:
	.string	"ATOMIC_H "
.LASF232:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF971:
	.string	"fis_type_h2d_register"
.LASF596:
	.string	"ETOOMANYREFS 109"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF594:
	.string	"ENOTCONN 107"
.LASF39:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF1015:
	.string	"outstanding_requests"
.LASF506:
	.string	"ENODEV 19"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF339:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF911:
	.string	"subsystem_vendor_id"
.LASF882:
	.string	"ata_disk"
.LASF476:
	.string	"SATA_SIG_ATA 0x00000101"
.LASF810:
	.string	"kt_cancelled"
.LASF1068:
	.string	"greaterthan"
.LASF1002:
	.string	"r_rdx"
.LASF838:
	.string	"command_fis_t"
.LASF768:
	.string	"SATA_PCI_CLASS 0x1"
.LASF1063:
	.string	"old_retval"
.LASF1086:
	.string	"__atomic_add_unless"
.LASF200:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF485:
	.string	"MSI_ADDRESS_FOR(destination) ((uint32_t)((0x0FEE << 20) | ((destination) << 12) | (0b1100)))"
.LASF913:
	.string	"expansion_rom_base_addr"
.LASF686:
	.string	"IPL_HIGH 0xe0"
.LASF806:
	.string	"kt_kstack"
.LASF702:
	.string	"_BMAGENTA_ \"\\x1b[1;35;40m\""
.LASF888:
	.string	"control"
.LASF820:
	.string	"bd_id"
.LASF792:
	.string	"list_t"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF968:
	.string	"kc_queue"
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
.LASF379:
	.string	"MAJOR(devid) ((unsigned)((devid) >> MINOR_BITS))"
.LASF314:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1042:
	.string	"sata_write_block"
.LASF37:
	.string	"__WINT_TYPE__ unsigned int"
.LASF892:
	.string	"addr"
.LASF287:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF403:
	.string	"list_tail(list,type,member) list_item((list)->l_prev, type, member)"
.LASF793:
	.string	"list_link_t"
.LASF351:
	.string	"__k8 1"
.LASF722:
	.string	"DBG_SYSCALL DBG_MODE(15)"
.LASF1071:
	.string	"equals"
.LASF909:
	.string	"bist"
.LASF917:
	.string	"interrupt_pin"
.LASF57:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF779:
	.string	"unsigned int"
.LASF61:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF380:
	.string	"MINOR(devid) ((unsigned)((devid)&MINOR_MASK))"
.LASF1056:
	.string	"disk"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF946:
	.string	"p_status"
.LASF684:
	.string	"INTR_SHUTDOWN 0xfd"
.LASF1049:
	.string	"ahci_initialize_hba"
.LASF671:
	.string	"PROC_NAME_LEN 256"
.LASF616:
	.string	"EKEYREJECTED 129"
.LASF267:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF970:
	.string	"core_t"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF767:
	.string	"SATA_SECTORS_PER_BLOCK (SATA_BLOCK_SIZE / ATA_SECTOR_SIZE)"
.LASF761:
	.string	"KASSERT_LESSEQ(l,r) KASSERT_GENERIC(l, r, lessthaneq, \"<=\")"
.LASF443:
	.string	"PAGE_ALIGNED_1GB(x) ((x) == PAGE_ALIGN_DOWN_1GB(x))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF773:
	.string	"short int"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF447:
	.string	"PAGE_MASK_512GB (0xffffffffffffffff << PAGE_SHIFT_512GB)"
.LASF1022:
	.string	"pcie_lookup"
.LASF254:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF465:
	.string	"AHCI_COMMAND_TABLE_ARRAY_BASE(ahci_base) (AHCI_RECEIVED_FIS_ARRAY_BASE(ahci_base) + AHCI_RECEIVED_FIS_ARRAY_SIZE)"
.LASF1052:
	.string	"ahci_base"
.LASF1029:
	.string	"kmutex_unlock"
.LASF84:
	.string	"__LONG_WIDTH__ 64"
.LASF787:
	.string	"pid_t"
.LASF615:
	.string	"EKEYREVOKED 128"
.LASF249:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF198:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF261:
	.string	"__FLT32X_DIG__ 15"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF1076:
	.string	"intr_enabled"
.LASF425:
	.string	"PAGE_SAME(x,y) (PAGE_ALIGN_DOWN(x) == PAGE_ALIGN_DOWN(y))"
.LASF661:
	.string	"PF_HASH_SIZE 17"
.LASF729:
	.string	"DBG_KB DBG_MODE(22)"
.LASF859:
	.string	"bits"
.LASF0:
	.string	"__STDC__ 1"
.LASF957:
	.string	"context"
.LASF896:
	.string	"msi_capability"
.LASF1081:
	.string	"atomic_set"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF47:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF354:
	.string	"__MMX__ 1"
.LASF478:
	.string	"SATA_BLOCK_SIZE 4096"
.LASF597:
	.string	"ETIMEDOUT 110"
.LASF507:
	.string	"ENOTDIR 20"
.LASF528:
	.string	"EWOULDBLOCK EAGAIN"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF666:
	.string	"NAME_LEN 28"
.LASF306:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF371:
	.string	"__VFS__ 1"
.LASF932:
	.string	"pcie_device"
.LASF766:
	.string	"bdev_to_ata_disk(bd) (CONTAINER_OF((bd), ata_disk_t, bdev))"
.LASF429:
	.string	"PAGE_SHIFT_2MB 21"
.LASF372:
	.string	"__NTERMS__ 3"
.LASF795:
	.string	"list"
.LASF532:
	.string	"EL2NSYNC 45"
.LASF937:
	.string	"vmm_proc"
.LASF782:
	.string	"uint64_t"
.LASF1040:
	.string	"block"
.LASF969:
	.string	"kc_csdpaddr"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF737:
	.string	"DBG_MEMDEV DBG_MODE(33)"
.LASF470:
	.string	"ALIGN_UP_POW_2(x,align) (ALIGN_DOWN_POW_2((x)-1, align) + (align))"
.LASF509:
	.string	"EINVAL 22"
.LASF931:
	.string	"link_status"
.LASF125:
	.string	"__UINT64_C(c) c ## UL"
.LASF215:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF955:
	.string	"phys"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF798:
	.string	"tq_size"
.LASF292:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF503:
	.string	"EBUSY 16"
.LASF640:
	.string	"PDPE(x) ((((uintptr_t)(x)) >> 30) & INDEX_MASK)"
.LASF450:
	.string	"PAGE_CONTROL_FLAGS(x) ((x) & (PT_PRESENT | PT_WRITE | PT_USER | PT_WRITE_THROUGH | PT_CACHE_DISABLED | PT_SIZE | PT_GLOBAL))"
.LASF821:
	.string	"bd_ops"
.LASF732:
	.string	"DBG_OSYSCALL DBG_MODE(25)"
.LASF704:
	.string	"_BWHITE_ \"\\x1b[1;37;40m\""
.LASF989:
	.string	"regs"
.LASF418:
	.string	"PAGE_MASK (0xffffffffffffffff << PAGE_SHIFT)"
.LASF966:
	.string	"kc_id"
.LASF676:
	.string	"INTR_INVALID_OPCODE 0x06"
.LASF500:
	.string	"EACCES 13"
.LASF765:
	.string	"ENABLE_NATIVE_COMMAND_QUEUING 1"
.LASF431:
	.string	"PAGE_MASK_2MB (0xffffffffffffffff << PAGE_SHIFT_2MB)"
.LASF637:
	.string	"PT_ENTRY_COUNT (PAGE_SIZE / sizeof(uintptr_t))"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF196:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF618:
	.string	"ENOTRECOVERABLE 131"
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
.LASF933:
	.string	"standard"
.LASF219:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF439:
	.string	"PAGE_SIZE_1GB ((uintptr_t)(1UL << PAGE_SHIFT_1GB))"
.LASF165:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF826:
	.string	"blockdev_t"
.LASF1009:
	.string	"r_rflags"
.LASF45:
	.string	"__INT32_TYPE__ int"
.LASF455:
	.string	"ATA_SECTOR_SIZE 512"
.LASF204:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF213:
	.string	"__FLT32_DIG__ 6"
.LASF663:
	.string	"MAX_FILES 1024"
.LASF457:
	.string	"AHCI_MAX_SECTORS_PER_COMMAND (1 << 16)"
.LASF6:
	.string	"__VERSION__ \"12.2.0\""
.LASF681:
	.string	"INTR_DISK_PRIMARY 0xd0"
.LASF660:
	.string	"KMEM_FRAC(x) (((x) >> 2) + ((x) >> 3))"
.LASF192:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF269:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF683:
	.string	"INTR_APICERR 0xff"
.LASF662:
	.string	"MAXPATHLEN 1024"
.LASF480:
	.string	"PCI_NUM_DEVICES_PER_BUS 32"
.LASF642:
	.string	"PTE(x) ((((uintptr_t)(x)) >> 12) & INDEX_MASK)"
.LASF881:
	.string	"hba_t"
.LASF257:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF1014:
	.string	"dbg_modes"
.LASF603:
	.string	"ESTALE 116"
.LASF243:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF488:
	.string	"EPERM 1"
.LASF832:
	.string	"device"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF837:
	.string	"size"
.LASF464:
	.string	"AHCI_RECEIVED_FIS_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * sizeof(received_fis_t))"
.LASF865:
	.string	"px_interrupt_enable_all_enabled"
.LASF299:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF276:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF1007:
	.string	"r_rip"
.LASF410:
	.string	"KMUTEX_INITIALIZER(mtx) { .km_waitq = KTQUEUE_INITIALIZER((mtx).km_waitq), .km_holder = NULL, .km_link = LIST_LINK_INITIALIZER((mtx).km_link), }"
.LASF830:
	.string	"command"
.LASF195:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF655:
	.string	"GDB_CUR_PHYSADDR(v) GDB_PHYSADDR(curproc->p_pml4, (v))"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF353:
	.string	"__code_model_large__ 1"
.LASF1039:
	.string	"pt_get"
.LASF775:
	.string	"uint16_t"
.LASF283:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF67:
	.string	"__INTPTR_TYPE__ long int"
.LASF320:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF207:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF943:
	.string	"p_pproc"
.LASF56:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF40:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF546:
	.string	"EBFONT 59"
.LASF850:
	.string	"ctba"
.LASF291:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF975:
	.string	"KT_SLEEP"
.LASF460:
	.string	"AHCI_COMMAND_HEADERS_PER_LIST 32"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF13:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF399:
	.string	"LIST_INITIALIZER(list) { .l_next = &(list), .l_prev = &(list) }"
.LASF357:
	.string	"__FXSR__ 1"
.LASF650:
	.string	"GDB_PT_PHYSADDR(pt,v) (pt->phys[PTE(v)] & PAGE_MASK)"
.LASF815:
	.string	"kt_mutexes"
.LASF861:
	.string	"px_interrupt_status_t"
.LASF712:
	.string	"DBG_TEMP DBG_MODE(5)"
.LASF438:
	.string	"PAGE_MASK_1GB (0xffffffffffffffff << PAGE_SHIFT_1GB)"
.LASF972:
	.string	"KT_NO_STATE"
.LASF338:
	.string	"__SIZEOF_INT128__ 16"
.LASF754:
	.string	"KASSERT(x) do { if (!(x)) panic(\"assertion failed: %s\", #x); } while (0)"
.LASF900:
	.string	"device_id"
.LASF1073:
	.string	"intr_disable"
.LASF674:
	.string	"CORE_SPECIFIC_DATA __attribute__((section(\".csd\"))) = {0}"
.LASF298:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF921:
	.string	"pmcsr"
.LASF390:
	.string	"noreturn __attribute__((noreturn))"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF395:
	.string	"CONTAINER_OF(obj,type,member) ((type *)((char *)(obj)-offsetof(type, member)))"
.LASF601:
	.string	"EALREADY 114"
.LASF501:
	.string	"EFAULT 14"
.LASF490:
	.string	"ESRCH 3"
.LASF964:
	.string	"context_t"
.LASF817:
	.string	"kmutex_t"
.LASF1032:
	.string	"memset"
.LASF915:
	.string	"_reserved1"
.LASF389:
	.string	"inline __attribute__((always_inline, used))"
.LASF665:
	.string	"MAX_VNODES 1024"
.LASF836:
	.string	"h2d_register_fis_t"
.LASF814:
	.string	"kt_qlink"
.LASF1037:
	.string	"kmutex_lock"
.LASF952:
	.string	"p_brk"
.LASF857:
	.string	"command_fis"
.LASF454:
	.string	"AHCI_MAX_PRDT_SIZE (1 << AHCI_PRDT_DBC_WIDTH)"
.LASF981:
	.string	"PROC_DEAD"
.LASF654:
	.string	"GDB_PHYSADDR(pml4,v) (GDB_PT_PHYSADDR( GDB_PD_PHYSADDR( GDB_PDP_PHYSADDR(GDB_PML4_PHYSADDR(pml4, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET, (v)) + PHYS_OFFSET)"
.LASF885:
	.string	"ata_disk_t"
.LASF557:
	.string	"ECOMM 70"
.LASF42:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF539:
	.string	"EBADE 52"
.LASF162:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF1038:
	.string	"pt_map_range"
.LASF605:
	.string	"ENOTNAM 118"
.LASF1053:
	.string	"ports_implemented"
.LASF58:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF172:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF576:
	.string	"EDESTADDRREQ 89"
.LASF285:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF720:
	.string	"DBG_PFRAME DBG_MODE(13)"
.LASF1004:
	.string	"r_rdi"
.LASF440:
	.string	"PAGE_ALIGN_DOWN_1GB(x) (((uintptr_t)(x)) & PAGE_MASK_1GB)"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF210:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF386:
	.string	"MEM_MAJOR 1"
.LASF286:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF538:
	.string	"EL2HLT 51"
.LASF4:
	.string	"__GNUC_MINOR__ 2"
.LASF426:
	.string	"PAGE_NSIZES 8"
.LASF182:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF629:
	.string	"PT_WRITE 0x002"
.LASF833:
	.string	"lba_exp"
.LASF441:
	.string	"PAGE_ALIGN_UP_1GB(x) (PAGE_ALIGN_DOWN_1GB((x)-1) + PAGE_SIZE_1GB)"
.LASF328:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF489:
	.string	"ENOENT 2"
.LASF731:
	.string	"DBG_PRINT DBG_MODE(24)"
.LASF270:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF735:
	.string	"DBG_TESTPASS DBG_MODE(31)"
.LASF715:
	.string	"DBG_INTR DBG_MODE(8)"
.LASF586:
	.string	"EADDRNOTAVAIL 99"
.LASF526:
	.string	"ENOTEMPTY 39"
.LASF177:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF898:
	.string	"msi_capability_t"
.LASF919:
	.string	"max_latency"
.LASF630:
	.string	"PT_USER 0x004"
.LASF587:
	.string	"ENETDOWN 100"
.LASF356:
	.string	"__SSE2__ 1"
.LASF255:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF890:
	.string	"msie"
.LASF707:
	.string	"DBG_CORE DBG_MODE(0)"
.LASF710:
	.string	"DBG_SCHED DBG_MODE(3)"
.LASF313:
	.string	"__REGISTER_PREFIX__ "
.LASF312:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF164:
	.string	"__DBL_DIG__ 15"
.LASF1064:
	.string	"find_cmdslot"
.LASF954:
	.string	"p_vmmap"
.LASF755:
	.ascii	"KA"
	.string	"SSERT_GENERIC(left,right,comparator,comp_str) do { int __left = (int)(left); int __right = (int)(right); if (!comparator(__left, __right)) { panic(\"assertion failed: %s %s %s. Left: %d, Right: %d\\n\", #left, comp_str, #right, __left, __right); } } while (0)"
.LASF551:
	.string	"ENONET 64"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF697:
	.string	"_WHITE_ \"\\x1b[37;40m\""
.LASF692:
	.string	"_GREEN_ \"\\x1b[32;40m\""
.LASF238:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF1027:
	.string	"kmalloc"
.LASF883:
	.string	"port"
.LASF719:
	.string	"DBG_VNREF DBG_MODE(12)"
.LASF362:
	.string	"__SEG_GS 1"
.LASF369:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF536:
	.string	"EUNATCH 49"
.LASF853:
	.string	"command_headers"
.LASF63:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF726:
	.string	"DBG_EXEC DBG_MODE(19)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF574:
	.string	"EUSERS 87"
.LASF849:
	.string	"prdtl"
.LASF346:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF358:
	.string	"__SSE_MATH__ 1"
.LASF1020:
	.string	"intr_register"
.LASF997:
	.string	"r_r10"
.LASF996:
	.string	"r_r11"
.LASF993:
	.string	"r_r12"
.LASF992:
	.string	"r_r13"
.LASF991:
	.string	"r_r14"
.LASF990:
	.string	"r_r15"
.LASF316:
	.string	"__NO_INLINE__ 1"
.LASF482:
	.string	"PCI_DEVICE_FUNCTION_SIZE 4096"
.LASF341:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF525:
	.string	"ENOSYS 38"
.LASF280:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF427:
	.string	"USE_2MB_PAGES 1"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF492:
	.string	"EIO 5"
.LASF394:
	.string	"MAX(a,b) ((a) > (b) ? (a) : (b))"
.LASF220:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF1023:
	.string	"sched_wakeup_on"
.LASF228:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF807:
	.string	"kt_retval"
.LASF64:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF60:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF1028:
	.string	"sched_queue_init"
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
.LASF541:
	.string	"EXFULL 54"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF869:
	.string	"hba_port"
.LASF570:
	.string	"ELIBEXEC 83"
.LASF302:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF554:
	.string	"ENOLINK 67"
.LASF573:
	.string	"ESTRPIPE 86"
.LASF169:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF802:
	.string	"km_holder"
.LASF422:
	.string	"PAGE_ALIGNED(x) (!PAGE_OFFSET(x))"
.LASF423:
	.string	"PN_TO_ADDR(x) ((void *)(((uintptr_t)(x)) << PAGE_SHIFT))"
.LASF446:
	.string	"PAGE_SIZE_512GB ((uintptr_t)(1UL << PAGE_SHIFT_512GB))"
.LASF53:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF656:
	.string	"GET_CSD(core,type,name) ((type *)(csd_vaddr_table[(core)] + PAGE_OFFSET(&(name))))"
.LASF171:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF463:
	.string	"AHCI_RECEIVED_FIS_ARRAY_BASE(ahci_base) ((ahci_base) + AHCI_COMMAND_LIST_ARRAY_SIZE)"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF436:
	.string	"PAGE_SAME_2MB(x,y) (PAGE_ALIGN_DOWN_2MB(x) == PAGE_ALIGN_DOWN_2MB(y))"
.LASF323:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF408:
	.string	"SPINLOCK_INITIALIZER(lock) { .s_locked = 0 }"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF530:
	.string	"EIDRM 43"
.LASF653:
	.string	"GDB_PML4_PHYSADDR(pml4,v) (pml4->phys[PML4E(v)] & PAGE_MASK)"
.LASF444:
	.string	"PAGE_SAME_1GB(x,y) (PAGE_ALIGN_DOWN_1GB(x) == PAGE_ALIGN_DOWN_1GB(y))"
.LASF244:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF822:
	.string	"bd_link"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF1005:
	.string	"r_intr"
.LASF644:
	.string	"PD_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT * PT_ENTRY_COUNT)"
.LASF626:
	.string	"VMMAP_DIR_LOHI 1"
.LASF1080:
	.string	"atomic_inc"
.LASF188:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF770:
	.string	"SATA_AHCI_INTERFACE 0x1"
.LASF928:
	.string	"device_status"
.LASF334:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF340:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF797:
	.string	"tq_list"
.LASF550:
	.string	"ENOSR 63"
.LASF461:
	.string	"AHCI_COMMAND_LIST_ARRAY_BASE(ahci_base) (ahci_base)"
.LASF434:
	.string	"PAGE_OFFSET_2MB(x) (((uintptr_t)(x)) & ~PAGE_MASK_2MB)"
.LASF935:
	.string	"vmmap"
.LASF763:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF984:
	.string	"vnode"
.LASF224:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF658:
	.string	"DEFAULT_STACK_SIZE (DEFAULT_STACK_SIZE_PAGES << PAGE_SHIFT)"
.LASF293:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF50:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF284:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF736:
	.string	"DBG_TESTFAIL DBG_MODE(32)"
.LASF999:
	.string	"r_r8"
.LASF998:
	.string	"r_r9"
.LASF689:
	.string	"_NORMAL_ \"\\x1b[0m\""
.LASF953:
	.string	"p_start_brk"
.LASF35:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF251:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF531:
	.string	"ECHRNG 44"
.LASF944:
	.string	"p_list_link"
.LASF870:
	.string	"px_clb"
.LASF235:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF758:
	.string	"KASSERT_GREATER(l,r) KASSERT_GENERIC(l, r, greaterthan, \">\")"
.LASF256:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF469:
	.string	"ALIGN_DOWN_POW_2(x,align) ((x) & -(align))"
.LASF458:
	.string	"ACHI_NUM_PRDTS_PER_COMMAND_TABLE (AHCI_MAX_SECTORS_PER_COMMAND / AHCI_SECTORS_PER_PRDT)"
.LASF559:
	.string	"EMULTIHOP 72"
.LASF203:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF757:
	.string	"KASSERTNEQ(l,r) KASSERT_GENERIC(l, r, notequals, \"!=\")"
.LASF856:
	.string	"sdbs"
.LASF333:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF760:
	.string	"KASSERT_GREQ(l,r) KASSERT_GENERIC(l, r, greaterthaneq, \">=\")"
.LASF813:
	.string	"kt_plink"
.LASF397:
	.string	"QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)"
.LASF778:
	.string	"uint32_t"
.LASF845:
	.string	"prdt"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF974:
	.string	"KT_RUNNABLE"
.LASF533:
	.string	"EL3HLT 46"
.LASF197:
	.string	"__FLT16_DIG__ 3"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF350:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF894:
	.string	"ad32"
.LASF462:
	.string	"AHCI_COMMAND_LIST_ARRAY_SIZE (AHCI_MAX_NUM_PORTS * sizeof(command_list_t))"
.LASF342:
	.string	"__amd64 1"
.LASF750:
	.string	"dbgq(mode,...) do { if (dbg_active(mode)) { DEBUG_ENTER dbg_print(\"%s\", dbg_color(mode)); dbg_print(\"C%ld P%ld \", curcore.kc_id, curproc ? curproc->p_pid : -1L); dbg_print(__VA_ARGS__); dbg_print(\"%s\", _NORMAL_); DEBUG_EXIT } } while (0)"
.LASF189:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF367:
	.string	"__unix__ 1"
.LASF670:
	.string	"PROC_MAX_COUNT 65536"
.LASF524:
	.string	"ENOLCK 37"
.LASF936:
	.string	"vmm_list"
.LASF584:
	.string	"EAFNOSUPPORT 97"
.LASF785:
	.string	"size_t"
.LASF180:
	.string	"__LDBL_DIG__ 18"
.LASF852:
	.string	"command_list"
.LASF667:
	.string	"NFILES 32"
.LASF914:
	.string	"capabilities_ptr"
.LASF1017:
	.string	"command_slot_queues"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF229:
	.string	"__FLT64_DIG__ 15"
.LASF304:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF467:
	.string	"AHCI_SIZE (AHCI_COMMAND_LIST_ARRAY_SIZE + AHCI_RECEIVED_FIS_ARRAY_SIZE + AHCI_COMMAND_TABLE_ARRAY_SIZE)"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF52:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF1062:
	.string	"command_slot"
.LASF903:
	.string	"prog_if"
.LASF904:
	.string	"subclass"
.LASF776:
	.string	"short unsigned int"
.LASF225:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF552:
	.string	"ENOPKG 65"
.LASF818:
	.string	"atomic_t"
.LASF384:
	.string	"MEM_ZERO_DEVID (MKDEVID(1, 1))"
.LASF1085:
	.string	"ensure_mapped"
.LASF181:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF1047:
	.string	"slot"
.LASF382:
	.string	"NULL_DEVID (MKDEVID(0, 0))"
.LASF713:
	.string	"DBG_KMALLOC DBG_MODE(6)"
.LASF173:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF347:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF449:
	.string	"PAGE_ALIGN_UP_512GB(x) (PAGE_ALIGN_DOWN_512GB((x)-1) + PAGE_SIZE_512GB)"
.LASF1011:
	.string	"r_ss"
.LASF433:
	.string	"PAGE_ALIGN_UP_2MB(x) (PAGE_ALIGN_DOWN_2MB((x)-1) + PAGE_SIZE_2MB)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF866:
	.string	"sncq"
.LASF835:
	.string	"sector_count"
.LASF910:
	.string	"cardbus_cis_pointer"
.LASF560:
	.string	"EDOTDOT 73"
.LASF780:
	.string	"int64_t"
.LASF647:
	.string	"IS_PRESENT(n) ((n)&PT_PRESENT)"
.LASF687:
	.string	"IPL_HIGHEST 0xff"
.LASF694:
	.string	"_BLUE_ \"\\x1b[34;40m\""
.LASF988:
	.string	"curthr"
.LASF555:
	.string	"EADV 68"
.LASF843:
	.string	"command_table"
.LASF260:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF809:
	.string	"kt_proc"
.LASF611:
	.string	"EMEDIUMTYPE 124"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF520:
	.string	"EDOM 33"
.LASF486:
	.string	"MSI_DATA_FOR(vector) ((uint16_t)(0b00000001 << 8) | (vector))"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF414:
	.string	"MAX_KEYS (2*BRANCHING_FACTOR) - 1"
.LASF685:
	.string	"IPL_LOW 0"
.LASF277:
	.string	"__FLT64X_DIG__ 18"
.LASF784:
	.string	"uintptr_t"
.LASF614:
	.string	"EKEYEXPIRED 127"
.LASF643:
	.string	"PT_VADDR_SIZE (PAGE_SIZE * PT_ENTRY_COUNT)"
.LASF300:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1057:
	.string	"stop_cmd"
.LASF716:
	.string	"DBG_TERM DBG_MODE(9)"
.LASF604:
	.string	"EUCLEAN 117"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF940:
	.string	"p_name"
.LASF851:
	.string	"command_header_t"
.LASF945:
	.string	"p_child_link"
.LASF166:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF893:
	.string	"data"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF174:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF566:
	.string	"ELIBACC 79"
.LASF595:
	.string	"ESHUTDOWN 108"
.LASF625:
	.string	"MEMORY_MAP_BASE 0x9000"
.LASF477:
	.string	"PORT_INDEX(hba,port) ((port) - (hba)->ports)"
.LASF639:
	.string	"PML4E(x) ((((uintptr_t)(x)) >> 39) & INDEX_MASK)"
.LASF437:
	.string	"PAGE_SHIFT_1GB 30"
.LASF163:
	.string	"__DBL_MANT_DIG__ 53"
.LASF622:
	.string	"KERNEL_PHYS_END ((uintptr_t)(&kernel_phys_end))"
.LASF417:
	.string	"PAGE_SIZE ((uintptr_t)(1UL << PAGE_SHIFT))"
.LASF1069:
	.string	"lessthan"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF563:
	.string	"ENOTUNIQ 76"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF407:
	.string	"list_iterate_reverse(list,var,type,member) for (type *var = list_tail(list, type, member), *__next_ ##var = list_prev(var, type, member); &var->member != (list); var = __next_ ##var, __next_ ##var = list_prev(var, type, member))"
.LASF696:
	.string	"_CYAN_ \"\\x1b[36;40m\""
.LASF979:
	.string	"kthread_t"
.LASF947:
	.string	"p_state"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
