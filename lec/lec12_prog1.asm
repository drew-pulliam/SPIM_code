		.text
main: 	lw $t4, num1
		mul $t4,$t4,$t4
		add $t4,$t4,$t4
		mul $t4,$t4,$t4
		
		la $a0, ans	#load address of ans into $a0
		li $v0,4	#print out $a0
		syscall
		
		move $a0, $t4
		li $v0,1	#print out $a0 decimal number
		syscall
		
		
		li $v0,10	#end program
		syscall
		
		.data
num1:	.word 57
ans:	.asciiz "The answer = "