	.file	"forro.c"
	.text
	.p2align 4
	.globl	forro
	.type	forro, @function
forro:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$160, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	vmovdqu	16(%rsi), %xmm3
	vmovdqu	32(%rsi), %xmm5
	movq	%fs:40, %rbx
	movq	%rbx, 152(%rsp)
	xorl	%ebx, %ebx
	vmovdqu	48(%rsi), %xmm7
	vmovaps	%xmm3, 48(%rsp)
	movl	48(%rsp), %r11d
	vmovaps	%xmm5, 48(%rsp)
	vmovdqu	(%rsi), %xmm1
	movl	48(%rsp), %r10d
	vmovaps	%xmm7, 48(%rsp)
	movl	48(%rsp), %esi
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	%xmm3, 80(%rsp)
	vmovaps	%xmm5, 96(%rsp)
	vmovaps	%xmm7, 112(%rsp)
	movl	%esi, 36(%rsp)
	movl	76(%rsp), %r15d
	movl	64(%rsp), %eax
	movl	116(%rsp), %r8d
	movl	100(%rsp), %r9d
	movl	84(%rsp), %r14d
	movl	68(%rsp), %edx
	movl	120(%rsp), %edi
	movl	124(%rsp), %r13d
	movl	88(%rsp), %ebx
	movl	92(%rsp), %esi
	movl	$6, 28(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movl	%esi, 44(%rsp)
	movl	104(%rsp), %r12d
	movl	72(%rsp), %ecx
	movl	108(%rsp), %ebx
	movl	36(%rsp), %esi
	.p2align 4,,10
	.p2align 3
.L2:
	addl	%r15d, %esi
	xorl	%esi, %r10d
	addl	%r10d, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %esi
	rorx	$21, %esi, %r13d
	addl	%r13d, %r10d
	xorl	%r10d, %r11d
	addl	%r11d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r8d
	xorl	%r8d, %r9d
	addl	%r9d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %edx
	xorl	%edx, %eax
	addl	%eax, %r8d
	rorx	$21, %r8d, %r8d
	leal	(%r9,%r8), %esi
	xorl	%esi, %r14d
	addl	%r14d, %edx
	movl	48(%rsp), %r9d
	rorx	$25, %edx, %edx
	addl	%edx, %edi
	xorl	%edi, %r12d
	addl	%r12d, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %ecx
	xorl	%ecx, %edx
	addl	%edx, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %r12d
	xorl	%r12d, %r9d
	movl	%esi, 36(%rsp)
	movl	40(%rsp), %esi
	addl	%r9d, %ecx
	movl	%edi, 32(%rsp)
	rorx	$25, %ecx, %ecx
	movl	44(%rsp), %edi
	addl	%ecx, %esi
	xorl	%esi, %ebx
	addl	%ebx, %edi
	rorx	$13, %edi, %edi
	addl	%edi, %r15d
	xorl	%r15d, %ecx
	addl	%ecx, %esi
	rorx	$21, %esi, %esi
	addl	%esi, %ebx
	xorl	%ebx, %edi
	addl	%edi, %r15d
	rorx	$25, %r15d, %r15d
	addl	%r15d, %esi
	xorl	%esi, %r12d
	addl	%r12d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %esi
	rorx	$21, %esi, %esi
	addl	%esi, %r12d
	xorl	%r12d, %r14d
	addl	%r14d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r13d
	xorl	%r13d, %ebx
	addl	%ebx, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %edx
	xorl	%edx, %eax
	addl	%eax, %r13d
	movl	%esi, 40(%rsp)
	rorx	$21, %r13d, %esi
	addl	%esi, %ebx
	xorl	%ebx, %r9d
	addl	%r9d, %edx
	rorx	$25, %edx, %edx
	addl	%edx, %r8d
	xorl	%r8d, %r10d
	addl	%r10d, %edi
	rorx	$13, %edi, %edi
	addl	%edi, %ecx
	xorl	%ecx, %edx
	addl	%edx, %r8d
	rorx	$21, %r8d, %r8d
	addl	%r8d, %r10d
	xorl	%r10d, %edi
	addl	%edi, %ecx
	movl	%edi, 44(%rsp)
	movl	32(%rsp), %edi
	movl	%r9d, 48(%rsp)
	movl	36(%rsp), %r9d
	rorx	$25, %ecx, %ecx
	addl	%ecx, %edi
	xorl	%edi, %r9d
	addl	%r9d, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %r15d
	xorl	%r15d, %ecx
	addl	%ecx, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %r9d
	xorl	%r9d, %r11d
	addl	%r11d, %r15d
	decl	28(%rsp)
	rorx	$25, %r15d, %r15d
	jne	.L2
	movl	%ebx, 108(%rsp)
	movl	44(%rsp), %ebx
	movl	%esi, 112(%rsp)
	movl	%ebx, 92(%rsp)
	movq	16(%rsp), %rbx
	movl	%edi, 120(%rsp)
	movq	%rbx, %rsi
	movl	40(%rsp), %r13d
	movl	48(%rsp), %edi
	shrq	$2, %rsi
	negq	%rsi
	movl	%r15d, 76(%rsp)
	movl	%r10d, 96(%rsp)
	movl	%r11d, 80(%rsp)
	movl	%eax, 64(%rsp)
	movl	%r8d, 116(%rsp)
	movl	%r9d, 100(%rsp)
	movl	%r14d, 84(%rsp)
	movl	%edx, 68(%rsp)
	movl	%r12d, 104(%rsp)
	movl	%edi, 88(%rsp)
	movl	%ecx, 72(%rsp)
	movl	%r13d, 124(%rsp)
	andl	$7, %esi
	je	.L8
	addl	(%rbx), %eax
	movl	%eax, 64(%rsp)
	cmpl	$1, %esi
	je	.L9
	addl	4(%rbx), %edx
	movl	%edx, 68(%rsp)
	cmpl	$2, %esi
	je	.L10
	addl	8(%rbx), %ecx
	movl	%ecx, 72(%rsp)
	cmpl	$3, %esi
	je	.L11
	addl	12(%rbx), %r15d
	movl	%r15d, 76(%rsp)
	cmpl	$4, %esi
	je	.L12
	addl	16(%rbx), %r11d
	movl	%r11d, 80(%rsp)
	cmpl	$5, %esi
	je	.L13
	addl	20(%rbx), %r14d
	movl	%r14d, 84(%rsp)
	cmpl	$7, %esi
	jne	.L14
	addl	24(%rbx), %edi
	movl	%edi, 88(%rsp)
	movl	$9, %ecx
	movl	$7, %eax
.L3:
	movl	%esi, %edx
	salq	$2, %rdx
	leaq	64(%rsp,%rdx), %rdi
	vmovdqu	(%rdi), %ymm2
	leaq	(%rbx,%rdx), %r8
	movl	$16, %edx
	vpaddd	(%r8), %ymm2, %ymm0
	subl	%esi, %edx
	shrl	$3, %edx
	vmovdqu	%ymm0, (%rdi)
	cmpl	$2, %edx
	jne	.L5
	vmovdqu	32(%rdi), %ymm7
	vpaddd	32(%r8), %ymm7, %ymm0
	vmovdqu	%ymm0, 32(%rdi)
.L6:
	movq	8(%rsp), %rax
	vmovdqa	64(%rsp), %xmm3
	vmovdqa	80(%rsp), %xmm4
	vmovdqa	96(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm6
	vmovups	%xmm3, (%rax)
	vmovups	%xmm4, 16(%rax)
	vmovups	%xmm5, 32(%rax)
	vmovups	%xmm6, 48(%rax)
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L37
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	leal	8(%rax), %edx
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	%esi, 64(%rsp,%rdx,4)
	leal	9(%rax), %edx
	cmpl	$9, %ecx
	je	.L6
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	%esi, 64(%rsp,%rdx,4)
	leal	10(%rax), %edx
	cmpl	$10, %ecx
	je	.L6
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	%esi, 64(%rsp,%rdx,4)
	leal	11(%rax), %edx
	cmpl	$11, %ecx
	je	.L6
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	%esi, 64(%rsp,%rdx,4)
	leal	12(%rax), %edx
	cmpl	$12, %ecx
	je	.L6
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	%esi, 64(%rsp,%rdx,4)
	leal	13(%rax), %edx
	cmpl	$13, %ecx
	je	.L6
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %esi
	addl	$14, %eax
	addl	%esi, 64(%rsp,%rdx,4)
	cmpl	$14, %ecx
	je	.L6
	cltq
	movl	(%rbx,%rax,4), %edx
	addl	%edx, 64(%rsp,%rax,4)
	jmp	.L6
.L12:
	movl	$12, %ecx
	movl	$4, %eax
	jmp	.L3
.L9:
	movl	$15, %ecx
	movl	$1, %eax
	jmp	.L3
.L8:
	movl	$16, %ecx
	xorl	%eax, %eax
	jmp	.L3
.L10:
	movl	$14, %ecx
	movl	$2, %eax
	jmp	.L3
.L11:
	movl	$13, %ecx
	movl	$3, %eax
	jmp	.L3
.L13:
	movl	$11, %ecx
	movl	$5, %eax
	jmp	.L3
.L14:
	movl	$10, %ecx
	movl	$6, %eax
	jmp	.L3
.L37:
	vzeroupper
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11:
	.size	forro, .-forro
	.p2align 4
	.globl	forro_init
	.type	forro_init, @function
forro_init:
.LFB12:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE12:
	.size	forro_init, .-forro_init
	.p2align 4
	.globl	forro_keysetup
	.type	forro_keysetup, @function
forro_keysetup:
.LFB13:
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
	je	.L43
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
	ret
	.p2align 4,,10
	.p2align 3
.L43:
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
	ret
	.cfi_endproc
.LFE13:
	.size	forro_keysetup, .-forro_keysetup
	.p2align 4
	.globl	forro_ivsetup
	.type	forro_ivsetup, @function
forro_ivsetup:
.LFB14:
	.cfi_startproc
	movq	$0, 16(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 48(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 52(%rdi)
	ret
	.cfi_endproc
.LFE14:
	.size	forro_ivsetup, .-forro_ivsetup
	.p2align 4
	.globl	forro_encrypt_bytes
	.type	forro_encrypt_bytes, @function
forro_encrypt_bytes:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$288, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, 120(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	%ecx, 28(%rsp)
	movq	%fs:40, %rbx
	movq	%rbx, 280(%rsp)
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.L45
	movl	%ecx, %eax
	decl	%eax
	shrl	$6, %eax
	movl	%eax, 24(%rsp)
	salq	$6, %rax
	movq	%rax, %rbx
	movq	%rax, 16(%rsp)
	movq	%rsi, %rax
	addq	%rbx, %rsi
	movq	%rsi, 48(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rax, 136(%rsp)
	.p2align 4,,10
	.p2align 3
.L58:
	movq	120(%rsp), %r13
	movl	44(%r13), %edi
	movl	0(%r13), %eax
	movl	28(%r13), %ebx
	movl	4(%r13), %ecx
	movl	8(%r13), %edx
	movl	12(%r13), %r15d
	movl	16(%r13), %r11d
	movl	20(%r13), %r14d
	movl	24(%r13), %r8d
	movl	32(%r13), %r10d
	movl	36(%r13), %esi
	movl	40(%r13), %r12d
	movl	48(%r13), %r9d
	movl	%eax, 132(%rsp)
	movl	%ebx, 128(%rsp)
	movl	56(%r13), %eax
	movl	%edi, %ebx
	movl	%edi, 72(%rsp)
	movl	52(%r13), %edi
	movl	60(%r13), %r13d
	movl	%eax, 60(%rsp)
	movl	%ecx, 108(%rsp)
	movl	%edx, 104(%rsp)
	movl	%r15d, 100(%rsp)
	movl	%r11d, 96(%rsp)
	movl	%r14d, 92(%rsp)
	movl	%r8d, 88(%rsp)
	movl	%r10d, 84(%rsp)
	movl	%esi, 80(%rsp)
	movl	%r12d, 76(%rsp)
	movl	%r9d, 68(%rsp)
	movl	%edi, 64(%rsp)
	movl	%r13d, 56(%rsp)
	movl	%eax, 152(%rsp)
	movl	%ebx, 148(%rsp)
	movl	128(%rsp), %ebx
	movl	$6, 144(%rsp)
	movl	%ebx, 160(%rsp)
	movl	%r13d, 156(%rsp)
	movl	132(%rsp), %eax
	movl	148(%rsp), %ebx
	movl	152(%rsp), %r13d
	.p2align 4,,10
	.p2align 3
.L47:
	addl	%r15d, %r9d
	xorl	%r9d, %r10d
	addl	%r10d, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %r9d
	rorx	$21, %r9d, %r9d
	addl	%r9d, %r10d
	xorl	%r10d, %r11d
	addl	%r11d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %edi
	xorl	%edi, %esi
	addl	%esi, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %ecx
	xorl	%ecx, %eax
	addl	%eax, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %esi
	xorl	%esi, %r14d
	addl	%r14d, %ecx
	rorx	$25, %ecx, %ecx
	addl	%ecx, %r13d
	xorl	%r13d, %r12d
	addl	%r12d, %r8d
	rorx	$13, %r8d, %r8d
	addl	%r8d, %edx
	xorl	%edx, %ecx
	addl	%ecx, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r8d
	movl	%r10d, 152(%rsp)
	movl	156(%rsp), %r10d
	addl	%r8d, %edx
	movl	%esi, 148(%rsp)
	rorx	$25, %edx, %edx
	movl	160(%rsp), %esi
	addl	%edx, %r10d
	xorl	%r10d, %ebx
	addl	%ebx, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %r15d
	xorl	%r15d, %edx
	addl	%edx, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %ebx
	xorl	%ebx, %esi
	addl	%esi, %r15d
	rorx	$25, %r15d, %r15d
	addl	%r15d, %r10d
	xorl	%r10d, %r12d
	addl	%r12d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %r12d
	xorl	%r12d, %r14d
	addl	%r14d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r9d
	xorl	%r9d, %ebx
	addl	%ebx, %r8d
	rorx	$13, %r8d, %r8d
	addl	%r8d, %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	rorx	$21, %r9d, %r9d
	addl	%r9d, %ebx
	xorl	%ebx, %r8d
	addl	%r8d, %ecx
	movl	%r10d, 156(%rsp)
	movl	152(%rsp), %r10d
	rorx	$25, %ecx, %ecx
	addl	%ecx, %edi
	xorl	%edi, %r10d
	addl	%r10d, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %r10d
	xorl	%r10d, %esi
	addl	%esi, %edx
	movl	%esi, 160(%rsp)
	movl	148(%rsp), %esi
	rorx	$25, %edx, %edx
	addl	%edx, %r13d
	xorl	%r13d, %esi
	addl	%esi, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %r15d
	xorl	%r15d, %edx
	addl	%edx, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %esi
	xorl	%esi, %r11d
	addl	%r11d, %r15d
	decl	144(%rsp)
	rorx	$25, %r15d, %r15d
	jne	.L47
	addl	132(%rsp), %eax
	movl	%eax, 192(%rsp)
	movl	96(%rsp), %eax
	movl	%r13d, 152(%rsp)
	addl	108(%rsp), %ecx
	addl	%eax, %r11d
	addl	80(%rsp), %esi
	movl	%ecx, 196(%rsp)
	movl	%r11d, 208(%rsp)
	movl	92(%rsp), %ecx
	movl	160(%rsp), %r11d
	movl	%esi, 228(%rsp)
	movl	152(%rsp), %esi
	addl	72(%rsp), %ebx
	addl	104(%rsp), %edx
	addl	100(%rsp), %r15d
	addl	88(%rsp), %r8d
	addl	128(%rsp), %r11d
	addl	84(%rsp), %r10d
	addl	76(%rsp), %r12d
	addl	68(%rsp), %r9d
	addl	64(%rsp), %edi
	movl	156(%rsp), %r13d
	addl	%ecx, %r14d
	movl	%ebx, 236(%rsp)
	movl	%edx, 200(%rsp)
	movl	%r15d, 204(%rsp)
	movl	%r14d, 212(%rsp)
	movl	%r8d, 216(%rsp)
	movl	%r11d, 220(%rsp)
	movl	%r10d, 224(%rsp)
	movl	%r12d, 232(%rsp)
	movl	%r9d, 240(%rsp)
	movl	%edi, 244(%rsp)
	addl	60(%rsp), %esi
	movq	120(%rsp), %rbx
	addl	56(%rsp), %r13d
	incl	%eax
	movl	%esi, 248(%rsp)
	movl	%r13d, 252(%rsp)
	movl	%eax, 16(%rbx)
	jne	.L48
	movl	%ecx, %eax
	incl	%eax
	movl	%eax, 20(%rbx)
.L48:
	movq	48(%rsp), %rbx
	cmpq	%rbx, 136(%rsp)
	je	.L80
	movq	136(%rsp), %rbx
	movq	112(%rsp), %rdi
	leaq	31(%rbx), %rax
	subq	%rdi, %rax
	cmpq	$62, %rax
	jbe	.L60
	vmovdqu	(%rbx), %ymm1
	vpxor	192(%rsp), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rdi)
	vmovdqu	32(%rbx), %ymm3
	vpxor	224(%rsp), %ymm3, %ymm0
	vmovdqa	%ymm3, 160(%rsp)
	vmovdqu	%ymm0, 32(%rdi)
.L57:
	addq	$64, 112(%rsp)
	addq	$64, 136(%rsp)
	jmp	.L58
.L80:
	movl	24(%rsp), %eax
	movl	28(%rsp), %edi
	movq	32(%rsp), %rbx
	sall	$6, %eax
	subl	%eax, %edi
	movq	16(%rsp), %rax
	movq	%rbx, %rsi
	leaq	32(%rax), %rdx
	addq	%rax, %rsi
	movq	40(%rsp), %rax
	leal	-1(%rdi), %ecx
	addq	%rdx, %rax
	cmpq	%rax, %rsi
	movq	%rbx, %rax
	movq	136(%rsp), %rbx
	setnb	%r8b
	addq	%rdx, %rax
	cmpq	%rax, %rbx
	setnb	%al
	orb	%al, %r8b
	je	.L50
	cmpl	$30, %ecx
	jbe	.L50
	vmovdqu	(%rbx), %ymm5
	movl	%edi, %eax
	vpxor	192(%rsp), %ymm5, %ymm0
	shrl	$5, %eax
	vmovdqa	%ymm5, 160(%rsp)
	vmovdqu	%ymm0, (%rsi)
	cmpl	$1, %eax
	je	.L51
	vmovdqu	32(%rbx), %ymm7
	vpxor	224(%rsp), %ymm7, %ymm0
	vmovdqa	%ymm7, 160(%rsp)
	vmovdqu	%ymm0, 32(%rsi)
.L51:
	movl	%edi, %eax
	andl	$-32, %eax
	testb	$31, %dil
	je	.L77
	movq	136(%rsp), %r8
	movslq	%eax, %rdx
	.p2align 4,,10
	.p2align 3
.L53:
	movslq	%eax, %rcx
	movzbl	192(%rsp,%rcx), %ecx
	incl	%eax
	xorb	(%r8,%rdx), %cl
	movb	%cl, (%rsi,%rdx)
	incq	%rdx
	cmpl	%edi, %eax
	jb	.L53
.L77:
	vzeroupper
.L45:
	movq	280(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L81
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L60:
	.cfi_restore_state
	movq	%rbx, %rsi
	xorl	%eax, %eax
	leaq	192(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L56:
	movzbl	(%rcx,%rax), %edx
	xorb	(%rsi,%rax), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$64, %rax
	jne	.L56
	jmp	.L57
.L50:
	movq	136(%rsp), %r8
	xorl	%eax, %eax
	leaq	192(%rsp), %rdi
.L54:
	movzbl	(%rdi,%rax), %edx
	xorb	(%r8,%rax), %dl
	movb	%dl, (%rsi,%rax)
	movq	%rax, %rdx
	incq	%rax
	cmpq	%rcx, %rdx
	jne	.L54
	jmp	.L77
.L81:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE15:
	.size	forro_encrypt_bytes, .-forro_encrypt_bytes
	.p2align 4
	.globl	forro_decrypt_bytes
	.type	forro_decrypt_bytes, @function
forro_decrypt_bytes:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$288, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	%ecx, 28(%rsp)
	movq	%fs:40, %rbx
	movq	%rbx, 280(%rsp)
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.L82
	movl	%ecx, %eax
	decl	%eax
	shrl	$6, %eax
	movl	%eax, 24(%rsp)
	salq	$6, %rax
	movq	%rax, %rbx
	movq	%rax, 16(%rsp)
	movq	%rsi, %rax
	addq	%rbx, %rax
	movq	%rax, 48(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%rsi, 184(%rsp)
	movq	%rdi, %rbx
	.p2align 4,,10
	.p2align 3
.L95:
	movl	36(%rbx), %r10d
	movl	24(%rbx), %edi
	movl	48(%rbx), %r8d
	movl	56(%rbx), %r13d
	movl	%edi, 164(%rsp)
	movl	%r10d, 76(%rsp)
	movl	%r10d, %edi
	movl	44(%rbx), %r10d
	movl	(%rbx), %eax
	movl	4(%rbx), %edx
	movl	8(%rbx), %ecx
	movl	12(%rbx), %r15d
	movl	16(%rbx), %r9d
	movl	20(%rbx), %r14d
	movl	28(%rbx), %r11d
	movl	32(%rbx), %esi
	movl	40(%rbx), %r12d
	movl	%r10d, 160(%rsp)
	movl	%r8d, 68(%rsp)
	movl	%r13d, 124(%rsp)
	movl	%r8d, %r10d
	movl	60(%rbx), %r13d
	movl	52(%rbx), %r8d
	movl	%r13d, 60(%rsp)
	movl	%eax, 108(%rsp)
	movl	%edx, 104(%rsp)
	movl	%ecx, 100(%rsp)
	movl	%r15d, 96(%rsp)
	movl	%r9d, 92(%rsp)
	movl	%r14d, 88(%rsp)
	movl	%r11d, 84(%rsp)
	movl	%esi, 80(%rsp)
	movl	%r12d, 72(%rsp)
	movl	%r8d, 64(%rsp)
	movl	%r13d, 128(%rsp)
	movl	124(%rsp), %r13d
	movl	%edi, 112(%rsp)
	movl	%r13d, 120(%rsp)
	movl	164(%rsp), %edi
	movl	160(%rsp), %r13d
	movl	$6, 56(%rsp)
	movl	%r13d, 180(%rsp)
	movl	%edi, 176(%rsp)
	movl	128(%rsp), %r13d
	movl	112(%rsp), %edi
	movq	%rbx, 112(%rsp)
	movl	120(%rsp), %ebx
	.p2align 4,,10
	.p2align 3
.L84:
	addl	%r15d, %r10d
	xorl	%r10d, %esi
	addl	%esi, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %esi
	xorl	%esi, %r9d
	addl	%r9d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r8d
	xorl	%r8d, %edi
	addl	%edi, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %edx
	xorl	%edx, %eax
	addl	%eax, %r8d
	rorx	$21, %r8d, %r8d
	addl	%r8d, %edi
	xorl	%edi, %r14d
	addl	%r14d, %edx
	movl	%esi, 128(%rsp)
	rorx	$25, %edx, %edx
	movl	176(%rsp), %esi
	addl	%edx, %ebx
	xorl	%ebx, %r12d
	addl	%r12d, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %ecx
	xorl	%ecx, %edx
	addl	%edx, %ebx
	rorx	$21, %ebx, %ebx
	addl	%ebx, %r12d
	xorl	%r12d, %esi
	addl	%esi, %ecx
	movl	%edi, 120(%rsp)
	movl	180(%rsp), %edi
	rorx	$25, %ecx, %ecx
	addl	%ecx, %r13d
	xorl	%r13d, %edi
	addl	%edi, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %r15d
	xorl	%r15d, %ecx
	addl	%ecx, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %edi
	xorl	%edi, %r11d
	addl	%r11d, %r15d
	rorx	$25, %r15d, %r15d
	addl	%r15d, %r13d
	xorl	%r13d, %r12d
	addl	%r12d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r14d
	addl	%r14d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r10d
	xorl	%r10d, %edi
	addl	%edi, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %edx
	xorl	%edx, %eax
	addl	%eax, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %edi
	xorl	%edi, %esi
	addl	%esi, %edx
	movl	%esi, 176(%rsp)
	movl	128(%rsp), %esi
	rorx	$25, %edx, %edx
	addl	%edx, %r8d
	xorl	%r8d, %esi
	addl	%esi, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %ecx
	xorl	%ecx, %edx
	addl	%edx, %r8d
	rorx	$21, %r8d, %r8d
	addl	%r8d, %esi
	xorl	%esi, %r11d
	addl	%r11d, %ecx
	movl	%edi, 180(%rsp)
	movl	120(%rsp), %edi
	rorx	$25, %ecx, %ecx
	addl	%ecx, %ebx
	xorl	%ebx, %edi
	addl	%edi, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %r15d
	xorl	%r15d, %ecx
	addl	%ecx, %ebx
	rorx	$21, %ebx, %ebx
	addl	%ebx, %edi
	xorl	%edi, %r9d
	addl	%r9d, %r15d
	decl	56(%rsp)
	rorx	$25, %r15d, %r15d
	jne	.L84
	addl	104(%rsp), %edx
	movl	%edx, 196(%rsp)
	movl	92(%rsp), %edx
	addl	108(%rsp), %eax
	addl	100(%rsp), %ecx
	addl	%edx, %r9d
	movl	%eax, 192(%rsp)
	movl	%ecx, 200(%rsp)
	movl	%r9d, 208(%rsp)
	movl	88(%rsp), %ecx
	movl	176(%rsp), %r9d
	movl	180(%rsp), %eax
	addl	96(%rsp), %r15d
	addl	160(%rsp), %eax
	addl	164(%rsp), %r9d
	addl	84(%rsp), %r11d
	addl	80(%rsp), %esi
	addl	76(%rsp), %edi
	addl	72(%rsp), %r12d
	addl	68(%rsp), %r10d
	addl	64(%rsp), %r8d
	addl	%ecx, %r14d
	movl	%r13d, 128(%rsp)
	movl	%eax, 236(%rsp)
	movl	%ebx, %r13d
	movl	%r15d, 204(%rsp)
	movq	112(%rsp), %rbx
	movl	%r14d, 212(%rsp)
	movl	%r9d, 216(%rsp)
	movl	%r11d, 220(%rsp)
	movl	%esi, 224(%rsp)
	movl	%edi, 228(%rsp)
	movl	%r12d, 232(%rsp)
	movl	%r10d, 240(%rsp)
	movl	%r8d, 244(%rsp)
	movl	124(%rsp), %edi
	leal	1(%rdx), %eax
	addl	%r13d, %edi
	movl	128(%rsp), %r13d
	movl	%edi, 248(%rsp)
	addl	60(%rsp), %r13d
	movl	%r13d, 252(%rsp)
	movl	%eax, 16(%rbx)
	testl	%eax, %eax
	jne	.L85
	movl	%ecx, %eax
	incl	%eax
	movl	%eax, 20(%rbx)
.L85:
	movq	48(%rsp), %rcx
	cmpq	%rcx, 184(%rsp)
	je	.L117
	movq	184(%rsp), %rdi
	movq	168(%rsp), %rcx
	leaq	31(%rdi), %rax
	subq	%rcx, %rax
	cmpq	$62, %rax
	jbe	.L97
	vmovdqu	(%rdi), %ymm1
	vpxor	192(%rsp), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rdi), %ymm3
	vpxor	224(%rsp), %ymm3, %ymm0
	vmovdqa	%ymm3, 128(%rsp)
	vmovdqu	%ymm0, 32(%rcx)
	.p2align 4,,10
	.p2align 3
.L94:
	addq	$64, 168(%rsp)
	addq	$64, 184(%rsp)
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L117:
	movq	32(%rsp), %rbx
	movq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movl	24(%rsp), %eax
	movq	40(%rsp), %rsi
	addq	%rdx, %rdi
	movl	28(%rsp), %ecx
	addq	$32, %rdx
	sall	$6, %eax
	addq	%rdx, %rsi
	subl	%eax, %ecx
	cmpq	%rsi, %rdi
	setnb	%sil
	addq	%rbx, %rdx
	movq	184(%rsp), %rbx
	leal	-1(%rcx), %eax
	cmpq	%rdx, %rbx
	setnb	%dl
	orb	%dl, %sil
	je	.L87
	cmpl	$30, %eax
	jbe	.L87
	vmovdqu	(%rbx), %ymm5
	movl	%ecx, %eax
	vpxor	192(%rsp), %ymm5, %ymm0
	shrl	$5, %eax
	vmovdqa	%ymm5, 128(%rsp)
	vmovdqu	%ymm0, (%rdi)
	cmpl	$1, %eax
	je	.L88
	vmovdqu	32(%rbx), %ymm7
	vpxor	224(%rsp), %ymm7, %ymm0
	vmovdqa	%ymm7, 128(%rsp)
	vmovdqu	%ymm0, 32(%rdi)
.L88:
	movl	%ecx, %eax
	andl	$-32, %eax
	testb	$31, %cl
	je	.L114
	movq	184(%rsp), %r8
	movslq	%eax, %rdx
	.p2align 4,,10
	.p2align 3
.L90:
	movslq	%eax, %rsi
	movzbl	192(%rsp,%rsi), %esi
	incl	%eax
	xorb	(%r8,%rdx), %sil
	movb	%sil, (%rdi,%rdx)
	incq	%rdx
	cmpl	%ecx, %eax
	jb	.L90
.L114:
	vzeroupper
.L82:
	movq	280(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L118
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
	xorl	%eax, %eax
	leaq	192(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L93:
	movzbl	(%rcx,%rax), %edx
	movq	184(%rsp), %rsi
	movq	168(%rsp), %rdi
	xorb	(%rsi,%rax), %dl
	movb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$64, %rax
	je	.L94
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L87:
	movq	184(%rsp), %r8
	movl	%eax, %ecx
	leaq	192(%rsp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L91:
	movzbl	(%rsi,%rax), %edx
	xorb	(%r8,%rax), %dl
	movb	%dl, (%rdi,%rax)
	movq	%rax, %rdx
	incq	%rax
	cmpq	%rcx, %rdx
	jne	.L91
	jmp	.L114
.L118:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	forro_decrypt_bytes, .-forro_decrypt_bytes
	.p2align 4
	.globl	forro_keystream_bytes
	.type	forro_keystream_bytes, @function
forro_keystream_bytes:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$256, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, 88(%rsp)
	movq	%rsi, 104(%rsp)
	movl	%edx, 20(%rsp)
	movq	%fs:40, %rcx
	movq	%rcx, 248(%rsp)
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L119
	leal	-1(%rdx), %edx
	movq	%rsi, %r14
	movq	%rdx, %rbx
	shrl	$6, %ebx
	incq	%rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	memset@PLT
	movl	%ebx, %eax
	salq	$6, %rax
	addq	%r14, %rax
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L128:
	movq	88(%rsp), %r13
	movl	44(%r13), %esi
	movl	0(%r13), %eax
	movl	24(%r13), %ebx
	movl	4(%r13), %ecx
	movl	8(%r13), %edx
	movl	12(%r13), %r15d
	movl	16(%r13), %r9d
	movl	20(%r13), %r14d
	movl	28(%r13), %r11d
	movl	32(%r13), %edi
	movl	36(%r13), %r8d
	movl	40(%r13), %r12d
	movl	48(%r13), %r10d
	movl	%eax, 112(%rsp)
	movl	%ebx, 100(%rsp)
	movl	56(%r13), %eax
	movl	%esi, %ebx
	movl	%esi, 48(%rsp)
	movl	52(%r13), %esi
	movl	60(%r13), %r13d
	movl	%eax, 36(%rsp)
	movl	%ecx, 84(%rsp)
	movl	%edx, 80(%rsp)
	movl	%r15d, 76(%rsp)
	movl	%r9d, 72(%rsp)
	movl	%r14d, 68(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%edi, 60(%rsp)
	movl	%r8d, 56(%rsp)
	movl	%r12d, 52(%rsp)
	movl	%r10d, 44(%rsp)
	movl	%esi, 40(%rsp)
	movl	%r13d, 32(%rsp)
	movl	%eax, 120(%rsp)
	movl	%ebx, 116(%rsp)
	movl	100(%rsp), %ebx
	movl	$6, 96(%rsp)
	movl	%ebx, 128(%rsp)
	movl	%r13d, 124(%rsp)
	movl	112(%rsp), %eax
	movl	116(%rsp), %ebx
	movl	120(%rsp), %r13d
	.p2align 4,,10
	.p2align 3
.L121:
	addl	%r15d, %r10d
	xorl	%r10d, %edi
	addl	%edi, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %edi
	xorl	%edi, %r9d
	addl	%r9d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %esi
	xorl	%esi, %r8d
	addl	%r8d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %ecx
	xorl	%ecx, %eax
	addl	%eax, %esi
	rorx	$21, %esi, %esi
	addl	%esi, %r8d
	xorl	%r8d, %r14d
	addl	%r14d, %ecx
	movl	%esi, 116(%rsp)
	rorx	$25, %ecx, %ecx
	movl	128(%rsp), %esi
	addl	%ecx, %r13d
	xorl	%r13d, %r12d
	addl	%r12d, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %esi
	movl	%edi, 120(%rsp)
	movl	124(%rsp), %edi
	addl	%esi, %edx
	rorx	$25, %edx, %edx
	addl	%edx, %edi
	xorl	%edi, %ebx
	addl	%ebx, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %r15d
	xorl	%r15d, %edx
	addl	%edx, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %ebx
	xorl	%ebx, %r11d
	addl	%r11d, %r15d
	rorx	$25, %r15d, %r15d
	addl	%r15d, %edi
	xorl	%edi, %r12d
	addl	%r12d, %r14d
	rorx	$13, %r14d, %r14d
	addl	%r14d, %eax
	xorl	%eax, %r15d
	addl	%r15d, %edi
	rorx	$21, %edi, %edi
	addl	%edi, %r12d
	xorl	%r12d, %r14d
	addl	%r14d, %eax
	rorx	$25, %eax, %eax
	addl	%eax, %r10d
	xorl	%r10d, %ebx
	addl	%ebx, %esi
	rorx	$13, %esi, %esi
	addl	%esi, %ecx
	xorl	%ecx, %eax
	addl	%eax, %r10d
	rorx	$21, %r10d, %r10d
	addl	%r10d, %ebx
	xorl	%ebx, %esi
	addl	%esi, %ecx
	movl	%esi, 128(%rsp)
	movl	116(%rsp), %esi
	movl	%edi, 124(%rsp)
	movl	120(%rsp), %edi
	rorx	$25, %ecx, %ecx
	addl	%ecx, %esi
	xorl	%esi, %edi
	addl	%edi, %r11d
	rorx	$13, %r11d, %r11d
	addl	%r11d, %edx
	xorl	%edx, %ecx
	addl	%ecx, %esi
	rorx	$21, %esi, %esi
	addl	%esi, %edi
	xorl	%edi, %r11d
	addl	%r11d, %edx
	rorx	$25, %edx, %edx
	addl	%edx, %r13d
	xorl	%r13d, %r8d
	addl	%r8d, %r9d
	rorx	$13, %r9d, %r9d
	addl	%r9d, %r15d
	xorl	%r15d, %edx
	addl	%edx, %r13d
	rorx	$21, %r13d, %r13d
	addl	%r13d, %r8d
	xorl	%r8d, %r9d
	addl	%r9d, %r15d
	decl	96(%rsp)
	rorx	$25, %r15d, %r15d
	jne	.L121
	addl	112(%rsp), %eax
	movl	%eax, 160(%rsp)
	movl	72(%rsp), %eax
	movl	%r13d, 120(%rsp)
	addl	80(%rsp), %edx
	addl	%eax, %r9d
	addl	56(%rsp), %r8d
	movl	%edx, 168(%rsp)
	movl	%r9d, 176(%rsp)
	movl	68(%rsp), %edx
	movl	128(%rsp), %r9d
	movl	%r8d, 196(%rsp)
	movl	120(%rsp), %r8d
	addl	48(%rsp), %ebx
	addl	84(%rsp), %ecx
	addl	76(%rsp), %r15d
	addl	100(%rsp), %r9d
	addl	64(%rsp), %r11d
	addl	60(%rsp), %edi
	addl	52(%rsp), %r12d
	addl	44(%rsp), %r10d
	addl	40(%rsp), %esi
	movl	124(%rsp), %r13d
	addl	%edx, %r14d
	movl	%ebx, 204(%rsp)
	movl	%ecx, 164(%rsp)
	movl	%r15d, 172(%rsp)
	movl	%r14d, 180(%rsp)
	movl	%r9d, 184(%rsp)
	movl	%r11d, 188(%rsp)
	movl	%edi, 192(%rsp)
	movl	%r12d, 200(%rsp)
	movl	%r10d, 208(%rsp)
	movl	%esi, 212(%rsp)
	addl	36(%rsp), %r8d
	movq	88(%rsp), %rbx
	addl	32(%rsp), %r13d
	incl	%eax
	movl	%r8d, 216(%rsp)
	movl	%r13d, 220(%rsp)
	movl	%eax, 16(%rbx)
	jne	.L122
	movl	%edx, %eax
	incl	%eax
	movl	%eax, 20(%rbx)
.L122:
	movq	24(%rsp), %rbx
	cmpq	%rbx, 104(%rsp)
	je	.L142
	movq	104(%rsp), %rax
	vmovdqu	(%rax), %ymm1
	vmovdqu	32(%rax), %ymm3
	vpxor	160(%rsp), %ymm1, %ymm0
	addq	$64, %rax
	vmovdqu	%ymm0, -64(%rax)
	vpxor	192(%rsp), %ymm3, %ymm0
	vmovdqa	%ymm3, 128(%rsp)
	vmovdqu	%ymm0, -32(%rax)
	movq	%rax, 104(%rsp)
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L142:
	movl	16(%rsp), %eax
	movl	20(%rsp), %edx
	sall	$6, %eax
	subl	%eax, %edx
	leal	-1(%rdx), %eax
	cmpl	$30, %eax
	jbe	.L130
	movq	104(%rsp), %rcx
	movl	%edx, %eax
	vmovdqu	(%rcx), %ymm5
	shrl	$5, %eax
	vpxor	160(%rsp), %ymm5, %ymm0
	vmovdqa	%ymm5, 128(%rsp)
	vmovdqu	%ymm0, (%rcx)
	cmpl	$1, %eax
	je	.L125
	vmovdqu	32(%rcx), %ymm7
	vpxor	192(%rsp), %ymm7, %ymm0
	vmovdqa	%ymm7, 128(%rsp)
	vmovdqu	%ymm0, 32(%rcx)
.L125:
	movl	%edx, %eax
	andl	$-32, %eax
	testb	$31, %dl
	je	.L139
.L124:
	movq	104(%rsp), %rsi
	movslq	%eax, %rcx
	addq	%rcx, %rsi
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L143:
	movslq	%eax, %rcx
.L127:
	movzbl	160(%rsp,%rcx), %ecx
	incl	%eax
	xorb	%cl, (%rsi)
	incq	%rsi
	cmpl	%edx, %eax
	jb	.L143
.L139:
	vzeroupper
.L119:
	movq	248(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L144
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L130:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L124
.L144:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE17:
	.size	forro_keystream_bytes, .-forro_keystream_bytes
	.ident	"GCC: (Arch Linux 9.3.0-1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
