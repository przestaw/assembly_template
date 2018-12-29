global  func

section .data

const_R     db 0x20 ;

section	.text

func:
	push rbp
	mov	rbp, rsp
	; przyklad zaladowania adresow obu argumentow do eax oraz ebx
	mov	rax, rdi	;adres *a - in do eax
	mov	rbx, rsi	;adres *b - out do ebx

    mov dl, 0

    cmp rax, 0 ;check if string is null
    je fin
;THIS IS BEGIN OF EXAMPLE
loop:
    mov dl, [rax]
    cmp dl, 0
    je fin
    cmp dl, 'A'
    je proceed
    add dl, 0x20
proceed:
    add dl, 1
    mov [rbx], dl
    add rax, 1
    add rbx, 1
    jmp loop
;THIS IS END OF EXAMPLE
fin:
    mov BYTE[rbx], 0
	mov rax, 0
	pop	rbp
	ret