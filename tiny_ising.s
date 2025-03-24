	.file	"tiny_ising.c"
	.text
	.section	.rodata
.LC1:
	.string	"tiny_ising.c"
	.align 8
.LC2:
	.string	"(0 < step && min <= max) || (step < 0 && max <= min)"
.LC4:
	.string	"index < NPOINTS"
	.text
	.type	cycle, @function
cycle:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm1, -136(%rbp)
	movsd	%xmm2, -144(%rbp)
	movl	%esi, -148(%rbp)
	movq	%rdx, -160(%rbp)
	movsd	-144(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	seta	%al
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2
	movsd	-136(%rbp), %xmm0
	comisd	-128(%rbp), %xmm0
	setnb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
.L2:
	pxor	%xmm0, %xmm0
	comisd	-144(%rbp), %xmm0
	seta	%al
	xorl	$1, %eax
	testb	%al, %al
	jne	.L4
	movsd	-128(%rbp), %xmm0
	comisd	-136(%rbp), %xmm0
	setnb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
.L4:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L3:
	movsd	-144(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L29
	movl	$1, %eax
	jmp	.L7
.L29:
	movl	$-1, %eax
.L7:
	movl	%eax, -80(%rbp)
	movl	$0, -4(%rbp)
	movsd	-128(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L8
.L27:
	movl	$0, -20(%rbp)
	jmp	.L9
.L10:
	pxor	%xmm3, %xmm3
	cvtsd2ss	-16(%rbp), %xmm3
	movd	%xmm3, %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rdi
	movd	%eax, %xmm0
	call	update@PLT
	addl	$1, -20(%rbp)
.L9:
	cmpl	$4, -20(%rbp)
	jbe	.L10
	movl	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L11
.L13:
	pxor	%xmm4, %xmm4
	cvtsd2ss	-16(%rbp), %xmm4
	movd	%xmm4, %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rdi
	movd	%eax, %xmm0
	call	update@PLT
	movl	-76(%rbp), %eax
	movl	$0, %edx
	divl	-148(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L12
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	$0, -100(%rbp)
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calculate@PLT
	movq	%xmm0, %rax
	movq	%rax, -88(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LC3(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-32(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-88(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-88(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	-88(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-96(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	-96(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	addl	$1, -24(%rbp)
.L12:
	addl	$1, -76(%rbp)
.L11:
	cmpl	$24, -76(%rbp)
	jbe	.L13
	cmpl	$150, -4(%rbp)
	jbe	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	8(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L15
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L16:
	movsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	16(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L17
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L18
.L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L18:
	movsd	-40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	24(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L19
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L20
.L19:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L20:
	movsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	32(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L21
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L22
.L21:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L22:
	movsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 32(%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	40(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L23
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L24
.L23:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L24:
	movsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 40(%rax)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movsd	48(%rax), %xmm2
	movl	-24(%rbp), %eax
	testq	%rax, %rax
	js	.L25
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L26
.L25:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L26:
	movsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, 48(%rax)
	addl	$1, -4(%rbp)
	movsd	-16(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L8:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-80(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-80(%rbp), %xmm0
	mulsd	-136(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L27
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cycle, .-cycle
	.type	init, @function
init:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L31
.L34:
	movl	$0, -8(%rbp)
	jmp	.L32
.L33:
	movl	-4(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	$1, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
.L32:
	cmpl	$999, -8(%rbp)
	jbe	.L33
	addl	$1, -4(%rbp)
.L31:
	cmpl	$999, -4(%rbp)
	jbe	.L34
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	init, .-init
	.section	.rodata
.LC5:
	.string	"# L: %i\n"
.LC7:
	.string	"# Minimum Temperature: %f\n"
.LC9:
	.string	"# Maximum Temperature: %f\n"
.LC11:
	.string	"# Temperature Step: %.12f\n"
.LC12:
	.string	"# Equilibration Time: %i\n"
.LC13:
	.string	"# Measurement Time: %i\n"
.LC14:
	.string	"# Data Acquiring Step: %i\n"
.LC15:
	.string	"# Number of Points: %i\n"
	.align 8
.LC16:
	.string	"# Total Simulation Time (sec): %lf\n"
.LC17:
	.string	"# Temp\tE\tE^2\tE^4\tM\tM^2\tM^4"
	.align 8
.LC21:
	.string	"%lf\t%.10lf\t%.10lf\t%.10lf\t%.10lf\t%.10lf\t%.10lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4000056, %rsp
	.cfi_offset 3, -24
	movq	%rsp, %rax
	movq	%rax, %rbx
	movq	$150, -32(%rbp)
	movl	$8456, %edx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L36
.L37:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movsd	(%rax), %xmm0
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$48, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$48, %rax
	movsd	(%rax), %xmm0
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$40, %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$40, %rax
	movsd	(%rax), %xmm0
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L36:
	cmpl	$150, -20(%rbp)
	jbe	.L37
	movl	$1000, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	.LC6(%rip), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	.LC8(%rip), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	.LC10(%rip), %rax
	movq	%rax, %xmm0
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$5, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$25, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$5, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$151, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	call	wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	leaq	-4000064(%rbp), %rax
	movl	$4000000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-4000064(%rbp), %rax
	movq	%rax, %rdi
	call	init
	movq	-40(%rbp), %rdx
	movsd	.LC10(%rip), %xmm1
	movsd	.LC8(%rip), %xmm0
	movq	.LC6(%rip), %rcx
	leaq	-4000064(%rbp), %rax
	movl	$5, %esi
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rdi
	call	cycle
	call	wtime@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -24(%rbp)
	jmp	.L38
.L39:
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$48, %rax
	movsd	(%rax), %xmm6
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$40, %rax
	movsd	(%rax), %xmm5
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movsd	(%rax), %xmm4
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movsd	(%rax), %xmm0
	movsd	.LC18(%rip), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	movsd	.LC19(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movsd	(%rax), %xmm0
	movsd	.LC20(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$7, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L38:
	cmpl	$150, -24(%rbp)
	jbe	.L39
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 6
__PRETTY_FUNCTION__.0:
	.string	"cycle"
	.align 4
.LC3:
	.long	1232348160
	.align 8
.LC6:
	.long	0
	.long	1073217536
	.align 8
.LC8:
	.long	0
	.long	1074266112
	.align 8
.LC10:
	.long	1202590843
	.long	1065646817
	.align 8
.LC18:
	.long	2044304820
	.long	1156216899
	.align 8
.LC19:
	.long	-1577058304
	.long	1114446484
	.align 8
.LC20:
	.long	0
	.long	1093567616
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
