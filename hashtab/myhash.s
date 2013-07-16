	.file	"myhash.c"
	.text
	.globl	createNewHashTable_int
	.type	createNewHashTable_int, @function
createNewHashTable_int:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	createNewHashTable_int, .-createNewHashTable_int
	.globl	addItem_int
	.type	addItem_int, @function
addItem_int:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-156(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$4, -124(%rbp)
	jmp	.L5
.L6:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L5:
	cmpl	$11, -124(%rbp)
	ja	.L6
	addl	$4, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L7
	movl	-124(%rbp), %eax
	movq	.L19(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L19:
	.quad	.L7
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.text
.L18:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L17:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L16:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L15:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L14:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L13:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L12:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L11:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L10:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L9:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L8:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L7:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L22
.L20:
	movq	$0, -88(%rbp)
	jmp	.L22
.L25:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L23
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L4
.L23:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L22
.L24:
	movq	$0, -88(%rbp)
.L22:
	cmpq	$0, -88(%rbp)
	jne	.L25
.L4:
	cmpq	$0, -88(%rbp)
	je	.L26
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L26
.L27:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L28
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L28:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L30
.L29:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L30:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L31:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L32
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L32:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L33:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L34:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L26:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$4, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$-1, %edi
	call	exit
.L36:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$-1, %edi
	call	exit
.L37:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L38
.L35:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L38:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$4, -112(%rbp)
	jmp	.L39
.L40:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L39:
	cmpl	$11, -112(%rbp)
	ja	.L40
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L41
	movl	-112(%rbp), %eax
	movq	.L53(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L53:
	.quad	.L41
	.quad	.L42
	.quad	.L43
	.quad	.L44
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.quad	.L52
	.text
.L52:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L51:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L50:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L49:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L48:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L47:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L46:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L45:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L44:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L43:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L42:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L41:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L54:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L55
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L55
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L56
	movl	$-1, %edi
	call	exit
.L56:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L59
.L64:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L60
.L63:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L61
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L61:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L62:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L60:
	cmpq	$0, -64(%rbp)
	jne	.L63
	addl	$1, -108(%rbp)
.L59:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L64
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L65
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L55
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L55:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	addItem_int, .-addItem_int
	.globl	findItem_int
	.type	findItem_int, @function
findItem_int:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$4, -24(%rbp)
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L70:
	cmpl	$11, -24(%rbp)
	ja	.L71
	addl	$4, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L72
	movl	-24(%rbp), %eax
	movq	.L84(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L84:
	.quad	.L72
	.quad	.L73
	.quad	.L74
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.quad	.L79
	.quad	.L80
	.quad	.L81
	.quad	.L82
	.quad	.L83
	.text
.L83:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L82:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L81:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L80:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L79:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L78:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L77:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L76:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L75:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L74:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L73:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L72:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L87
.L85:
	movq	$0, -16(%rbp)
	jmp	.L87
.L90:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L88
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L69
.L88:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L87
.L89:
	movq	$0, -16(%rbp)
.L87:
	cmpq	$0, -16(%rbp)
	jne	.L90
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	findItem_int, .-findItem_int
	.globl	deleteItem_int
	.type	deleteItem_int, @function
deleteItem_int:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L94
.L93:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L95
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L95:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L97
.L96:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L97:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L98:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L99
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L99:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L100:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L101:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L94:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	deleteItem_int, .-deleteItem_int
	.globl	countItems_int
	.type	countItems_int, @function
countItems_int:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L104
.L103:
	movl	$0, %eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	countItems_int, .-countItems_int
	.globl	getFirst_int
	.type	getFirst_int, @function
getFirst_int:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	getFirst_int, .-getFirst_int
	.globl	getNext_int
	.type	getNext_int, @function
getNext_int:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getNext_int, .-getNext_int
	.globl	getPrev_int
	.type	getPrev_int, @function
getPrev_int:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	getPrev_int, .-getPrev_int
	.globl	createNewHashTable_int8
	.type	createNewHashTable_int8, @function
createNewHashTable_int8:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	createNewHashTable_int8, .-createNewHashTable_int8
	.globl	addItem_int8
	.type	addItem_int8, @function
addItem_int8:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, %eax
	movq	%rdx, -168(%rbp)
	movb	%al, -156(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	-156(%rbp), %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$1, -124(%rbp)
	jmp	.L116
.L117:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L116:
	cmpl	$11, -124(%rbp)
	ja	.L117
	addl	$1, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L118
	movl	-124(%rbp), %eax
	movq	.L130(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L130:
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L125
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.quad	.L129
	.text
.L129:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L128:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L127:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L126:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L125:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L124:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L123:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L122:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L121:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L120:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L119:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L118:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L133
.L131:
	movq	$0, -88(%rbp)
	jmp	.L133
.L136:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	jne	.L134
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L115
.L134:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L133
.L135:
	movq	$0, -88(%rbp)
.L133:
	cmpq	$0, -88(%rbp)
	jne	.L136
.L115:
	cmpq	$0, -88(%rbp)
	je	.L137
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L137
.L138:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L139
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L139:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L141
.L140:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L141:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L142:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L143
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L143:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L144:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L145:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L137:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movl	$-1, %edi
	call	exit
.L147:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	movl	$-1, %edi
	call	exit
.L148:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L149
.L146:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L149:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$1, -112(%rbp)
	jmp	.L150
.L151:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L150:
	cmpl	$11, -112(%rbp)
	ja	.L151
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L152
	movl	-112(%rbp), %eax
	movq	.L164(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L164:
	.quad	.L152
	.quad	.L153
	.quad	.L154
	.quad	.L155
	.quad	.L156
	.quad	.L157
	.quad	.L158
	.quad	.L159
	.quad	.L160
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.text
.L163:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L162:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L161:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L160:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L159:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L158:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L157:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L156:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L155:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L154:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L153:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L152:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L165:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L166
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L166
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L167
	movl	$-1, %edi
	call	exit
.L167:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L168
	movl	$1, %eax
	jmp	.L169
.L168:
	movl	$0, %eax
.L169:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L170
.L175:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L171
.L174:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L172
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L172:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L173:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L171:
	cmpq	$0, -64(%rbp)
	jne	.L174
	addl	$1, -108(%rbp)
.L170:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L175
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L176
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L177
.L176:
	movl	$0, %eax
.L177:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L166
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L166:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	addItem_int8, .-addItem_int8
	.globl	findItem_int8
	.type	findItem_int8, @function
findItem_int8:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L180
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L181
.L182:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L181:
	cmpl	$11, -24(%rbp)
	ja	.L182
	addl	$1, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L183
	movl	-24(%rbp), %eax
	movq	.L195(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L195:
	.quad	.L183
	.quad	.L184
	.quad	.L185
	.quad	.L186
	.quad	.L187
	.quad	.L188
	.quad	.L189
	.quad	.L190
	.quad	.L191
	.quad	.L192
	.quad	.L193
	.quad	.L194
	.text
.L194:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L193:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L192:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L191:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L190:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L189:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L188:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L187:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L186:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L185:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L184:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L183:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L198
.L196:
	movq	$0, -16(%rbp)
	jmp	.L198
.L201:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	jne	.L199
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %edx
	leaq	-60(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L180
.L199:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L198
.L200:
	movq	$0, -16(%rbp)
.L198:
	cmpq	$0, -16(%rbp)
	jne	.L201
.L180:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	findItem_int8, .-findItem_int8
	.globl	deleteItem_int8
	.type	deleteItem_int8, @function
deleteItem_int8:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L204
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L205
.L204:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L206
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L206:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L207
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L208
.L207:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L208:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L209:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L210
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L210:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L211:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L212
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L212:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L205:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	deleteItem_int8, .-deleteItem_int8
	.globl	countItems_int8
	.type	countItems_int8, @function
countItems_int8:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L215
.L214:
	movl	$0, %eax
.L215:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	countItems_int8, .-countItems_int8
	.globl	getFirst_int8
	.type	getFirst_int8, @function
getFirst_int8:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	getFirst_int8, .-getFirst_int8
	.globl	getNext_int8
	.type	getNext_int8, @function
getNext_int8:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	getNext_int8, .-getNext_int8
	.globl	getPrev_int8
	.type	getPrev_int8, @function
getPrev_int8:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	getPrev_int8, .-getPrev_int8
	.globl	createNewHashTable_int16
	.type	createNewHashTable_int16, @function
createNewHashTable_int16:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	createNewHashTable_int16, .-createNewHashTable_int16
	.globl	addItem_int16
	.type	addItem_int16, @function
addItem_int16:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, %eax
	movq	%rdx, -168(%rbp)
	movw	%ax, -156(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	-156(%rbp), %edx
	movw	%dx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$2, -124(%rbp)
	jmp	.L227
.L228:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L227:
	cmpl	$11, -124(%rbp)
	ja	.L228
	addl	$2, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L229
	movl	-124(%rbp), %eax
	movq	.L241(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L241:
	.quad	.L229
	.quad	.L230
	.quad	.L231
	.quad	.L232
	.quad	.L233
	.quad	.L234
	.quad	.L235
	.quad	.L236
	.quad	.L237
	.quad	.L238
	.quad	.L239
	.quad	.L240
	.text
.L240:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L239:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L238:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L237:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L236:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L235:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L234:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L233:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L232:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L231:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L230:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L229:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L242
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L244
.L242:
	movq	$0, -88(%rbp)
	jmp	.L244
.L247:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L245
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L226
.L245:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L246
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L244
.L246:
	movq	$0, -88(%rbp)
.L244:
	cmpq	$0, -88(%rbp)
	jne	.L247
.L226:
	cmpq	$0, -88(%rbp)
	je	.L248
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L249
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L249
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L248
.L249:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L250
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L250:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L252
.L251:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L252:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L253
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L253:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L254
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L254:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L255:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L256
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L256:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L248:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$2, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movl	$-1, %edi
	call	exit
.L258:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L259
	movl	$-1, %edi
	call	exit
.L259:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L260
.L257:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L260:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$2, -112(%rbp)
	jmp	.L261
.L262:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L261:
	cmpl	$11, -112(%rbp)
	ja	.L262
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	2(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L263
	movl	-112(%rbp), %eax
	movq	.L275(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L275:
	.quad	.L263
	.quad	.L264
	.quad	.L265
	.quad	.L266
	.quad	.L267
	.quad	.L268
	.quad	.L269
	.quad	.L270
	.quad	.L271
	.quad	.L272
	.quad	.L273
	.quad	.L274
	.text
.L274:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L273:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L272:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L271:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L270:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L269:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L268:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L267:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L266:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L265:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L264:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L263:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L276:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L277
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L277
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L278
	movl	$-1, %edi
	call	exit
.L278:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L279
	movl	$1, %eax
	jmp	.L280
.L279:
	movl	$0, %eax
.L280:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L281
.L286:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L282
.L285:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L283
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L283:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L284
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L284:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L282:
	cmpq	$0, -64(%rbp)
	jne	.L285
	addl	$1, -108(%rbp)
.L281:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L286
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L287
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L288
.L287:
	movl	$0, %eax
.L288:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L277
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L277:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	addItem_int16, .-addItem_int16
	.globl	findItem_int16
	.type	findItem_int16, @function
findItem_int16:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movw	%ax, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L291
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$2, -24(%rbp)
	jmp	.L292
.L293:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L292:
	cmpl	$11, -24(%rbp)
	ja	.L293
	addl	$2, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L294
	movl	-24(%rbp), %eax
	movq	.L306(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L306:
	.quad	.L294
	.quad	.L295
	.quad	.L296
	.quad	.L297
	.quad	.L298
	.quad	.L299
	.quad	.L300
	.quad	.L301
	.quad	.L302
	.quad	.L303
	.quad	.L304
	.quad	.L305
	.text
.L305:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L304:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L303:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L302:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L301:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L300:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L299:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L298:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L297:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L296:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L295:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L294:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L307
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L309
.L307:
	movq	$0, -16(%rbp)
	jmp	.L309
.L312:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L310
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L291
.L310:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L311
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L309
.L311:
	movq	$0, -16(%rbp)
.L309:
	cmpq	$0, -16(%rbp)
	jne	.L312
.L291:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	findItem_int16, .-findItem_int16
	.globl	deleteItem_int16
	.type	deleteItem_int16, @function
deleteItem_int16:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L315
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L315
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L316
.L315:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L317
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L317:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L318
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L319
.L318:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L319:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L320
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L320:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L321
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L321:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L322
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L322:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L323
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L323:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L316:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	deleteItem_int16, .-deleteItem_int16
	.globl	countItems_int16
	.type	countItems_int16, @function
countItems_int16:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L325
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L326
.L325:
	movl	$0, %eax
.L326:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	countItems_int16, .-countItems_int16
	.globl	getFirst_int16
	.type	getFirst_int16, @function
getFirst_int16:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	getFirst_int16, .-getFirst_int16
	.globl	getNext_int16
	.type	getNext_int16, @function
getNext_int16:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	getNext_int16, .-getNext_int16
	.globl	getPrev_int16
	.type	getPrev_int16, @function
getPrev_int16:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	getPrev_int16, .-getPrev_int16
	.globl	createNewHashTable_int32
	.type	createNewHashTable_int32, @function
createNewHashTable_int32:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	createNewHashTable_int32, .-createNewHashTable_int32
	.globl	addItem_int32
	.type	addItem_int32, @function
addItem_int32:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-156(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L337
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$4, -124(%rbp)
	jmp	.L338
.L339:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L338:
	cmpl	$11, -124(%rbp)
	ja	.L339
	addl	$4, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L340
	movl	-124(%rbp), %eax
	movq	.L352(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L352:
	.quad	.L340
	.quad	.L341
	.quad	.L342
	.quad	.L343
	.quad	.L344
	.quad	.L345
	.quad	.L346
	.quad	.L347
	.quad	.L348
	.quad	.L349
	.quad	.L350
	.quad	.L351
	.text
.L351:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L350:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L349:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L348:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L347:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L346:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L345:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L344:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L343:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L342:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L341:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L340:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L353
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L355
.L353:
	movq	$0, -88(%rbp)
	jmp	.L355
.L358:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L356
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L337
.L356:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L357
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L355
.L357:
	movq	$0, -88(%rbp)
.L355:
	cmpq	$0, -88(%rbp)
	jne	.L358
.L337:
	cmpq	$0, -88(%rbp)
	je	.L359
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L360
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L360
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L359
.L360:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L361
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L361:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L362
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L363
.L362:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L363:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L364
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L364:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L365
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L365:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L366
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L366:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L367
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L367:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L359:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$4, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L368
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L369
	movl	$-1, %edi
	call	exit
.L369:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L370
	movl	$-1, %edi
	call	exit
.L370:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L371
.L368:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L371:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$4, -112(%rbp)
	jmp	.L372
.L373:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L372:
	cmpl	$11, -112(%rbp)
	ja	.L373
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L374
	movl	-112(%rbp), %eax
	movq	.L386(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L386:
	.quad	.L374
	.quad	.L375
	.quad	.L376
	.quad	.L377
	.quad	.L378
	.quad	.L379
	.quad	.L380
	.quad	.L381
	.quad	.L382
	.quad	.L383
	.quad	.L384
	.quad	.L385
	.text
.L385:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L384:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L383:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L382:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L381:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L380:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L379:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L378:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L377:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L376:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L375:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L374:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L387
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L387:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L388
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L388
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L389
	movl	$-1, %edi
	call	exit
.L389:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L390
	movl	$1, %eax
	jmp	.L391
.L390:
	movl	$0, %eax
.L391:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L392
.L397:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L393
.L396:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L394
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L394:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L395
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L395:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L393:
	cmpq	$0, -64(%rbp)
	jne	.L396
	addl	$1, -108(%rbp)
.L392:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L397
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L398
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L399
.L398:
	movl	$0, %eax
.L399:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L388
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L388:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	addItem_int32, .-addItem_int32
	.globl	findItem_int32
	.type	findItem_int32, @function
findItem_int32:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L402
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$4, -24(%rbp)
	jmp	.L403
.L404:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L403:
	cmpl	$11, -24(%rbp)
	ja	.L404
	addl	$4, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L405
	movl	-24(%rbp), %eax
	movq	.L417(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L417:
	.quad	.L405
	.quad	.L406
	.quad	.L407
	.quad	.L408
	.quad	.L409
	.quad	.L410
	.quad	.L411
	.quad	.L412
	.quad	.L413
	.quad	.L414
	.quad	.L415
	.quad	.L416
	.text
.L416:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L415:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L414:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L413:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L412:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L411:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L410:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L409:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L408:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L407:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L406:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L405:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L418
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L420
.L418:
	movq	$0, -16(%rbp)
	jmp	.L420
.L423:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L421
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L402
.L421:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L422
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L420
.L422:
	movq	$0, -16(%rbp)
.L420:
	cmpq	$0, -16(%rbp)
	jne	.L423
.L402:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	findItem_int32, .-findItem_int32
	.globl	deleteItem_int32
	.type	deleteItem_int32, @function
deleteItem_int32:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L426
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L426
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L427
.L426:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L428
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L428:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L429
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L430
.L429:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L430:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L431
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L431:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L432
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L432:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L433
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L433:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L434
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L434:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L427:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	deleteItem_int32, .-deleteItem_int32
	.globl	countItems_int32
	.type	countItems_int32, @function
countItems_int32:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L436
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L437
.L436:
	movl	$0, %eax
.L437:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	countItems_int32, .-countItems_int32
	.globl	getFirst_int32
	.type	getFirst_int32, @function
getFirst_int32:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	getFirst_int32, .-getFirst_int32
	.globl	getNext_int32
	.type	getNext_int32, @function
getNext_int32:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	getNext_int32, .-getNext_int32
	.globl	getPrev_int32
	.type	getPrev_int32, @function
getPrev_int32:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	getPrev_int32, .-getPrev_int32
	.globl	createNewHashTable_int64
	.type	createNewHashTable_int64, @function
createNewHashTable_int64:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	createNewHashTable_int64, .-createNewHashTable_int64
	.globl	addItem_int64
	.type	addItem_int64, @function
addItem_int64:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L448
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$8, -124(%rbp)
	jmp	.L449
.L450:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L449:
	cmpl	$11, -124(%rbp)
	ja	.L450
	addl	$8, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L451
	movl	-124(%rbp), %eax
	movq	.L463(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L463:
	.quad	.L451
	.quad	.L452
	.quad	.L453
	.quad	.L454
	.quad	.L455
	.quad	.L456
	.quad	.L457
	.quad	.L458
	.quad	.L459
	.quad	.L460
	.quad	.L461
	.quad	.L462
	.text
.L462:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L461:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L460:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L459:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L458:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L457:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L456:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L455:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L454:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L453:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L452:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L451:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L464
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L466
.L464:
	movq	$0, -88(%rbp)
	jmp	.L466
.L469:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L467
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L448
.L467:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L468
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L466
.L468:
	movq	$0, -88(%rbp)
.L466:
	cmpq	$0, -88(%rbp)
	jne	.L469
.L448:
	cmpq	$0, -88(%rbp)
	je	.L470
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L471
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L471
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L470
.L471:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L472
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L472:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L473
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L474
.L473:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L474:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L475
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L475:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L476
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L476:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L477
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L477:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L478
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L478:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L470:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L479
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L480
	movl	$-1, %edi
	call	exit
.L480:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L481
	movl	$-1, %edi
	call	exit
.L481:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L482
.L479:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L482:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$8, -112(%rbp)
	jmp	.L483
.L484:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L483:
	cmpl	$11, -112(%rbp)
	ja	.L484
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L485
	movl	-112(%rbp), %eax
	movq	.L497(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L497:
	.quad	.L485
	.quad	.L486
	.quad	.L487
	.quad	.L488
	.quad	.L489
	.quad	.L490
	.quad	.L491
	.quad	.L492
	.quad	.L493
	.quad	.L494
	.quad	.L495
	.quad	.L496
	.text
.L496:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L495:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L494:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L493:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L492:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L491:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L490:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L489:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L488:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L487:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L486:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L485:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L498
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L498:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L499
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L499
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L500
	movl	$-1, %edi
	call	exit
.L500:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L501
	movl	$1, %eax
	jmp	.L502
.L501:
	movl	$0, %eax
.L502:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L503
.L508:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L504
.L507:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L505
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L505:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L506
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L506:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L504:
	cmpq	$0, -64(%rbp)
	jne	.L507
	addl	$1, -108(%rbp)
.L503:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L508
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L509
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L510
.L509:
	movl	$0, %eax
.L510:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L499
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L499:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	addItem_int64, .-addItem_int64
	.globl	findItem_int64
	.type	findItem_int64, @function
findItem_int64:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L513
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$8, -24(%rbp)
	jmp	.L514
.L515:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L514:
	cmpl	$11, -24(%rbp)
	ja	.L515
	addl	$8, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L516
	movl	-24(%rbp), %eax
	movq	.L528(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L528:
	.quad	.L516
	.quad	.L517
	.quad	.L518
	.quad	.L519
	.quad	.L520
	.quad	.L521
	.quad	.L522
	.quad	.L523
	.quad	.L524
	.quad	.L525
	.quad	.L526
	.quad	.L527
	.text
.L527:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L526:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L525:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L524:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L523:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L522:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L521:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L520:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L519:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L518:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L517:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L516:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L529
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L531
.L529:
	movq	$0, -16(%rbp)
	jmp	.L531
.L534:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L532
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L513
.L532:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L533
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L531
.L533:
	movq	$0, -16(%rbp)
.L531:
	cmpq	$0, -16(%rbp)
	jne	.L534
.L513:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	findItem_int64, .-findItem_int64
	.globl	deleteItem_int64
	.type	deleteItem_int64, @function
deleteItem_int64:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L537
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L537
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L538
.L537:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L539
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L539:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L540
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L541
.L540:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L541:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L542
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L542:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L543
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L543:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L544
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L544:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L545
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L545:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L538:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	deleteItem_int64, .-deleteItem_int64
	.globl	countItems_int64
	.type	countItems_int64, @function
countItems_int64:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L547
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L548
.L547:
	movl	$0, %eax
.L548:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	countItems_int64, .-countItems_int64
	.globl	getFirst_int64
	.type	getFirst_int64, @function
getFirst_int64:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	getFirst_int64, .-getFirst_int64
	.globl	getNext_int64
	.type	getNext_int64, @function
getNext_int64:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	getNext_int64, .-getNext_int64
	.globl	getPrev_int64
	.type	getPrev_int64, @function
getPrev_int64:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	getPrev_int64, .-getPrev_int64
	.globl	createNewHashTable_uint
	.type	createNewHashTable_uint, @function
createNewHashTable_uint:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	createNewHashTable_uint, .-createNewHashTable_uint
	.globl	addItem_uint
	.type	addItem_uint, @function
addItem_uint:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-156(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L559
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$4, -124(%rbp)
	jmp	.L560
.L561:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L560:
	cmpl	$11, -124(%rbp)
	ja	.L561
	addl	$4, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L562
	movl	-124(%rbp), %eax
	movq	.L574(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L574:
	.quad	.L562
	.quad	.L563
	.quad	.L564
	.quad	.L565
	.quad	.L566
	.quad	.L567
	.quad	.L568
	.quad	.L569
	.quad	.L570
	.quad	.L571
	.quad	.L572
	.quad	.L573
	.text
.L573:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L572:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L571:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L570:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L569:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L568:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L567:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L566:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L565:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L564:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L563:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L562:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L575
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L577
.L575:
	movq	$0, -88(%rbp)
	jmp	.L577
.L580:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L578
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L559
.L578:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L579
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L577
.L579:
	movq	$0, -88(%rbp)
.L577:
	cmpq	$0, -88(%rbp)
	jne	.L580
.L559:
	cmpq	$0, -88(%rbp)
	je	.L581
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L582
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L582
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L581
.L582:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L583
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L583:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L584
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L585
.L584:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L585:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L586
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L586:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L587
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L587:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L588:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L589
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L589:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L581:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$4, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L590
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L591
	movl	$-1, %edi
	call	exit
.L591:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L592
	movl	$-1, %edi
	call	exit
.L592:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L593
.L590:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L593:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$4, -112(%rbp)
	jmp	.L594
.L595:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L594:
	cmpl	$11, -112(%rbp)
	ja	.L595
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L596
	movl	-112(%rbp), %eax
	movq	.L608(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L608:
	.quad	.L596
	.quad	.L597
	.quad	.L598
	.quad	.L599
	.quad	.L600
	.quad	.L601
	.quad	.L602
	.quad	.L603
	.quad	.L604
	.quad	.L605
	.quad	.L606
	.quad	.L607
	.text
.L607:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L606:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L605:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L604:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L603:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L602:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L601:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L600:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L599:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L598:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L597:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L596:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L609
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L609:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L610
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L610
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L611
	movl	$-1, %edi
	call	exit
.L611:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L612
	movl	$1, %eax
	jmp	.L613
.L612:
	movl	$0, %eax
.L613:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L614
.L619:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L615
.L618:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L616
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L616:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L617
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L617:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L615:
	cmpq	$0, -64(%rbp)
	jne	.L618
	addl	$1, -108(%rbp)
.L614:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L619
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L620
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L621
.L620:
	movl	$0, %eax
.L621:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L610
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L610:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	addItem_uint, .-addItem_uint
	.globl	findItem_uint
	.type	findItem_uint, @function
findItem_uint:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L624
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$4, -24(%rbp)
	jmp	.L625
.L626:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L625:
	cmpl	$11, -24(%rbp)
	ja	.L626
	addl	$4, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L627
	movl	-24(%rbp), %eax
	movq	.L639(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L639:
	.quad	.L627
	.quad	.L628
	.quad	.L629
	.quad	.L630
	.quad	.L631
	.quad	.L632
	.quad	.L633
	.quad	.L634
	.quad	.L635
	.quad	.L636
	.quad	.L637
	.quad	.L638
	.text
.L638:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L637:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L636:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L635:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L634:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L633:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L632:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L631:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L630:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L629:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L628:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L627:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L640
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L642
.L640:
	movq	$0, -16(%rbp)
	jmp	.L642
.L645:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L643
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L624
.L643:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L644
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L642
.L644:
	movq	$0, -16(%rbp)
.L642:
	cmpq	$0, -16(%rbp)
	jne	.L645
.L624:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	findItem_uint, .-findItem_uint
	.globl	deleteItem_uint
	.type	deleteItem_uint, @function
deleteItem_uint:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L648
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L648
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L649
.L648:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L650
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L650:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L651
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L652
.L651:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L652:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L653
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L653:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L654
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L654:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L655
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L655:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L656
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L656:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L649:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	deleteItem_uint, .-deleteItem_uint
	.globl	countItems_uint
	.type	countItems_uint, @function
countItems_uint:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L658
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L659
.L658:
	movl	$0, %eax
.L659:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	countItems_uint, .-countItems_uint
	.globl	getFirst_uint
	.type	getFirst_uint, @function
getFirst_uint:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	getFirst_uint, .-getFirst_uint
	.globl	getNext_uint
	.type	getNext_uint, @function
getNext_uint:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	getNext_uint, .-getNext_uint
	.globl	getPrev_uint
	.type	getPrev_uint, @function
getPrev_uint:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	getPrev_uint, .-getPrev_uint
	.globl	createNewHashTable_uint8
	.type	createNewHashTable_uint8, @function
createNewHashTable_uint8:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	createNewHashTable_uint8, .-createNewHashTable_uint8
	.globl	addItem_uint8
	.type	addItem_uint8, @function
addItem_uint8:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, %eax
	movq	%rdx, -168(%rbp)
	movb	%al, -156(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	-156(%rbp), %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L670
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$1, -124(%rbp)
	jmp	.L671
.L672:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L671:
	cmpl	$11, -124(%rbp)
	ja	.L672
	addl	$1, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L673
	movl	-124(%rbp), %eax
	movq	.L685(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L685:
	.quad	.L673
	.quad	.L674
	.quad	.L675
	.quad	.L676
	.quad	.L677
	.quad	.L678
	.quad	.L679
	.quad	.L680
	.quad	.L681
	.quad	.L682
	.quad	.L683
	.quad	.L684
	.text
.L684:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L683:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L682:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L681:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L680:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L679:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L678:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L677:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L676:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L675:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L674:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L673:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L686
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L688
.L686:
	movq	$0, -88(%rbp)
	jmp	.L688
.L691:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	jne	.L689
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L670
.L689:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L690
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L688
.L690:
	movq	$0, -88(%rbp)
.L688:
	cmpq	$0, -88(%rbp)
	jne	.L691
.L670:
	cmpq	$0, -88(%rbp)
	je	.L692
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L693
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L693
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L692
.L693:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L694
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L694:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L695
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L696
.L695:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L696:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L697
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L697:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L698
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L698:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L699
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L699:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L700
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L700:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L692:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L701
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L702
	movl	$-1, %edi
	call	exit
.L702:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L703
	movl	$-1, %edi
	call	exit
.L703:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L704
.L701:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L704:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$1, -112(%rbp)
	jmp	.L705
.L706:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L705:
	cmpl	$11, -112(%rbp)
	ja	.L706
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L707
	movl	-112(%rbp), %eax
	movq	.L719(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L719:
	.quad	.L707
	.quad	.L708
	.quad	.L709
	.quad	.L710
	.quad	.L711
	.quad	.L712
	.quad	.L713
	.quad	.L714
	.quad	.L715
	.quad	.L716
	.quad	.L717
	.quad	.L718
	.text
.L718:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L717:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L716:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L715:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L714:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L713:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L712:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L711:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L710:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L709:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L708:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L707:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L720
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L720:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L721
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L721
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L722
	movl	$-1, %edi
	call	exit
.L722:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L723
	movl	$1, %eax
	jmp	.L724
.L723:
	movl	$0, %eax
.L724:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L725
.L730:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L726
.L729:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L727
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L727:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L728
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L728:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L726:
	cmpq	$0, -64(%rbp)
	jne	.L729
	addl	$1, -108(%rbp)
.L725:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L730
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L731
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L732
.L731:
	movl	$0, %eax
.L732:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L721
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L721:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	addItem_uint8, .-addItem_uint8
	.globl	findItem_uint8
	.type	findItem_uint8, @function
findItem_uint8:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L735
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L736
.L737:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L736:
	cmpl	$11, -24(%rbp)
	ja	.L737
	addl	$1, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L738
	movl	-24(%rbp), %eax
	movq	.L750(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L750:
	.quad	.L738
	.quad	.L739
	.quad	.L740
	.quad	.L741
	.quad	.L742
	.quad	.L743
	.quad	.L744
	.quad	.L745
	.quad	.L746
	.quad	.L747
	.quad	.L748
	.quad	.L749
	.text
.L749:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L748:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L747:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L746:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L745:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L744:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L743:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L742:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L741:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L740:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L739:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L738:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L751
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L753
.L751:
	movq	$0, -16(%rbp)
	jmp	.L753
.L756:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	jne	.L754
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %edx
	leaq	-60(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L735
.L754:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L755
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L753
.L755:
	movq	$0, -16(%rbp)
.L753:
	cmpq	$0, -16(%rbp)
	jne	.L756
.L735:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	findItem_uint8, .-findItem_uint8
	.globl	deleteItem_uint8
	.type	deleteItem_uint8, @function
deleteItem_uint8:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L759
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L759
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L760
.L759:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L761
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L761:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L762
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L763
.L762:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L763:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L764
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L764:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L765
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L765:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L766
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L766:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L767
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L767:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L760:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	deleteItem_uint8, .-deleteItem_uint8
	.globl	countItems_uint8
	.type	countItems_uint8, @function
countItems_uint8:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L769
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L770
.L769:
	movl	$0, %eax
.L770:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	countItems_uint8, .-countItems_uint8
	.globl	getFirst_uint8
	.type	getFirst_uint8, @function
getFirst_uint8:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	getFirst_uint8, .-getFirst_uint8
	.globl	getNext_uint8
	.type	getNext_uint8, @function
getNext_uint8:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	getNext_uint8, .-getNext_uint8
	.globl	getPrev_uint8
	.type	getPrev_uint8, @function
getPrev_uint8:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	getPrev_uint8, .-getPrev_uint8
	.globl	createNewHashTable_uint16
	.type	createNewHashTable_uint16, @function
createNewHashTable_uint16:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	createNewHashTable_uint16, .-createNewHashTable_uint16
	.globl	addItem_uint16
	.type	addItem_uint16, @function
addItem_uint16:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, %eax
	movq	%rdx, -168(%rbp)
	movw	%ax, -156(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzwl	-156(%rbp), %edx
	movw	%dx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L781
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$2, -124(%rbp)
	jmp	.L782
.L783:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L782:
	cmpl	$11, -124(%rbp)
	ja	.L783
	addl	$2, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L784
	movl	-124(%rbp), %eax
	movq	.L796(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L796:
	.quad	.L784
	.quad	.L785
	.quad	.L786
	.quad	.L787
	.quad	.L788
	.quad	.L789
	.quad	.L790
	.quad	.L791
	.quad	.L792
	.quad	.L793
	.quad	.L794
	.quad	.L795
	.text
.L795:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L794:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L793:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L792:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L791:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L790:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L789:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L788:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L787:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L786:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L785:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L784:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L797
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L799
.L797:
	movq	$0, -88(%rbp)
	jmp	.L799
.L802:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L800
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L781
.L800:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L801
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L799
.L801:
	movq	$0, -88(%rbp)
.L799:
	cmpq	$0, -88(%rbp)
	jne	.L802
.L781:
	cmpq	$0, -88(%rbp)
	je	.L803
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L804
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L804
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L803
.L804:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L805
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L805:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L806
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L807
.L806:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L807:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L808
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L808:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L809
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L809:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L810
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L810:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L811
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L811:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L803:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$2, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L812
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L813
	movl	$-1, %edi
	call	exit
.L813:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L814
	movl	$-1, %edi
	call	exit
.L814:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L815
.L812:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L815:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$2, -112(%rbp)
	jmp	.L816
.L817:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L816:
	cmpl	$11, -112(%rbp)
	ja	.L817
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	2(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L818
	movl	-112(%rbp), %eax
	movq	.L830(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L830:
	.quad	.L818
	.quad	.L819
	.quad	.L820
	.quad	.L821
	.quad	.L822
	.quad	.L823
	.quad	.L824
	.quad	.L825
	.quad	.L826
	.quad	.L827
	.quad	.L828
	.quad	.L829
	.text
.L829:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L828:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L827:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L826:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L825:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L824:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L823:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L822:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L821:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L820:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L819:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L818:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L831
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L831:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L832
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L832
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L833
	movl	$-1, %edi
	call	exit
.L833:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L834
	movl	$1, %eax
	jmp	.L835
.L834:
	movl	$0, %eax
.L835:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L836
.L841:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L837
.L840:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L838
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L838:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L839
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L839:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L837:
	cmpq	$0, -64(%rbp)
	jne	.L840
	addl	$1, -108(%rbp)
.L836:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L841
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L842
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L843
.L842:
	movl	$0, %eax
.L843:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L832
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L832:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	addItem_uint16, .-addItem_uint16
	.globl	findItem_uint16
	.type	findItem_uint16, @function
findItem_uint16:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movw	%ax, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L846
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$2, -24(%rbp)
	jmp	.L847
.L848:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L847:
	cmpl	$11, -24(%rbp)
	ja	.L848
	addl	$2, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L849
	movl	-24(%rbp), %eax
	movq	.L861(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L861:
	.quad	.L849
	.quad	.L850
	.quad	.L851
	.quad	.L852
	.quad	.L853
	.quad	.L854
	.quad	.L855
	.quad	.L856
	.quad	.L857
	.quad	.L858
	.quad	.L859
	.quad	.L860
	.text
.L860:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L859:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L858:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L857:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L856:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L855:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L854:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L853:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L852:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L851:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L850:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L849:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L862
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L864
.L862:
	movq	$0, -16(%rbp)
	jmp	.L864
.L867:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L865
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L846
.L865:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L866
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L864
.L866:
	movq	$0, -16(%rbp)
.L864:
	cmpq	$0, -16(%rbp)
	jne	.L867
.L846:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	findItem_uint16, .-findItem_uint16
	.globl	deleteItem_uint16
	.type	deleteItem_uint16, @function
deleteItem_uint16:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L870
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L870
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L871
.L870:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L872
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L872:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L873
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L874
.L873:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L874:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L875
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L875:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L876
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L876:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L877
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L877:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L878
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L878:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L871:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	deleteItem_uint16, .-deleteItem_uint16
	.globl	countItems_uint16
	.type	countItems_uint16, @function
countItems_uint16:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L880
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L881
.L880:
	movl	$0, %eax
.L881:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	countItems_uint16, .-countItems_uint16
	.globl	getFirst_uint16
	.type	getFirst_uint16, @function
getFirst_uint16:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	getFirst_uint16, .-getFirst_uint16
	.globl	getNext_uint16
	.type	getNext_uint16, @function
getNext_uint16:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	getNext_uint16, .-getNext_uint16
	.globl	getPrev_uint16
	.type	getPrev_uint16, @function
getPrev_uint16:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	getPrev_uint16, .-getPrev_uint16
	.globl	createNewHashTable_uint32
	.type	createNewHashTable_uint32, @function
createNewHashTable_uint32:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	createNewHashTable_uint32, .-createNewHashTable_uint32
	.globl	addItem_uint32
	.type	addItem_uint32, @function
addItem_uint32:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-156(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L892
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$4, -124(%rbp)
	jmp	.L893
.L894:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L893:
	cmpl	$11, -124(%rbp)
	ja	.L894
	addl	$4, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L895
	movl	-124(%rbp), %eax
	movq	.L907(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L907:
	.quad	.L895
	.quad	.L896
	.quad	.L897
	.quad	.L898
	.quad	.L899
	.quad	.L900
	.quad	.L901
	.quad	.L902
	.quad	.L903
	.quad	.L904
	.quad	.L905
	.quad	.L906
	.text
.L906:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L905:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L904:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L903:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L902:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L901:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L900:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L899:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L898:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L897:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L896:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L895:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L908
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L910
.L908:
	movq	$0, -88(%rbp)
	jmp	.L910
.L913:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L911
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L892
.L911:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L912
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L910
.L912:
	movq	$0, -88(%rbp)
.L910:
	cmpq	$0, -88(%rbp)
	jne	.L913
.L892:
	cmpq	$0, -88(%rbp)
	je	.L914
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L915
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L915
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L914
.L915:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L916
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L916:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L917
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L918
.L917:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L918:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L919
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L919:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L920
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L920:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L921
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L921:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L922
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L922:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L914:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$4, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L923
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L924
	movl	$-1, %edi
	call	exit
.L924:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L925
	movl	$-1, %edi
	call	exit
.L925:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L926
.L923:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L926:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$4, -112(%rbp)
	jmp	.L927
.L928:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L927:
	cmpl	$11, -112(%rbp)
	ja	.L928
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L929
	movl	-112(%rbp), %eax
	movq	.L941(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L941:
	.quad	.L929
	.quad	.L930
	.quad	.L931
	.quad	.L932
	.quad	.L933
	.quad	.L934
	.quad	.L935
	.quad	.L936
	.quad	.L937
	.quad	.L938
	.quad	.L939
	.quad	.L940
	.text
.L940:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L939:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L938:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L937:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L936:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L935:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L934:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L933:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L932:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L931:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L930:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L929:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L942
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L942:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L943
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L943
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L944
	movl	$-1, %edi
	call	exit
.L944:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L945
	movl	$1, %eax
	jmp	.L946
.L945:
	movl	$0, %eax
.L946:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L947
.L952:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L948
.L951:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L949
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L949:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L950
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L950:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L948:
	cmpq	$0, -64(%rbp)
	jne	.L951
	addl	$1, -108(%rbp)
.L947:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L952
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L953
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L954
.L953:
	movl	$0, %eax
.L954:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L943
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L943:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	addItem_uint32, .-addItem_uint32
	.globl	findItem_uint32
	.type	findItem_uint32, @function
findItem_uint32:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L957
	leaq	-60(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$4, -24(%rbp)
	jmp	.L958
.L959:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L958:
	cmpl	$11, -24(%rbp)
	ja	.L959
	addl	$4, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L960
	movl	-24(%rbp), %eax
	movq	.L972(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L972:
	.quad	.L960
	.quad	.L961
	.quad	.L962
	.quad	.L963
	.quad	.L964
	.quad	.L965
	.quad	.L966
	.quad	.L967
	.quad	.L968
	.quad	.L969
	.quad	.L970
	.quad	.L971
	.text
.L971:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L970:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L969:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L968:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L967:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L966:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L965:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L964:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L963:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L962:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L961:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L960:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L973
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L975
.L973:
	movq	$0, -16(%rbp)
	jmp	.L975
.L978:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L976
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-60(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L957
.L976:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L977
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L975
.L977:
	movq	$0, -16(%rbp)
.L975:
	cmpq	$0, -16(%rbp)
	jne	.L978
.L957:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	findItem_uint32, .-findItem_uint32
	.globl	deleteItem_uint32
	.type	deleteItem_uint32, @function
deleteItem_uint32:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L981
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L981
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L982
.L981:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L983
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L983:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L984
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L985
.L984:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L985:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L986
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L986:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L987
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L987:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L988
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L988:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L989
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L989:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L982:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	deleteItem_uint32, .-deleteItem_uint32
	.globl	countItems_uint32
	.type	countItems_uint32, @function
countItems_uint32:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L991
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L992
.L991:
	movl	$0, %eax
.L992:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	countItems_uint32, .-countItems_uint32
	.globl	getFirst_uint32
	.type	getFirst_uint32, @function
getFirst_uint32:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	getFirst_uint32, .-getFirst_uint32
	.globl	getNext_uint32
	.type	getNext_uint32, @function
getNext_uint32:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	getNext_uint32, .-getNext_uint32
	.globl	getPrev_uint32
	.type	getPrev_uint32, @function
getPrev_uint32:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	getPrev_uint32, .-getPrev_uint32
	.globl	createNewHashTable_uint64
	.type	createNewHashTable_uint64, @function
createNewHashTable_uint64:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	createNewHashTable_uint64, .-createNewHashTable_uint64
	.globl	addItem_uint64
	.type	addItem_uint64, @function
addItem_uint64:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1003
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$8, -124(%rbp)
	jmp	.L1004
.L1005:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L1004:
	cmpl	$11, -124(%rbp)
	ja	.L1005
	addl	$8, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L1006
	movl	-124(%rbp), %eax
	movq	.L1018(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1018:
	.quad	.L1006
	.quad	.L1007
	.quad	.L1008
	.quad	.L1009
	.quad	.L1010
	.quad	.L1011
	.quad	.L1012
	.quad	.L1013
	.quad	.L1014
	.quad	.L1015
	.quad	.L1016
	.quad	.L1017
	.text
.L1017:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L1016:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L1015:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L1014:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L1013:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L1012:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L1011:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L1010:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L1009:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L1008:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L1007:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L1006:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1019
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L1021
.L1019:
	movq	$0, -88(%rbp)
	jmp	.L1021
.L1024:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L1022
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L1003
.L1022:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L1023
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L1021
.L1023:
	movq	$0, -88(%rbp)
.L1021:
	cmpq	$0, -88(%rbp)
	jne	.L1024
.L1003:
	cmpq	$0, -88(%rbp)
	je	.L1025
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1026
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L1026
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L1025
.L1026:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L1027
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L1027:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1028
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L1029
.L1028:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L1029:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1030
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L1030:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1031
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L1031:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1032
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L1032:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1033
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L1033:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L1025:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1034
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L1035
	movl	$-1, %edi
	call	exit
.L1035:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1036
	movl	$-1, %edi
	call	exit
.L1036:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L1037
.L1034:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L1037:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$8, -112(%rbp)
	jmp	.L1038
.L1039:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L1038:
	cmpl	$11, -112(%rbp)
	ja	.L1039
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L1040
	movl	-112(%rbp), %eax
	movq	.L1052(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1052:
	.quad	.L1040
	.quad	.L1041
	.quad	.L1042
	.quad	.L1043
	.quad	.L1044
	.quad	.L1045
	.quad	.L1046
	.quad	.L1047
	.quad	.L1048
	.quad	.L1049
	.quad	.L1050
	.quad	.L1051
	.text
.L1051:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1050:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1049:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1048:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L1047:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L1046:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L1045:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L1044:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L1043:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L1042:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L1041:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L1040:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1053
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L1053:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L1054
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L1054
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1055
	movl	$-1, %edi
	call	exit
.L1055:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L1056
	movl	$1, %eax
	jmp	.L1057
.L1056:
	movl	$0, %eax
.L1057:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L1058
.L1063:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L1059
.L1062:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L1060
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L1060:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1061
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L1061:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L1059:
	cmpq	$0, -64(%rbp)
	jne	.L1062
	addl	$1, -108(%rbp)
.L1058:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L1063
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L1064
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L1065
.L1064:
	movl	$0, %eax
.L1065:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L1054
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L1054:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	addItem_uint64, .-addItem_uint64
	.globl	findItem_uint64
	.type	findItem_uint64, @function
findItem_uint64:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1068
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$8, -24(%rbp)
	jmp	.L1069
.L1070:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L1069:
	cmpl	$11, -24(%rbp)
	ja	.L1070
	addl	$8, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L1071
	movl	-24(%rbp), %eax
	movq	.L1083(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1083:
	.quad	.L1071
	.quad	.L1072
	.quad	.L1073
	.quad	.L1074
	.quad	.L1075
	.quad	.L1076
	.quad	.L1077
	.quad	.L1078
	.quad	.L1079
	.quad	.L1080
	.quad	.L1081
	.quad	.L1082
	.text
.L1082:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L1081:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L1080:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L1079:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L1078:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L1077:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L1076:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L1075:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L1074:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L1073:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L1072:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L1071:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1084
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L1086
.L1084:
	movq	$0, -16(%rbp)
	jmp	.L1086
.L1089:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L1087
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L1068
.L1087:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L1088
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L1086
.L1088:
	movq	$0, -16(%rbp)
.L1086:
	cmpq	$0, -16(%rbp)
	jne	.L1089
.L1068:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	findItem_uint64, .-findItem_uint64
	.globl	deleteItem_uint64
	.type	deleteItem_uint64, @function
deleteItem_uint64:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1092
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L1092
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L1093
.L1092:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L1094
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L1094:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1095
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L1096
.L1095:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L1096:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1097
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L1097:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L1098
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L1098:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1099
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L1099:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1100
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L1100:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L1093:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	deleteItem_uint64, .-deleteItem_uint64
	.globl	countItems_uint64
	.type	countItems_uint64, @function
countItems_uint64:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1102
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L1103
.L1102:
	movl	$0, %eax
.L1103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	countItems_uint64, .-countItems_uint64
	.globl	getFirst_uint64
	.type	getFirst_uint64, @function
getFirst_uint64:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	getFirst_uint64, .-getFirst_uint64
	.globl	getNext_uint64
	.type	getNext_uint64, @function
getNext_uint64:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	getNext_uint64, .-getNext_uint64
	.globl	getPrev_uint64
	.type	getPrev_uint64, @function
getPrev_uint64:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	getPrev_uint64, .-getPrev_uint64
	.globl	createNewHashTable_double
	.type	createNewHashTable_double, @function
createNewHashTable_double:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	createNewHashTable_double, .-createNewHashTable_double
	.globl	addItem_double
	.type	addItem_double, @function
addItem_double:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movl	$72, %edi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	$0, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1114
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$-17973521, -136(%rbp)
	movl	$-1640531527, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$8, -124(%rbp)
	jmp	.L1115
.L1116:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -132(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-80(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	addq	$12, -80(%rbp)
	subl	$12, -124(%rbp)
.L1115:
	cmpl	$11, -124(%rbp)
	ja	.L1116
	addl	$8, -136(%rbp)
	cmpl	$11, -124(%rbp)
	ja	.L1117
	movl	-124(%rbp), %eax
	movq	.L1129(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1129:
	.quad	.L1117
	.quad	.L1118
	.quad	.L1119
	.quad	.L1120
	.quad	.L1121
	.quad	.L1122
	.quad	.L1123
	.quad	.L1124
	.quad	.L1125
	.quad	.L1126
	.quad	.L1127
	.quad	.L1128
	.text
.L1128:
	movq	-80(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -136(%rbp)
.L1127:
	movq	-80(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -136(%rbp)
.L1126:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -136(%rbp)
.L1125:
	movq	-80(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L1124:
	movq	-80(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L1123:
	movq	-80(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L1122:
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -128(%rbp)
.L1121:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -132(%rbp)
.L1120:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -132(%rbp)
.L1119:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -132(%rbp)
.L1118:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -132(%rbp)
.L1117:
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -136(%rbp)
	movl	-128(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-136(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1130
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-104(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L1132
.L1130:
	movq	$0, -88(%rbp)
	jmp	.L1132
.L1135:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L1133
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L1114
.L1133:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L1134
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L1132
.L1134:
	movq	$0, -88(%rbp)
.L1132:
	cmpq	$0, -88(%rbp)
	jne	.L1135
.L1114:
	cmpq	$0, -88(%rbp)
	je	.L1136
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1137
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L1137
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L1136
.L1137:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jne	.L1138
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L1138:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1139
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L1140
.L1139:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
.L1140:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1141
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L1141:
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1142
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L1142:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1143
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L1143:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1144
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L1144:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L1136:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 64(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1145
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$64, %edi
	call	malloc
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L1146
	movl	$-1, %edi
	call	exit
.L1146:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1147
	movl	$-1, %edi
	call	exit
.L1147:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	jmp	.L1148
.L1145:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L1148:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	$-17973521, 68(%rax)
	movl	$-1640531527, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$8, -112(%rbp)
	jmp	.L1149
.L1150:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-72(%rbp), %rcx
	addq	$9, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rdx
	addq	$11, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	addq	$12, -72(%rbp)
	subl	$12, -112(%rbp)
.L1149:
	cmpl	$11, -112(%rbp)
	ja	.L1150
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	leal	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	cmpl	$11, -112(%rbp)
	ja	.L1151
	movl	-112(%rbp), %eax
	movq	.L1163(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1163:
	.quad	.L1151
	.quad	.L1152
	.quad	.L1153
	.quad	.L1154
	.quad	.L1155
	.quad	.L1156
	.quad	.L1157
	.quad	.L1158
	.quad	.L1159
	.quad	.L1160
	.quad	.L1161
	.quad	.L1162
	.text
.L1162:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$10, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1161:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1160:
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
.L1159:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -116(%rbp)
.L1158:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -116(%rbp)
.L1157:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -116(%rbp)
.L1156:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -116(%rbp)
.L1155:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L1154:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L1153:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L1152:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L1151:
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$13, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$12, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$5, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	-116(%rbp), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	shrl	$3, %eax
	xorl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-120(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edx
	subl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %eax
	movl	-116(%rbp), %edx
	shrl	$15, %edx
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-56(%rbp), %rax
	movl	68(%rax), %edx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1164
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L1164:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L1165
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L1165
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1166
	movl	$-1, %edi
	call	exit
.L1166:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L1167
	movl	$1, %eax
	jmp	.L1168
.L1167:
	movl	$0, %eax
.L1168:
	addl	%esi, %eax
	movl	%eax, 40(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -108(%rbp)
	jmp	.L1169
.L1174:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L1170
.L1173:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L1171
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	movl	%edx, -172(%rbp)
	movl	$0, %edx
	divl	-172(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L1171:
	movq	-64(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1172
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L1172:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L1170:
	cmpq	$0, -64(%rbp)
	jne	.L1173
	addl	$1, -108(%rbp)
.L1169:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	-108(%rbp), %eax
	ja	.L1174
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jbe	.L1175
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	addl	$1, %eax
	jmp	.L1176
.L1175:
	movl	$0, %eax
.L1176:
	movl	%eax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L1165
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L1165:
	movq	-88(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	addItem_double, .-addItem_double
	.globl	findItem_double
	.type	findItem_double, @function
findItem_double:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1179
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$8, -24(%rbp)
	jmp	.L1180
.L1181:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L1180:
	cmpl	$11, -24(%rbp)
	ja	.L1181
	addl	$8, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L1182
	movl	-24(%rbp), %eax
	movq	.L1194(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L1194:
	.quad	.L1182
	.quad	.L1183
	.quad	.L1184
	.quad	.L1185
	.quad	.L1186
	.quad	.L1187
	.quad	.L1188
	.quad	.L1189
	.quad	.L1190
	.quad	.L1191
	.quad	.L1192
	.quad	.L1193
	.text
.L1193:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L1192:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L1191:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L1190:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L1189:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L1188:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L1187:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L1186:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L1185:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L1184:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L1183:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L1182:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1195
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L1197
.L1195:
	movq	$0, -16(%rbp)
	jmp	.L1197
.L1200:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$8, %eax
	jne	.L1198
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L1179
.L1198:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L1199
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L1197
.L1199:
	movq	$0, -16(%rbp)
.L1197:
	cmpq	$0, -16(%rbp)
	jne	.L1200
.L1179:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	findItem_double, .-findItem_double
	.globl	deleteItem_double
	.type	deleteItem_double, @function
deleteItem_double:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1203
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L1203
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L1204
.L1203:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jne	.L1205
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L1205:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1206
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L1207
.L1206:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L1207:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1208
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L1208:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L1209
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L1209:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1210
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L1210:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L1211
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L1211:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L1204:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	deleteItem_double, .-deleteItem_double
	.globl	countItems_double
	.type	countItems_double, @function
countItems_double:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1213
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	jmp	.L1214
.L1213:
	movl	$0, %eax
.L1214:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	countItems_double, .-countItems_double
	.globl	getFirst_double
	.type	getFirst_double, @function
getFirst_double:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	getFirst_double, .-getFirst_double
	.globl	getNext_double
	.type	getNext_double, @function
getNext_double:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	getNext_double, .-getNext_double
	.globl	getPrev_double
	.type	getPrev_double, @function
getPrev_double:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	getPrev_double, .-getPrev_double
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
