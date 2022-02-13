# это комментарий  
# GNU Assembler
# AT&T syntax

.global	_start
.section	.text
_start:
	movq	$1, %rax 		# write
	movq	$1, %rdi		# stdout
	movq	$msg, %rsi		# address to rsi
	movq	$len, %rdx
	syscall

	movq	$60, %rax
	movq	$0, %rdi
	syscall
.section .data
msg:	
	.ascii "Hello, world!\n"
	.ascii "AT&T syntax,\n"
	.ascii "GNU Assembler\n"
	len = . - msg 
