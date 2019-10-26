# CE 2310 HW 6 Program 4
# Drew Pulliam	
		
		.text
main: 	la $t0,v
		move $t1,$0		#reset counter
		
loop: 	lw $t3,0($t0) 	# Loop begins here.
		bge $t1,5,end 	# Analysis done yet?
		blez $t3,next
		move $a0,$t3
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11		#output \n
		syscall
		
next: 	addi $t0,$t0,4
		addi $t1,$t1,1 	# incr counter
		j loop 			# Go to analyze next word
		
end: 	li $v0,10		#end program
		syscall
		
		.data
v: 		.word 0x0166abce
w: 		.word 0xafc7d12e
x: 		.word 0x7ffff48c
y: 		.word 0x3031aef7
z: 		.word 0xfeff0108