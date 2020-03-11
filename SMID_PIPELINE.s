	.file	"dgemm_pipeline.c"
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4,,15
	.globl	_dgemm_pipeline
	.def	_dgemm_pipeline;	.scl	2;	.type	32;	.endef
_dgemm_pipeline:
LFB4755:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-32, %esp
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	testl	%edi, %edi
	jle	L10
	movl	12(%ebp), %eax
	leal	0(,%edi,8), %esi
	movl	$0, 16(%esp)
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
L6:
	movl	16(%ebp), %eax
	movl	12(%esp), %ebx
	movl	$0, 28(%esp)
	movl	%eax, 24(%esp)
	.p2align 4,,10
L7:
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	xorl	%edx, %edx
	vmovapd	(%ebx), %ymm4
	vmovapd	32(%ebx), %ymm3
	vmovapd	64(%ebx), %ymm2
	vmovapd	96(%ebx), %ymm1
	.p2align 4,,10
L4:
	vbroadcastsd	(%ecx), %ymm0
	addl	$1, %edx
	addl	$8, %ecx
	vmulpd	(%eax), %ymm0, %ymm5
	vaddpd	%ymm5, %ymm4, %ymm4
	vmulpd	32(%eax), %ymm0, %ymm5
	vaddpd	%ymm5, %ymm3, %ymm3
	vmulpd	64(%eax), %ymm0, %ymm5
	vmulpd	96(%eax), %ymm0, %ymm0
	addl	%esi, %eax
	cmpl	%edx, %edi
	vaddpd	%ymm5, %ymm2, %ymm2
	vaddpd	%ymm0, %ymm1, %ymm1
	jne	L4
	addl	$1, 28(%esp)
	vmovapd	%ymm4, (%ebx)
	addl	%esi, 24(%esp)
	movl	28(%esp), %eax
	vmovapd	%ymm3, 32(%ebx)
	vmovapd	%ymm2, 64(%ebx)
	vmovapd	%ymm1, 96(%ebx)
	addl	%esi, %ebx
	cmpl	%eax, %edi
	jne	L7
	addl	$16, 16(%esp)
	subl	$-128, 20(%esp)
	movl	16(%esp), %eax
	subl	$-128, 12(%esp)
	cmpl	%eax, %edi
	jg	L6
	vzeroupper
L10:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4755:
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.comm	_c, 4, 2
	.comm	_b, 4, 2
	.comm	_a, 4, 2
	.ident	"GCC: (GNU) 5.3.0"
