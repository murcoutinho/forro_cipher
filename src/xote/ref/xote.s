	.file	"xote.c"
	.text
	.p2align 4
	.globl	xote
	.type	xote, @function
xote:
.LFB11:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	movdqu	(%rsi), %xmm3
	movdqu	48(%rsi), %xmm0
	movq	%rdi, 160(%rsp)
	movdqu	16(%rsi), %xmm2
	movq	%rsi, 168(%rsp)
	movdqu	32(%rsi), %xmm1
	movd	%xmm2, %r8d
	movd	%xmm1, %r9d
	addl	$1, %r8d
	movd	%xmm1, %r12d
	movq	%fs:40, %rbx
	movq	%rbx, 312(%rsp)
	xorl	%ebx, %ebx
	movaps	%xmm3, 240(%rsp)
	movl	240(%rsp), %ebx
	movaps	%xmm3, 176(%rsp)
	movl	176(%rsp), %eax
	movl	188(%rsp), %ebp
	movl	%ebx, 68(%rsp)
	movaps	%xmm0, 224(%rsp)
	movl	228(%rsp), %ebx
	movl	%ebp, %ecx
	movl	%eax, 32(%rsp)
	movl	252(%rsp), %eax
	movaps	%xmm2, 192(%rsp)
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm2, 256(%rsp)
	movaps	%xmm1, 272(%rsp)
	movaps	%xmm0, 288(%rsp)
	movd	%xmm0, 56(%rsp)
	movd	%xmm0, 72(%rsp)
	movl	%ebx, 88(%rsp)
	movl	260(%rsp), %esi
	movl	264(%rsp), %r14d
	movl	196(%rsp), %ebx
	movl	%esi, 52(%rsp)
	movl	244(%rsp), %esi
	movl	%r14d, 80(%rsp)
	movl	236(%rsp), %r14d
	movl	%esi, 112(%rsp)
	movl	216(%rsp), %esi
	movl	%ebx, 16(%rsp)
	movl	180(%rsp), %ebx
	movl	%esi, (%rsp)
	movl	200(%rsp), %esi
	movl	%r14d, 48(%rsp)
	movl	220(%rsp), %r14d
	movl	%ebx, 84(%rsp)
	movl	284(%rsp), %r10d
	movl	292(%rsp), %ebx
	movl	%esi, 64(%rsp)
	movl	%r14d, 60(%rsp)
	movl	296(%rsp), %esi
	movl	204(%rsp), %r14d
	movl	248(%rsp), %r15d
	movl	%ebx, 124(%rsp)
	movl	%esi, 120(%rsp)
	movl	212(%rsp), %edi
	movl	280(%rsp), %esi
	movl	%r14d, 92(%rsp)
	movl	%r15d, %edx
	movl	300(%rsp), %r14d
	movl	276(%rsp), %r11d
	movl	232(%rsp), %ebx
	movl	184(%rsp), %r13d
	movl	%r10d, 76(%rsp)
	movl	268(%rsp), %r10d
	movl	124(%rsp), %r15d
	movl	%r14d, 96(%rsp)
	movl	%esi, %r14d
	movl	$6, 156(%rsp)
	movl	%edi, %esi
	movl	%r10d, 116(%rsp)
	movd	%xmm2, %r10d
	.p2align 4,,10
	.p2align 3
.L2:
	movl	56(%rsp), %edi
	movl	32(%rsp), %ebp
	addl	%ecx, %edi
	xorl	%edi, %r12d
	addl	%r12d, %r10d
	rorl	$13, %r10d
	addl	%r10d, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %edi
	roll	$11, %edi
	addl	%edi, %r12d
	movl	%edi, 32(%rsp)
	movl	72(%rsp), %edi
	xorl	%r12d, %r10d
	movl	%r12d, 124(%rsp)
	movl	16(%rsp), %r12d
	addl	%eax, %edi
	addl	%r10d, %ebp
	movl	%r10d, 128(%rsp)
	xorl	%edi, %r9d
	movl	%edi, %r10d
	movl	68(%rsp), %edi
	roll	$7, %ebp
	addl	%r9d, %r8d
	rorl	$13, %r8d
	addl	%r8d, %edi
	xorl	%edi, %eax
	addl	%eax, %r10d
	roll	$11, %r10d
	addl	%r10d, %r9d
	movl	%r10d, 68(%rsp)
	xorl	%r9d, %r8d
	movl	%r9d, 132(%rsp)
	movl	88(%rsp), %r9d
	addl	%r8d, %edi
	movl	%r8d, 136(%rsp)
	movl	84(%rsp), %r8d
	addl	%ebp, %r9d
	roll	$7, %edi
	xorl	%r9d, %esi
	addl	%esi, %r12d
	rorl	$13, %r12d
	addl	%r12d, %r8d
	xorl	%r8d, %ebp
	addl	%ebp, %r9d
	movl	%ebp, 16(%rsp)
	movl	%r9d, %ebp
	movl	64(%rsp), %r9d
	roll	$11, %ebp
	addl	%ebp, %esi
	addl	%edi, %r15d
	movl	%ebp, 84(%rsp)
	xorl	%esi, %r12d
	movl	%esi, 140(%rsp)
	xorl	%r15d, %r11d
	leal	(%r8,%r12), %esi
	movl	52(%rsp), %r8d
	roll	$7, %esi
	addl	%r11d, %r8d
	addl	%esi, %ebx
	movl	%r8d, %r10d
	movl	112(%rsp), %r8d
	rorl	$13, %r10d
	addl	%r10d, %r8d
	xorl	%r8d, %edi
	addl	%edi, %r15d
	movl	%edi, 52(%rsp)
	roll	$11, %r15d
	addl	%r15d, %r11d
	movl	%r15d, 112(%rsp)
	movl	(%rsp), %r15d
	xorl	%r11d, %r10d
	movl	%r11d, 144(%rsp)
	xorl	%ebx, %r15d
	leal	(%r8,%r10), %r11d
	addl	%r15d, %r9d
	roll	$7, %r11d
	rorl	$13, %r9d
	addl	%r9d, %r13d
	xorl	%r13d, %esi
	addl	%esi, %ebx
	movl	%esi, 56(%rsp)
	roll	$11, %ebx
	addl	%ebx, %r15d
	movl	%ebx, 148(%rsp)
	xorl	%r15d, %r9d
	leal	0(%r13,%r9), %esi
	movl	120(%rsp), %r13d
	roll	$7, %esi
	addl	%r11d, %r13d
	xorl	%r13d, %r14d
	movl	%r13d, %edi
	movl	80(%rsp), %r13d
	addl	%r14d, %r13d
	movl	%r13d, %r8d
	movl	%r11d, %r13d
	movl	92(%rsp), %r11d
	rorl	$13, %r8d
	addl	%r8d, %edx
	xorl	%edx, %r13d
	movl	%r13d, 72(%rsp)
	addl	%r13d, %edi
	movl	48(%rsp), %r13d
	roll	$11, %edi
	addl	%esi, %r13d
	addl	%edi, %r14d
	movl	%edi, 120(%rsp)
	movl	%r13d, %ebx
	movl	60(%rsp), %r13d
	xorl	%r14d, %r8d
	addl	%r8d, %edx
	xorl	%ebx, %r13d
	roll	$7, %edx
	addl	%r13d, %r11d
	movl	%r11d, %edi
	movl	%esi, %r11d
	rorl	$13, %edi
	addl	%edi, %ecx
	xorl	%ecx, %r11d
	movl	%r11d, 88(%rsp)
	movl	96(%rsp), %ebp
	addl	%r11d, %ebx
	movl	116(%rsp), %esi
	roll	$11, %ebx
	addl	%edx, %ebp
	addl	%ebx, %r13d
	movl	%ebp, %r11d
	movl	76(%rsp), %ebp
	xorl	%r13d, %edi
	addl	%edi, %ecx
	xorl	%r11d, %ebp
	roll	$7, %ecx
	addl	%ebp, %esi
	addl	%ecx, %ebx
	rorl	$13, %esi
	xorl	%ebx, %r15d
	addl	%esi, %eax
	addl	%r15d, %r12d
	xorl	%eax, %edx
	addl	%edx, %r11d
	movl	%edx, 116(%rsp)
	movl	16(%rsp), %edx
	roll	$11, %r11d
	addl	%r11d, %ebp
	xorl	%ebp, %esi
	addl	%esi, %eax
	roll	$7, %eax
	rorl	$13, %r12d
	addl	%r12d, %edx
	addl	%eax, %r11d
	xorl	%edx, %ecx
	xorl	%r11d, %r14d
	addl	%ecx, %ebx
	movl	%ecx, 152(%rsp)
	addl	%r14d, %r10d
	movl	%ebx, %ecx
	movl	%r15d, %ebx
	rorl	$13, %r10d
	roll	$11, %ecx
	addl	%ecx, %ebx
	movl	%ecx, 48(%rsp)
	movl	52(%rsp), %ecx
	xorl	%ebx, %r12d
	movl	%ebx, (%rsp)
	movl	32(%rsp), %ebx
	addl	%r10d, %ecx
	addl	%r12d, %edx
	movl	%r12d, 16(%rsp)
	movl	124(%rsp), %r12d
	xorl	%ecx, %eax
	roll	$7, %edx
	addl	%eax, %r11d
	movl	%r11d, %r15d
	roll	$11, %r15d
	addl	%r15d, %r14d
	movl	%r15d, 96(%rsp)
	movl	%r10d, %r15d
	leal	(%rbx,%rdx), %r10d
	xorl	%r10d, %r13d
	movl	56(%rsp), %ebx
	xorl	%r14d, %r15d
	addl	%r13d, %r9d
	addl	%r15d, %ecx
	movl	%r15d, 52(%rsp)
	rorl	$13, %r9d
	roll	$7, %ecx
	leal	(%rbx,%r9), %r11d
	movl	68(%rsp), %ebx
	xorl	%r11d, %edx
	addl	%edx, %r10d
	movl	%edx, 32(%rsp)
	movl	%r10d, %r15d
	leal	(%rbx,%rcx), %r10d
	roll	$11, %r15d
	xorl	%r10d, %ebp
	addl	%r15d, %r13d
	movl	%r15d, 56(%rsp)
	movl	112(%rsp), %r15d
	xorl	%r13d, %r9d
	movl	%r13d, 60(%rsp)
	movl	72(%rsp), %r13d
	addl	%r9d, %r11d
	movl	%r9d, 64(%rsp)
	roll	$7, %r11d
	addl	%ebp, %r8d
	rorl	$13, %r8d
	leal	0(%r13,%r8), %edx
	movl	%ecx, %r13d
	movl	88(%rsp), %ecx
	xorl	%edx, %r13d
	addl	%r13d, %r10d
	movl	%r13d, 68(%rsp)
	movl	%r10d, %r13d
	roll	$11, %r13d
	addl	%r13d, %ebp
	movl	%r13d, 72(%rsp)
	xorl	%ebp, %r8d
	movl	%ebp, 76(%rsp)
	movl	84(%rsp), %ebp
	movl	%r8d, 80(%rsp)
	leal	(%rdx,%r8), %r8d
	leal	0(%rbp,%r11), %r9d
	movl	%r11d, %ebp
	roll	$7, %r8d
	xorl	%r9d, %r12d
	addl	%r8d, %r15d
	addl	%r12d, %edi
	rorl	$13, %edi
	leal	(%rcx,%rdi), %r13d
	xorl	%r13d, %ebp
	addl	%ebp, %r9d
	movl	%ebp, 84(%rsp)
	movl	%r9d, %ebp
	movl	132(%rsp), %r9d
	roll	$11, %ebp
	addl	%ebp, %r12d
	movl	%ebp, 88(%rsp)
	movl	%edi, %ebp
	xorl	%r15d, %r9d
	xorl	%r12d, %ebp
	addl	%r9d, %esi
	movl	%ebp, 92(%rsp)
	movl	116(%rsp), %edx
	rorl	$13, %esi
	addl	%ebp, %r13d
	movl	%r8d, %ebp
	movl	148(%rsp), %ebx
	roll	$7, %r13d
	movl	120(%rsp), %edi
	addl	%esi, %edx
	movl	128(%rsp), %r10d
	movl	144(%rsp), %r11d
	xorl	%edx, %ebp
	addl	%r13d, %ebx
	movl	136(%rsp), %r8d
	movl	152(%rsp), %ecx
	addl	%ebp, %r15d
	movl	%ebp, 112(%rsp)
	movl	%esi, %ebp
	movl	140(%rsp), %esi
	roll	$11, %r15d
	addl	%r15d, %r9d
	xorl	%ebx, %esi
	xorl	%r9d, %ebp
	addl	%ebp, %edx
	movl	%ebp, 116(%rsp)
	roll	$7, %edx
	addl	%esi, %r10d
	addl	%edx, %edi
	rorl	$13, %r10d
	xorl	%edi, %r11d
	addl	%r10d, %ecx
	addl	%r11d, %r8d
	xorl	%ecx, %r13d
	rorl	$13, %r8d
	addl	%r13d, %ebx
	addl	%r8d, %eax
	roll	$11, %ebx
	xorl	%eax, %edx
	addl	%ebx, %esi
	addl	%edx, %edi
	xorl	%esi, %r10d
	roll	$11, %edi
	addl	%r10d, %ecx
	addl	%edi, %r11d
	roll	$7, %ecx
	movl	%edi, 120(%rsp)
	xorl	%r11d, %r8d
	addl	%r8d, %eax
	roll	$7, %eax
	subl	$1, 156(%rsp)
	jne	.L2
	movl	%esi, %edi
	movq	168(%rsp), %rsi
	movd	32(%rsp), %xmm0
	movl	%r14d, 128(%rsp)
	movd	84(%rsp), %xmm4
	movl	96(%rsp), %r14d
	movd	%r13d, %xmm1
	movl	%r15d, 124(%rsp)
	movdqu	(%rsi), %xmm6
	movd	112(%rsp), %xmm7
	punpckldq	%xmm4, %xmm0
	movdqu	64(%rsi), %xmm5
	movdqu	16(%rsi), %xmm4
	movaps	%xmm6, 96(%rsp)
	movd	%ecx, %xmm6
	movdqa	96(%rsp), %xmm2
	punpckldq	%xmm6, %xmm1
	movd	%eax, %xmm6
	movdqa	%xmm5, %xmm3
	movd	92(%rsp), %xmm5
	punpcklqdq	%xmm1, %xmm0
	movd	%edx, %xmm1
	movaps	%xmm4, 32(%rsp)
	paddd	%xmm0, %xmm2
	movd	68(%rsp), %xmm0
	punpckldq	%xmm6, %xmm1
	movd	16(%rsp), %xmm6
	movaps	%xmm2, 176(%rsp)
	punpckldq	%xmm7, %xmm0
	movdqu	80(%rsi), %xmm7
	punpcklqdq	%xmm1, %xmm0
	movd	64(%rsp), %xmm1
	paddd	%xmm0, %xmm3
	movd	%r10d, %xmm0
	punpckldq	%xmm5, %xmm1
	punpckldq	%xmm6, %xmm0
	movd	116(%rsp), %xmm5
	movd	52(%rsp), %xmm6
	punpcklqdq	%xmm1, %xmm0
	movd	80(%rsp), %xmm1
	movaps	%xmm3, 240(%rsp)
	paddd	%xmm0, %xmm4
	movd	%r8d, %xmm0
	punpckldq	%xmm5, %xmm1
	punpckldq	%xmm6, %xmm0
	movdqa	%xmm7, %xmm5
	movdqu	32(%rsi), %xmm7
	movd	60(%rsp), %xmm6
	punpcklqdq	%xmm1, %xmm0
	movd	(%rsp), %xmm1
	movaps	%xmm4, 192(%rsp)
	paddd	%xmm0, %xmm5
	movaps	%xmm7, 16(%rsp)
	movd	%r12d, %xmm0
	movd	%edi, %xmm7
	punpckldq	%xmm6, %xmm1
	punpckldq	%xmm7, %xmm0
	movdqa	16(%rsp), %xmm7
	movdqu	96(%rsi), %xmm6
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm5, 256(%rsp)
	paddd	%xmm0, %xmm7
	movd	%r9d, %xmm0
	movaps	%xmm7, 208(%rsp)
	movaps	%xmm6, (%rsp)
	movd	76(%rsp), %xmm6
	movd	128(%rsp), %xmm1
	movdqa	(%rsp), %xmm8
	movd	124(%rsp), %xmm10
	punpckldq	%xmm6, %xmm1
	movd	%r11d, %xmm6
	movq	160(%rsp), %rax
	punpckldq	%xmm6, %xmm0
	movdqu	48(%rsi), %xmm6
	punpcklqdq	%xmm1, %xmm0
	movd	%ebx, %xmm1
	movaps	%xmm6, (%rsp)
	movd	48(%rsp), %xmm6
	paddd	%xmm0, %xmm8
	movd	56(%rsp), %xmm0
	movaps	%xmm8, 272(%rsp)
	movdqa	(%rsp), %xmm9
	punpckldq	%xmm6, %xmm1
	movd	88(%rsp), %xmm6
	punpckldq	%xmm6, %xmm0
	movdqu	112(%rsi), %xmm6
	movups	%xmm2, (%rax)
	punpcklqdq	%xmm1, %xmm0
	movd	120(%rsp), %xmm1
	movups	%xmm4, 16(%rax)
	paddd	%xmm0, %xmm9
	movd	%r14d, %xmm0
	movups	%xmm7, 32(%rax)
	punpckldq	%xmm0, %xmm1
	movd	72(%rsp), %xmm0
	movups	%xmm9, 48(%rax)
	movaps	%xmm9, 224(%rsp)
	punpckldq	%xmm10, %xmm0
	punpcklqdq	%xmm1, %xmm0
	paddd	%xmm6, %xmm0
	movaps	%xmm0, 288(%rsp)
	movups	%xmm3, 64(%rax)
	movups	%xmm5, 80(%rax)
	movups	%xmm8, 96(%rax)
	movups	%xmm0, 112(%rax)
	movq	312(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$328, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11:
	.size	xote, .-xote
	.p2align 4
	.globl	xote_init
	.type	xote_init, @function
xote_init:
.LFB12:
	.cfi_startproc
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 4(%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movl	12(%rsi), %eax
	movl	%eax, 12(%rdi)
	cmpl	$256, %edx
	je	.L11
	movabsq	$3539939732357150821, %rax
	movq	%rax, 24(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 32(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 36(%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 40(%rdi)
	movl	12(%rsi), %eax
	movl	%eax, 44(%rdi)
	movabsq	$7719281312240119094, %rax
	movq	%rax, 56(%rdi)
.L10:
	movq	$0, 16(%rdi)
	movl	(%rcx), %eax
	movl	%eax, 48(%rdi)
	movl	4(%rcx), %eax
	movl	%eax, 52(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movabsq	$3684054920433006693, %rax
	movq	%rax, 24(%rdi)
	movl	16(%rsi), %eax
	movl	%eax, 32(%rdi)
	movl	20(%rsi), %eax
	movl	%eax, 36(%rdi)
	movl	24(%rsi), %eax
	movl	%eax, 40(%rdi)
	movl	28(%rsi), %eax
	movl	%eax, 44(%rdi)
	movabsq	$7719281312240119090, %rax
	movq	%rax, 56(%rdi)
	jmp	.L10
	.cfi_endproc
.LFE12:
	.size	xote_init, .-xote_init
	.p2align 4
	.globl	xote_encrypt_bytes
	.type	xote_encrypt_bytes, @function
xote_encrypt_bytes:
.LFB13:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L12
	leal	-1(%rcx), %r15d
	movq	%rdi, %r13
	leaq	32(%rsp), %r12
	movl	%ecx, %ebx
	shrl	$7, %r15d
	movl	%r15d, %r14d
	movl	%r15d, 20(%rsp)
	movq	%rsi, %r15
	movq	%r14, %rax
	movq	%rdx, %r14
	salq	$7, %rax
	addq	%rax, %rsi
	movq	%rax, 24(%rsp)
	movq	%rsi, %rbp
	jmp	.L23
.L60:
	movdqu	(%r15), %xmm0
	pxor	32(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movdqu	16(%r15), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	movdqu	32(%r15), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, 32(%r14)
	movdqu	48(%r15), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, 48(%r14)
	movdqu	64(%r15), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, 64(%r14)
	movdqu	80(%r15), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, 80(%r14)
	movdqu	96(%r15), %xmm0
	pxor	128(%rsp), %xmm0
	movups	%xmm0, 96(%r14)
	movdqu	112(%r15), %xmm0
	pxor	144(%rsp), %xmm0
	movups	%xmm0, 112(%r14)
.L22:
	subq	$-128, %r14
	subq	$-128, %r15
.L23:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	xote
	movl	16(%r13), %eax
	addl	$2, %eax
	movl	%eax, 16(%r13)
	shrl	%eax
	jne	.L14
	addl	$1, 20(%r13)
.L14:
	cmpq	%rbp, %r15
	je	.L59
	leaq	15(%r15), %rax
	subq	%r14, %rax
	cmpq	$30, %rax
	ja	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L21:
	movzbl	(%r15,%rax), %edx
	xorb	(%r12,%rax), %dl
	movb	%dl, (%r14,%rax)
	addq	$1, %rax
	cmpq	$128, %rax
	jne	.L21
	jmp	.L22
.L59:
	movq	24(%rsp), %rdi
	movl	20(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	sall	$7, %eax
	leaq	16(%rdi), %r14
	subl	%eax, %ebx
	movq	%rcx, %rax
	addq	%r14, %rcx
	addq	%rdi, %rax
	cmpq	%rcx, %r15
	leal	-1(%rbx), %r8d
	setnb	%sil
	addq	%r14, %rdx
	cmpq	%rdx, %rax
	setnb	%dl
	orb	%dl, %sil
	je	.L16
	cmpl	$14, %r8d
	jbe	.L16
	movdqu	(%r15), %xmm0
	movl	%ebx, %edx
	pxor	32(%rsp), %xmm0
	shrl	$4, %edx
	movups	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L17
	movdqu	16(%r15), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	cmpl	$2, %edx
	je	.L17
	movdqu	32(%r15), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, 32(%rax)
	cmpl	$3, %edx
	je	.L17
	movdqu	48(%r15), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, 48(%rax)
	cmpl	$4, %edx
	je	.L17
	movdqu	64(%r15), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, 64(%rax)
	cmpl	$5, %edx
	je	.L17
	movdqu	80(%r15), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, 80(%rax)
	cmpl	$6, %edx
	je	.L17
	movdqu	96(%r15), %xmm0
	pxor	128(%rsp), %xmm0
	movups	%xmm0, 96(%rax)
	cmpl	$7, %edx
	je	.L17
	movdqu	112(%r15), %xmm0
	pxor	144(%rsp), %xmm0
	movups	%xmm0, 112(%rax)
.L17:
	movl	%ebx, %edx
	andl	$-16, %edx
	testb	$15, %bl
	je	.L12
	movslq	%edx, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	1(%rdx), %esi
	cmpl	%ebx, %esi
	jnb	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	2(%rdx), %esi
	cmpl	%ebx, %esi
	jnb	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	3(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	4(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	5(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	6(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	7(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	8(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	9(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	10(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	11(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	12(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	13(%rdx), %esi
	cmpl	%esi, %ebx
	jbe	.L12
	movslq	%esi, %rsi
	addl	$14, %edx
	movzbl	(%r15,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	cmpl	%edx, %ebx
	jbe	.L12
	movslq	%edx, %rdx
	movzbl	(%r15,%rdx), %ecx
	xorb	32(%rsp,%rdx), %cl
	movb	%cl, (%rax,%rdx)
.L12:
	movq	168(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L61
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	xorl	%edx, %edx
.L19:
	movzbl	(%r15,%rdx), %esi
	xorb	(%r12,%rdx), %sil
	movb	%sil, (%rax,%rdx)
	movq	%rdx, %rsi
	addq	$1, %rdx
	cmpq	%r8, %rsi
	jne	.L19
	jmp	.L12
.L61:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE13:
	.size	xote_encrypt_bytes, .-xote_encrypt_bytes
	.p2align 4
	.globl	xote_decrypt_bytes
	.type	xote_decrypt_bytes, @function
xote_decrypt_bytes:
.LFB14:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L62
	leal	-1(%rcx), %r13d
	movq	%rdi, %r15
	movq	%rsi, %r8
	movq	%rdx, %rbp
	shrl	$7, %r13d
	movq	%rsi, %rbx
	leaq	32(%rsp), %r14
	movl	%r13d, %r12d
	salq	$7, %r12
	leaq	(%rsi,%r12), %rax
	movq	%rax, 24(%rsp)
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L110:
	movdqu	(%rbx), %xmm0
	pxor	32(%rsp), %xmm0
	movups	%xmm0, 0(%rbp)
	movdqu	16(%rbx), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, 16(%rbp)
	movdqu	32(%rbx), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, 32(%rbp)
	movdqu	48(%rbx), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, 48(%rbp)
	movdqu	64(%rbx), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, 64(%rbp)
	movdqu	80(%rbx), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, 80(%rbp)
	movdqu	96(%rbx), %xmm0
	pxor	128(%rsp), %xmm0
	movups	%xmm0, 96(%rbp)
	movdqu	112(%rbx), %xmm0
	pxor	144(%rsp), %xmm0
	movups	%xmm0, 112(%rbp)
	.p2align 4,,10
	.p2align 3
.L72:
	subq	$-128, %rbp
	subq	$-128, %rbx
.L73:
	movq	%r15, %rsi
	movq	%r14, %rdi
	movl	%ecx, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	call	xote
	movl	16(%r15), %eax
	movq	(%rsp), %r8
	movq	8(%rsp), %rdx
	movl	20(%rsp), %ecx
	addl	$2, %eax
	movl	%eax, 16(%r15)
	shrl	%eax
	jne	.L64
	addl	$1, 20(%r15)
.L64:
	cmpq	24(%rsp), %rbx
	je	.L109
	leaq	15(%rbx), %rax
	subq	%rbp, %rax
	cmpq	$30, %rax
	ja	.L110
	xorl	%eax, %eax
.L71:
	movzbl	(%rbx,%rax), %esi
	xorb	(%r14,%rax), %sil
	movb	%sil, 0(%rbp,%rax)
	addq	$1, %rax
	cmpq	$128, %rax
	je	.L72
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L109:
	leaq	(%rdx,%r12), %rax
	addq	$16, %r12
	sall	$7, %r13d
	addq	%r12, %rdx
	subl	%r13d, %ecx
	cmpq	%rdx, %rbx
	leal	-1(%rcx), %esi
	setnb	%r9b
	addq	%r12, %r8
	cmpq	%r8, %rax
	setnb	%dl
	orb	%dl, %r9b
	je	.L66
	cmpl	$14, %esi
	jbe	.L66
	movdqu	(%rbx), %xmm0
	movl	%ecx, %edx
	pxor	32(%rsp), %xmm0
	shrl	$4, %edx
	movups	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L67
	movdqu	16(%rbx), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	cmpl	$2, %edx
	je	.L67
	movdqu	32(%rbx), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, 32(%rax)
	cmpl	$3, %edx
	je	.L67
	movdqu	48(%rbx), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, 48(%rax)
	cmpl	$4, %edx
	je	.L67
	movdqu	64(%rbx), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, 64(%rax)
	cmpl	$5, %edx
	je	.L67
	movdqu	80(%rbx), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, 80(%rax)
	cmpl	$6, %edx
	je	.L67
	movdqu	96(%rbx), %xmm0
	pxor	128(%rsp), %xmm0
	movups	%xmm0, 96(%rax)
	cmpl	$7, %edx
	je	.L67
	movdqu	112(%rbx), %xmm0
	pxor	144(%rsp), %xmm0
	movups	%xmm0, 112(%rax)
.L67:
	movl	%ecx, %edx
	andl	$-16, %edx
	testb	$15, %cl
	je	.L62
	movslq	%edx, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	1(%rdx), %esi
	cmpl	%ecx, %esi
	jnb	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	2(%rdx), %esi
	cmpl	%ecx, %esi
	jnb	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	3(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	4(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	5(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	6(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	7(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	8(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	9(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	10(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	11(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	12(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	leal	13(%rdx), %esi
	cmpl	%esi, %ecx
	jbe	.L62
	movslq	%esi, %rsi
	addl	$14, %edx
	movzbl	(%rbx,%rsi), %edi
	xorb	32(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	cmpl	%edx, %ecx
	jbe	.L62
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	xorb	32(%rsp,%rdx), %cl
	movb	%cl, (%rax,%rdx)
	.p2align 4,,10
	.p2align 3
.L62:
	movq	168(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L111
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	.cfi_restore_state
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L69:
	movzbl	(%rbx,%rdx), %ecx
	xorb	(%r14,%rdx), %cl
	movb	%cl, (%rax,%rdx)
	movq	%rdx, %rcx
	addq	$1, %rdx
	cmpq	%rsi, %rcx
	jne	.L69
	jmp	.L62
.L111:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	xote_decrypt_bytes, .-xote_decrypt_bytes
	.p2align 4
	.globl	xote_keystream_bytes
	.type	xote_keystream_bytes, @function
xote_keystream_bytes:
.LFB15:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L112
	movl	%edx, %ebp
	leal	-1(%rdx), %edx
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rdx, %r13
	xorl	%esi, %esi
	addq	$1, %rdx
	movq	%rbx, %rdi
	call	memset@PLT
	shrl	$7, %r13d
	movq	%rsp, %r14
	movl	%r13d, %r12d
	salq	$7, %r12
	addq	%rbx, %r12
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L115:
	movdqu	(%rbx), %xmm0
	pxor	(%rsp), %xmm0
	subq	$-128, %rbx
	movups	%xmm0, -128(%rbx)
	movdqu	-112(%rbx), %xmm0
	pxor	16(%rsp), %xmm0
	movups	%xmm0, -112(%rbx)
	movdqu	-96(%rbx), %xmm0
	pxor	32(%rsp), %xmm0
	movups	%xmm0, -96(%rbx)
	movdqu	-80(%rbx), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, -80(%rbx)
	movdqu	-64(%rbx), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, -64(%rbx)
	movdqu	-48(%rbx), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, -48(%rbx)
	movdqu	-32(%rbx), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, -32(%rbx)
	movdqu	-16(%rbx), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, -16(%rbx)
.L119:
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	xote
	movl	16(%r15), %eax
	addl	$2, %eax
	movl	%eax, 16(%r15)
	shrl	%eax
	jne	.L114
	addl	$1, 20(%r15)
.L114:
	cmpq	%r12, %rbx
	jne	.L115
	sall	$7, %r13d
	subl	%r13d, %ebp
	leal	-1(%rbp), %eax
	cmpl	$14, %eax
	jbe	.L121
	movdqu	(%rbx), %xmm0
	movl	%ebp, %eax
	pxor	(%rsp), %xmm0
	shrl	$4, %eax
	movups	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L117
	movdqu	16(%rbx), %xmm0
	pxor	16(%rsp), %xmm0
	movups	%xmm0, 16(%rbx)
	cmpl	$2, %eax
	je	.L117
	movdqu	32(%rbx), %xmm0
	pxor	32(%rsp), %xmm0
	movups	%xmm0, 32(%rbx)
	cmpl	$3, %eax
	je	.L117
	movdqu	48(%rbx), %xmm0
	pxor	48(%rsp), %xmm0
	movups	%xmm0, 48(%rbx)
	cmpl	$4, %eax
	je	.L117
	movdqu	64(%rbx), %xmm0
	pxor	64(%rsp), %xmm0
	movups	%xmm0, 64(%rbx)
	cmpl	$5, %eax
	je	.L117
	movdqu	80(%rbx), %xmm0
	pxor	80(%rsp), %xmm0
	movups	%xmm0, 80(%rbx)
	cmpl	$6, %eax
	je	.L117
	movdqu	96(%rbx), %xmm0
	pxor	96(%rsp), %xmm0
	movups	%xmm0, 96(%rbx)
	cmpl	$7, %eax
	je	.L117
	movdqu	112(%rbx), %xmm0
	pxor	112(%rsp), %xmm0
	movups	%xmm0, 112(%rbx)
.L117:
	movl	%ebp, %eax
	andl	$-16, %eax
	testb	$15, %bpl
	je	.L112
.L116:
	movslq	%eax, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	1(%rax), %edx
	cmpl	%ebp, %edx
	jnb	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	2(%rax), %edx
	cmpl	%ebp, %edx
	jnb	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	3(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	4(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	5(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	6(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	7(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	8(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	9(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	10(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	11(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	12(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	leal	13(%rax), %edx
	cmpl	%edx, %ebp
	jbe	.L112
	movslq	%edx, %rdx
	addl	$14, %eax
	movzbl	(%rsp,%rdx), %ecx
	xorb	%cl, (%rbx,%rdx)
	cmpl	%eax, %ebp
	jbe	.L112
	cltq
	movzbl	(%rsp,%rax), %edx
	xorb	%dl, (%rbx,%rax)
	.p2align 4,,10
	.p2align 3
.L112:
	movq	136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L147
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L121:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L116
.L147:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15:
	.size	xote_keystream_bytes, .-xote_keystream_bytes
	.ident	"GCC: (Arch Linux 9.3.0-1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
