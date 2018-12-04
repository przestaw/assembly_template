global  func

section .data

const_R     dd 2.0

section	.text

func:
	push rbp
	mov	rbp, rsp
	; przyklad zaladowania adresow obu argumentow do eax oraz ebx
	mov	rax, QWORD [rbp+24]	;adres *b do eax
	mov	rbx, QWORD [rbp+16]	;adres *a do ebx


	pop	rbp
	ret