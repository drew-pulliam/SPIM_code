		.text
main: 	li $t0,2846 #x
		mul $t0,$t0,$t0
		mul $t0,$t0,5
		sub $t0,$t0,897235

		la $a0, ans
		li $v0,4	
		syscall
		
		move $a0,$t0
		li $v0,1	
		syscall
		
		li $v0,10	#end program
		syscall
		
		.data
ans:	.asciiz "The answer is "