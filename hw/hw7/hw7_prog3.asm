# Homework 7 Program 3, Arranging ASCII Characters in Numerical Order
		
		.text
main: 	la $t0,str
		la $t7,str
loop: 	lb $t1,0($t0) 		# Load first two characters to be compared
		lb $t2,1($t0)
		beqz $t2,done 		# If the new character = 0, done
		ble $t1,$t2,incr 	# If characters in correct order, get next character
		jal swap 			# Characters not in correct order - go to swap
		j loop 				# Character in correct position - get next character
incr: 	addi $t0,$t0,1 		# Increment current character address
		j loop 				# Return to next character compare
done: 	la $a0,str 			# Print out str
		li $v0,4
		syscall
		li $v0,10 			# Done - end program.
		syscall
		
		# Character swap
swap: 	sub $sp,$sp,4 		# push stack
		sw $ra,($sp)
		sb $t1,1($t0) 		# Exchange two character positions
		sb $t2,0($t0)
		beq $t0,$t7,goback 	# If at first position in the str, done
		sub $t0,$t0,1 		# Decrement the letter pointer.
		lb $t1,0($t0)
		lb $t2,1($t0)
		ble $t1,$t2,goback 	# If letter is properly placed, done
		jal swap
goback: addi $t0,$t0,1 		# swap done - unwind
		lw $ra,($sp)		# pop stack
		addi $sp,$sp,4
		jr $ra
		
		.data
str: 	.asciiz "Hello, world!\n"