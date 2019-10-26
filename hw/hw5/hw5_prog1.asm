		.text
main: 	li $t0,12 #x
		li $t1,21 #y
		li $t2,32 #z
		mul $t0,$t0,$t0 #x^2
		mul $t0,$t0,3	#3x^2
		mul $t1,$t1,10	#10y
		mul $t2,$t2,5	#5z
		add $t0,$t0,$t1
		add $t0,$t0,$t2
		move $a0,$t0
		li $v0,1
		syscall
		li $v0,10	#end program
		syscall