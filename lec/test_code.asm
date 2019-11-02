		.text
main: 	li $t0,15
		li $t1,7
		
		rem $a0,$t0,6
		li $v0,1
		syscall
	
		li $v0,10
		syscall