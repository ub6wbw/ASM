exit	equ	60

global _start

section .data

section .text 
_start:
	;al, bl, cl, dl := 0x00
	xor al, al
	xor bl, bl
	xor cl, cl
	xor dl, dl

	;ah, bh, ch, dh := 0x00
	xor ah, ah
	xor bh, bh
	xor ch, ch
	xor dh, dh

	;ax, bx, cx, dx := 0x00
	xor ax, ax
	xor bx, bx
	xor cx, cx
	xor dx, dx

	;eax, ebx, ecx, edx := 0x00
	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx

	;rax, rbx, rcx, rdx := 0x00
	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx
	xor rdx, rdx

	;al := al + bl (-1 + -1)
	mov al, -1
	mov bl, -1
	add al, bl
	
	;al := al + bl (-1 + -2)
	mov al, -1
	mov bl, -2
	add al, bl
	
	;al := al + bl (-1 + -3)
	mov al, -1
	mov bl, -3
	add al, bl

	;exit()
	mov rax, exit
	mov rdi, 0	;status
	syscall
