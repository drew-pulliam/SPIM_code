		.text
main: 	li $t0,230
		li $t1,67
		li $t2,459
		bgt $t0,$t1,stepTwo
		move $t0,$t1
stepTwo:bgt $t0,$t2,over
		move $t0,$t2
over:	la $a0,ans
		li $v0,4
		syscall
		move $a0,$t0
		li $v0,1
		syscall
		li $v0,10	#end program
		syscall
		
		.data
str:	.asciiz "Hello, world!"	
ans:	.asciiz "The biggest number is "