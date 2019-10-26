		.text
main: 	la $t0,buffer	#pointer to first char
		add $t0,$t0,95	#add 95 for 96 chars, points at last char
		la $t1,disp		#ptr to print buffer
		move $t2,$0		#clear counter
		
loop: 	lb $t3,0($t0) 	# Loop begins here.
		beq $t3,35,next # Test and eliminate
		beq $t3,38,next # characters #, &, *,
		beq $t3,42,next # <, and >.
		beq $t3,60,next
		beq $t3,62,next
		
		sb $t3,0($t1) 	# Store valid character
		addi $t1,$t1,1 	# Set print pointer to next address
		
next: 	addi $t2,$t2,1 	# Increment counter
		beq $t2,96,print # Analysis done yet?
		sub $t0,$t0,1 	# Set block pointer to next char
		j loop 			# Go to analyze next char
		
print: 	la $a0,disp # Print reversed block
		li $v0,4
		syscall

		li $v0,10	#end program
		syscall
		
		.data
buffer:	.ascii "2.12<< :tsaceroF** ,0.32<< :tnerruC** MR**&& ;0.25>> :tsaceroF** ,6.94>> :tnerruC** GK**########"
disp:	.space 80