exit		equ	60

global _start

section .data

section .text 
_start:
	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx
	xor rdx, rdx
	
	mov al, -1
	mov bl, -1
	add al, bl

	mov al, -1
	mov bl, -2
	add al, bl

	mov al, -1
	mov bl, -3
	add al, bl

	;exit()
	mov rax, exit
	mov rdi, 0	;status
	syscall
