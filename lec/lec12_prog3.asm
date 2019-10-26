		.text
main: 	lw $t1,num1
		sw $t1,num3
		
		la $t2,num2
		lw $t3,0($t2)
		sw $t3,8($t2)

		
		lw $a0,num3
		li $v0,1
		syscall
		
		li $a0,0x0a #0x0a = "\n"
		li $v0,11
		syscall
		
		lw $a0,8($t2)
		li $v0,1
		syscall
		
		
		li $v0,10	#end program
		syscall
		
		.data
num1:	.word 35478
num2:	.word 98787
num3:	.word 0
num4:	.word 0