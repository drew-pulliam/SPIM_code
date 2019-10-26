		.text
main: 	la $t0,num1
		move $t1,$0		#reset counter
		li $v0,11
		
loop: 	lb $t3,0($t0) 	# Loop begins here.
		bge $t1,16,end 		# Analysis done yet?
		bgt $t3,0x39,next
		blt $t3,0x30,next
		move $a0,$t3	# Store valid character
		syscall
		
next: 	addi $t0,$t0,1
		addi $t1,$t1,1 	# incr counter
		j loop 			# Go to analyze next char
		
end: 	li $v0,10		#end program
		syscall
		
		.data
num1: 	.word 0x45237a39
num2: 	.word 0x61753820
num3: 	.word 0x436a7132
num4: 	.word 0x33217862 