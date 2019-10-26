		.text
main: 	la $t0,str	#pointer to first char
		la $t1,buffer
		
loop: 	lb $t3,0($t0) 	# Loop begins here.
		beqz $t3,print 	# Analysis done yet?
		bgt $t3,0x7a,next
		blt $t3,0x61,next
		sb $t3,0($t1) 	# Store valid character
		addi $t1,$t1,1 	# Set print pointer to next address
		
next: 	addi $t0,$t0,1
		j loop 			# Go to analyze next char
		
print: 	sb $t3,0($t1)	#put \0 in
		la $a0,buffer
		li $v0,4
		syscall

		li $v0,10		#end program
		syscall
		
		.data
str:	.asciiz "abH1r2C9mXd"
buffer:	.space 20