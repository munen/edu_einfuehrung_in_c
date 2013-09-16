	.section	__TEXT,__text,regular,pure_instructions
	.globl	_push
	.align	4, 0x90
_push:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	cmpl	$10, %eax
	jne	LBB1_2
	movl	$0, -12(%rbp)
	jmp	LBB1_3
LBB1_2:
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %ecx
	movslq	%ecx, %rdx
	movb	-1(%rbp), %sil
	movb	%sil, (%rax,%rdx)
	movslq	%ecx, %rdx
	movb	(%rax,%rdx), %dl
	movsbl	%dl, %edx
	movl	%edx, -12(%rbp)
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
LBB1_3:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_pop
	.align	4, 0x90
_pop:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	cmpl	$0, %eax
	jne	LBB2_2
	movl	$0, -8(%rbp)
	jmp	LBB2_3
LBB2_2:
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 12(%rax)
	movl	12(%rax), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
LBB2_3:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_peek
	.align	4, 0x90
_peek:
Leh_func_begin3:
	pushq	%rbp
Ltmp4:
	movq	%rsp, %rbp
Ltmp5:
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	cmpl	$0, %eax
	jne	LBB3_2
	movl	$0, -8(%rbp)
	jmp	LBB3_3
LBB3_2:
	movq	_stack@GOTPCREL(%rip), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
LBB3_3:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end3:

	.comm	_stack,16,4
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_push.eh
_push.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp6:
	.quad	Leh_func_begin1-Ltmp6
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	_pop.eh
_pop.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp7:
	.quad	Leh_func_begin2-Ltmp7
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_peek.eh
_peek.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp8:
	.quad	Leh_func_begin3-Ltmp8
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp4-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp5-Ltmp4
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:


.subsections_via_symbols
