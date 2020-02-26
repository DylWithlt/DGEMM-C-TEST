	.file	"SMID_DGEMM.c"
	.intel_syntax noprefix
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4,,15
	.globl	_smid_dgemm
	.def	_smid_dgemm;	.scl	2;	.type	32;	.endef
_smid_dgemm:
LFB4755:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	and	esp, -32
	sub	esp, 32
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [ebp+8]
	test	edi, edi
	jle	L10
	mov	eax, DWORD PTR [ebp+12]
	lea	esi, [0+edi*8]
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [ebp+20]
	mov	DWORD PTR [esp+12], eax
L6:
	mov	eax, DWORD PTR [ebp+16]
	mov	ebx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+28], 0
	mov	DWORD PTR [esp+24], eax
	.p2align 4,,10
L5:
	mov	ecx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	xor	eax, eax
	vmovapd	ymm1, YMMWORD PTR [ebx]
	.p2align 4,,10
L4:
	vbroadcastsd	ymm0, QWORD PTR [edx]
	add	eax, 1
	add	edx, 8
	vmulpd	ymm0, ymm0, YMMWORD PTR [ecx]
	add	ecx, esi
	cmp	edi, eax
	vaddpd	ymm1, ymm1, ymm0
	jne	L4
	add	DWORD PTR [esp+28], 1
	vmovapd	YMMWORD PTR [ebx], ymm1
	add	DWORD PTR [esp+24], esi
	mov	eax, DWORD PTR [esp+28]
	add	ebx, esi
	cmp	edi, eax
	jne	L5
	add	DWORD PTR [esp+16], 4
	add	DWORD PTR [esp+20], 32
	mov	eax, DWORD PTR [esp+16]
	add	DWORD PTR [esp+12], 32
	cmp	edi, eax
	jg	L6
	vzeroupper
L10:
	lea	esp, [ebp-12]
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
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
