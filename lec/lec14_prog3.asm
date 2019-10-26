		.text
main: 	la $t0,num1
		la $t1,num4 #address of final word
		addi $t1,$t1,4 #increment by one imaginary word
		move $t2,$sp #inital stack address
loop1:	lw $t3,0($t0)
		sub $sp,$sp,4	#push
		sw $t3,0($sp)
		addi $t0,$t0,4
		bne $t0,$t1,loop1
loop2:	lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11	#output \n
		syscall
		bne $sp,$t2,loop2
		li $v0,10	#end program
		syscall
		
		.data
num1:	.word 34527
num2:	.word 98564
num3:	.word 12953
num4:	.word 68577