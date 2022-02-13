	global	_start
section	.text
_start:				
	mov	rax, 1 		
	mov	rdi, 1		
	mov	rsi, msg	
	mov	rdx, len	
	syscall			

	mov	rax, 60		
	mov	rdi, 0		
	syscall			
section .data
msg:							
	DB "Hello, world!", 0xa	
	DB "NASM assembler", 0xa
len	EQU	$ - msg 				
