		.text
main: 	li $v0,5
		syscall
		move $t0,$v0
		move $a0,$v0 #move user input to a0
		li $v0,1
		syscall
		
		li $a0,0x0a
		li $v0,11
		syscall
		
		li $a1,36
		la $a0, buffer
		li $v0,8
		syscall
		
		la $a0,buffer
		li $v0,4
		syscall
		
		
		li $v0,10	#end program
		syscall
		
		.data
buffer:	.space 36