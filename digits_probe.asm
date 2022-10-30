exit	equ	60

global _start

section .data

section .text 
_start:
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
