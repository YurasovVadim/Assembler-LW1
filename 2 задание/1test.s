	global	_start
section	.text
_start:				
	mov	rax, 1
	mov	rdi, 1	
	mov	rsi, msg1	
	mov	rdx, len1	
	syscall		
	mov	rax, 0 		
	mov	rdi, 0		
	mov	rsi, msg	
	mov	rdx, 1024	
	syscall
	mov	rax, 1 
	mov	rdi, 1
	mov	rsi, msg2
	mov	rdx, len2	
	syscall	
	mov	rax, 1 		
	mov	rdi, 1		
	mov	rsi, msg	
	mov	rdx, 1024	
	syscall
	mov	rax, 60		
	mov	rdi, 0		
	syscall			
section .data
msg1:							
	DB "Input text:", 0xa	
len1	EQU	$ - msg1 
msg2:							
	DB "Output text:", 0xa	
len2	EQU	$ - msg2 
section .bss
msg resb 1024
