	.file	"DGEMM.c"
	.intel_syntax noprefix
	.section .rdata,"dr"
LC0:
	.ascii "c[%d][%d] = %lf\12\0"
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4,,15
	.globl	_display
	.def	_display;	.scl	2;	.type	32;	.endef
_display:
LFB23:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xor	ebp, ebp
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
	.cfi_def_cfa_offset 64
	.p2align 4,,10
L2:
	mov	esi, DWORD PTR [esp+76]
	mov	edi, ebp
	xor	ebx, ebx
	sal	edi, 13
L3:
	fld	QWORD PTR [esi]
	mov	DWORD PTR [esp+8], ebx
	add	ebx, 1
	mov	DWORD PTR [esp+4], ebp
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	add	esi, edi
	fstp	QWORD PTR [esp+12]
	call	_printf
	cmp	ebx, 2
	jne	L3
	add	ebp, 1
	cmp	ebp, 1024
	jne	L2
	add	esp, 44
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE23:
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.section	.text.unlikely,"x"
LCOLDB4:
	.text
LHOTB4:
	.p2align 4,,15
	.globl	_fillArray
	.def	_fillArray;	.scl	2;	.type	32;	.endef
_fillArray:
LFB24:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 44
	.cfi_def_cfa_offset 64
	mov	eax, DWORD PTR [esp+68]
	mov	ecx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+16], eax
	add	eax, 8192
	mov	DWORD PTR [esp+20], ecx
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+64]
	mov	ecx, DWORD PTR [esp+76]
	lea	ebp, [0+eax*8]
	mov	DWORD PTR [esp+24], ecx
	.p2align 4,,10
L10:
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+20]
	mov	esi, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+12], 1024
	.p2align 4,,10
L11:
	call	_rand
	mov	DWORD PTR [esp+4], eax
	call	_rand
	fild	DWORD PTR [esp+4]
	mov	DWORD PTR [esp+8], eax
	fild	DWORD PTR [esp+8]
	fdivp	st(1), st
	fstp	QWORD PTR [esi]
	add	esi, ebp
	call	_rand
	mov	DWORD PTR [esp+4], eax
	call	_rand
	fild	DWORD PTR [esp+4]
	mov	DWORD PTR [esp+8], eax
	fild	DWORD PTR [esp+8]
	fdivp	st(1), st
	fstp	QWORD PTR [edi]
	add	edi, ebp
	fldz
	fstp	QWORD PTR [ebx]
	add	ebx, ebp
	sub	DWORD PTR [esp+12], 1
	jne	L11
	add	DWORD PTR [esp+16], 8
	add	DWORD PTR [esp+20], 8
	mov	eax, DWORD PTR [esp+16]
	add	DWORD PTR [esp+24], 8
	cmp	eax, DWORD PTR [esp+28]
	jne	L10
	add	esp, 44
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE24:
	.section	.text.unlikely,"x"
LCOLDE4:
	.text
LHOTE4:
	.section	.text.unlikely,"x"
LCOLDB5:
	.text
LHOTB5:
	.p2align 4,,15
	.globl	_mm
	.def	_mm;	.scl	2;	.type	32;	.endef
_mm:
LFB25:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+40]
	mov	ebp, DWORD PTR [esp+32]
	lea	eax, [ebx+8388608]
	mov	DWORD PTR [esp+4], eax
L17:
	mov	edi, DWORD PTR [esp+36]
	xor	ecx, ecx
	.p2align 4,,10
L21:
	fld	QWORD PTR [ebx+ecx*8]
	lea	esi, [edi+8388608]
	mov	eax, edi
	mov	edx, ebp
	.p2align 4,,10
L18:
	fld	QWORD PTR [edx]
	add	eax, 8192
	add	edx, 8
	fmul	QWORD PTR [eax-8192]
	cmp	esi, eax
	faddp	st(1), st
	fst	QWORD PTR [ebx+ecx*8]
	jne	L18
	fstp	st(0)
	add	ecx, 1
	add	edi, 8
	cmp	ecx, 1024
	jne	L21
	add	ebp, 8192
	add	ebx, 8192
	cmp	DWORD PTR [esp+4], ebx
	jne	L17
	add	esp, 12
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE25:
	.section	.text.unlikely,"x"
LCOLDE5:
	.text
LHOTE5:
	.section	.text.unlikely,"x"
LCOLDB6:
	.text
LHOTB6:
	.p2align 4,,15
	.globl	_dgemm
	.def	_dgemm;	.scl	2;	.type	32;	.endef
_dgemm:
LFB26:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+32]
	test	esi, esi
	jle	L34
	mov	ecx, DWORD PTR [esp+36]
	mov	ebp, DWORD PTR [esp+44]
	lea	ebx, [0+esi*8]
	mov	DWORD PTR [esp+4], 0
L30:
	lea	eax, [ebx+ebp]
	mov	edi, DWORD PTR [esp+40]
	mov	DWORD PTR [esp], eax
	.p2align 4,,10
L29:
	fld	QWORD PTR [ebp+0]
	mov	edx, edi
	xor	eax, eax
	.p2align 4,,10
L28:
	fld	QWORD PTR [ecx+eax*8]
	add	eax, 1
	fmul	QWORD PTR [edx]
	add	edx, ebx
	cmp	esi, eax
	faddp	st(1), st
	jne	L28
	fstp	QWORD PTR [ebp+0]
	add	edi, 8
	add	ebp, 8
	cmp	ebp, DWORD PTR [esp]
	jne	L29
	add	DWORD PTR [esp+4], 1
	add	ecx, ebx
	mov	eax, DWORD PTR [esp+4]
	cmp	esi, eax
	jne	L30
L34:
	add	esp, 12
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
	.section	.text.unlikely,"x"
LCOLDE6:
	.text
LHOTE6:
	.section	.text.unlikely,"x"
LCOLDB7:
	.text
LHOTB7:
	.p2align 4,,15
	.globl	_dgemm_intrins
	.def	_dgemm_intrins;	.scl	2;	.type	32;	.endef
_dgemm_intrins:
LFB27:
	.cfi_startproc
	rep ret
	.cfi_endproc
LFE27:
	.section	.text.unlikely,"x"
LCOLDE7:
	.text
LHOTE7:
	.comm	_c, 4, 2
	.comm	_b, 4, 2
	.comm	_a, 4, 2
	.ident	"GCC: (GNU) 5.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
