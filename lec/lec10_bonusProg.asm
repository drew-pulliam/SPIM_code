		.text
main: 	li $t0,0x123   #x
		li $t1,0x12b7  #y
		li $t2,0x34af7 #z
		
		mul $t0, $t0, $t0 #x^2
		mul $t0, $t0, 4	  #4x^2
		mul $t1, $t1, 8   #8y
		
		add $t0, $t0, $t1
		add $s0, $t0, $t2
	
		li $v0,10
		syscall