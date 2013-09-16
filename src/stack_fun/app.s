	.section	__TEXT,__text,regular,pure_instructions
	.globl	_correct_parantheses
	.align	4, 0x90
_correct_parantheses:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$32, %rsp
Ltmp2:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	LBB1_6
LBB1_1:
	movb	-25(%rbp), %al
	cmpb	$40, %al
	jne	LBB1_3
	movb	-25(%rbp), %al
	movsbl	%al, %eax
	xorb	%cl, %cl
	movl	%eax, %edi
	movb	%cl, %al
	callq	_push
	jmp	LBB1_6
LBB1_3:
	xorb	%al, %al
	callq	_peek
	movl	%eax, %ecx
	cmpl	$40, %ecx
	jne	LBB1_5
	xorb	%al, %al
	callq	_pop
	jmp	LBB1_6
LBB1_5:
	movb	-25(%rbp), %al
	movsbl	%al, %eax
	xorb	%cl, %cl
	movl	%eax, %edi
	movb	%cl, %al
	callq	_push
LBB1_6:
	movq	-24(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -25(%rbp)
	movb	-25(%rbp), %al
	cmpb	$10, %al
	setne	%al
	andb	$1, %al
	movq	-24(%rbp), %rcx
	movabsq	$1, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, %al
	jne	LBB1_1
	xorb	%al, %al
	callq	_pop
	movl	%eax, %ecx
	cmpl	$0, %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	cmpl	$0, %ecx
	jne	LBB1_9
LBB1_8:
	xorb	%al, %al
	callq	_pop
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB1_8
LBB1_9:
	movl	-32(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_checking_parantheses
	.align	4, 0x90
_checking_parantheses:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	subq	$112, %rsp
Ltmp5:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-108(%rbp), %rcx
	movl	$100, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	_fgets
	jmp	LBB2_5
LBB2_1:
	leaq	-108(%rbp), %rax
	movq	%rax, %rdi
	callq	_correct_parantheses
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB2_3
	leaq	L_.str(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	jmp	LBB2_4
LBB2_3:
	leaq	L_.str1(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
LBB2_4:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-108(%rbp), %rcx
	movl	$100, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	_fgets
LBB2_5:
	leaq	-108(%rbp), %rax
	leaq	L_.str2(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_strcmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB2_1
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_9
	addq	$112, %rsp
	popq	%rbp
	ret
LBB2_9:
	callq	___stack_chk_fail
Leh_func_end2:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin3:
	pushq	%rbp
Ltmp6:
	movq	%rsp, %rbp
Ltmp7:
	subq	$16, %rsp
Ltmp8:
	callq	_checking_parantheses
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.section	__TEXT,__cstring,cstring_literals
	.align	3
L_.str:
	.asciz	 "Correct parantheses. Good boy."

L_.str1:
	.asciz	 "Incorrect parantheses!!"

L_.str2:
	.asciz	 "q\n"

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
	.globl	_correct_parantheses.eh
_correct_parantheses.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp9:
	.quad	Leh_func_begin1-Ltmp9
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

	.globl	_checking_parantheses.eh
_checking_parantheses.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp10:
	.quad	Leh_func_begin2-Ltmp10
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp3-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp4-Ltmp3
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_main.eh
_main.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp11:
	.quad	Leh_func_begin3-Ltmp11
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp6-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp7-Ltmp6
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:


.subsections_via_symbols
