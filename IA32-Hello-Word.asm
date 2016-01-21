; Hello Word assembly for IA-32 architecture family
; By Johni Douglas Marangon
; Reference http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/
; How to build
;	'nasm -f <elf32 or elf64> -o IA32-Hello-Word.o IA32-Hello-Word.asm'
;	'ld -dynamic-linker -o IA32-Hello-Word IA32-Hello-Word.o'

global _start

section .text

_start:
	
	; print Hello Word ion the screen
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80

	; exit the program  gracefully
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80


section .data
	
	message: db "Hello Word"
 	mlen	equ $-message