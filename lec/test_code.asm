		.text
main: 	li $t0,47
		li $t1,253
		li $t2, 23
		
		mul $t4, $t0, $t0
		mul $t5, $t1, 3
		mul $t6, $t2, 10
		
		add $t7, $t4, $t5
		add $t3, $t6, $t7
	
		li $v0,10
		syscall