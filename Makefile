all:
	nasm -felf64 digits_probe.asm -o digits_probe.o 
	ld -o digits_probe digits_probe.o
