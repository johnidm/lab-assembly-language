; Calculating string length

section .data

message 	db	"Hello, I am Johni, this is my second code written in assembly", 0Ah	

section .text

global _start

_start:
	mov 	ebx, 	message
	mov 	eax, 	ebx

nextchar:
	cmp 	byte[eax],	0
	jz 		finished
	inc 	eax
	jmp 	nextchar

finished:
	sub 	eax, 	ebx
	mov 	edx, 	eax
	mov 	ecx, 	message
	mov 	ebx, 	1
	mov 	eax, 	4
	int 	80h

	mov 	ebx, 	0
	mov 	eax, 	1
	int 	80h





