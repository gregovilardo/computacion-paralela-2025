	.file	"ising.c"
	.text
	.globl	update
	.type	update, @function
update:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movss	%xmm0, -52(%rbp)
	movq	%rdi, -64(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L8:
	movl	$0, -8(%rbp)
	jmp	.L3
.L7:
	movl	-4(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	negl	%eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	leal	999(%rax), %ecx
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %esi
	movl	%esi, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	999(%rax), %esi
	movl	%esi, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	imull	-24(%rbp), %eax
	subl	%eax, %edx
	movl	-12(%rbp), %eax
	imull	-28(%rbp), %eax
	subl	%eax, %edx
	movl	-12(%rbp), %eax
	imull	-32(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-24(%rbp), %eax
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-28(%rbp), %eax
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-32(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L4
	movl	-44(%rbp), %eax
	negl	%eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	-52(%rbp), %xmm0
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm2
	comiss	-48(%rbp), %xmm2
	jb	.L5
.L4:
	movl	-4(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, (%rcx,%rax,4)
.L5:
	addl	$1, -8(%rbp)
.L3:
	cmpl	$999, -8(%rbp)
	jbe	.L7
	addl	$1, -4(%rbp)
.L2:
	cmpl	$999, -4(%rbp)
	jbe	.L8
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	update, .-update
	.globl	calculate
	.type	calculate, @function
calculate:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L10
.L13:
	movl	$0, -12(%rbp)
	jmp	.L11
.L12:
	movl	-8(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	imulq	$4000, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %esi
	movl	%esi, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	imulq	$4000, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	leal	999(%rax), %esi
	movl	%esi, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	leal	999(%rax), %ecx
	movl	%ecx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$1000, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %eax
	imulq	$4000, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L11:
	cmpl	$999, -12(%rbp)
	jbe	.L12
	addl	$1, -8(%rbp)
.L10:
	cmpl	$999, -8(%rbp)
	jbe	.L13
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	.LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calculate, .-calculate
	.section	.rodata
	.align 4
.LC0:
	.long	1325400064
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
