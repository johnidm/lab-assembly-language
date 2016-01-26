; Hello Word assembly for IA-32 architecture family
; By Johni Douglas Marangon
; Reference http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/
; How to build
;	'nasm -f elf IA32-Hello-Word.asm'
;	'ld -m elf_i386 IA32-Hello-Word.o -o IA32-Hello-Word'

global _start

section .text

_start:
	
	; print Hello Word ion the screen
	mov eax, 0x4		; invoke SYS_WRITE (kernel opcode 4)
	mov ebx, 0x1		; write to the STDOUT file
	mov ecx, message 	; move the memory address of our message string into ecx
	mov edx, mlen 		; number of bytes to write - one for each letter plus 0Ah (line feed character)
	int 80h				; Then request an interrupt on libc using INT 80h.

	; exit the program gracefully
	mov eax, 0x1 	; invoke SYS_EXIT (kernel opcode 1)
	mov ebx, 0x0 	; return 0 status on exit - 'No Errors'
	int 80h			; Then request an interrupt on libc using INT 80h.


section .data
	
	message: db "Hello Word!"
 	mlen	equ $-message