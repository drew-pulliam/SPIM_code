# CE 2310 HW 6 Program 3
# Drew Pulliam	
		
		.data
num1: 	.word 0x55544421
		
		.text
main: 	la $t0,num1
		move $t1,$0			#loop1 counter
		move $t3,$0			#loop2 counter
		move $t4,$0			#loop2 counter
		li $v0,11
loop1: 	lb $t2,0($t0)
		addi $t0,$t0,1		#incr pointer
		bge $t1,4,reset
		move $a0,$t2
		syscall
		addi $t1,$t1,1		#incr counter
		j loop1
reset:	la $t0,num1
		li $a0,0x0a			#output \n
		syscall
loop2:	lb $t2,0($t0)
		addi $t0,$t0,1		#incr pointer
		bge $t3,4,loop3
		sub $sp,$sp,4	#push
		sw $t2,0($sp)
		addi $t3,$t3,1		#incr counter
		j loop2
loop3:	lw $a0,0($sp)	#pop
		addi $sp,$sp,4
		syscall
		addi $t4,$t4,1		#incr counter
		bge $t4,4,end
		j loop3
end: 	li $v0,10		#end program
		syscall