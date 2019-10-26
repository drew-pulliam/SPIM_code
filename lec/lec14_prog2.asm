		.text
main: 	lw $t0,num1
		sub $sp,$sp,4	#push
		sw $t0,0($sp)
		lw $t0,num2
		sub $sp,$sp,4	#push
		sw $t0,0($sp)
		lw $t0,num3
		sub $sp,$sp,4	#push
		sw $t0,0($sp)
		lw $t0,num4
		sub $sp,$sp,4	#push
		sw $t0,0($sp)
		
		lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11	#output \n
		syscall
		
		lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11	#output \n
		syscall
		
		lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11	#output \n
		syscall
		
		lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11	#output \n
		syscall
		
		li $v0,10	#end program
		syscall
		
		.data
num1:	.word 34527
num2:	.word 98564
num3:	.word 12953
num4:	.word 68577