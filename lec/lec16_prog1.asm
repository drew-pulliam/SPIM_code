# Lecture 16 Demo Program 1, Hex Number Conversion
# Converts a Decimal Number to Its equivalent hex value and
# prints out hexadecimal number to console.
#
# $t0 - Loop counter
# $a0 - Holds each hex digit as analyzed
# $t1 - Holds number input from keyboard
		
		.text 			# Text declaration
main: 	la $a0,prompt 	# Load print out of prompt sequence
		li $v0,4 		# Output prompt to enter decimal number
		syscall
		li $v0,5 		# Read integer to convert to hex
		syscall
		move $t1,$v0 	# Get number out of $v0
		la $a0,answer 	# Output answer header
		li $v0,4
		syscall
		move $t0,$0 	# Clear counter (can do multiple conversions)
		
		li $v0,11 		# Load number of syscall (11) into $v0
elim: 	rol $t1,$t1,4 	# Left rotate digit to right-most
						# position
		and $a0,$t1,0xf # "Mask off" left-most digit
		bgtz $a0,num 	# If a non-zero go to character
						# conversion routine
		addi $t0,$t0,1 	# Since character = 0, increment counter
		beq $t0,8,zero 	# If 8 zeroes, loop done; print out "zero."
		j elim 			# Get next character
		
loop: 	rol $t1,$t1,4 	# Left rotate left digit to right-most position
		and $a0,$t1,0xf # "Mask off" left-most digit
num: 	ble $a0,9,conv 	# Go to conv routine directly if hex # 0-9
		add $a0,$a0,7 	# Add 7 because hex number is a-f
conv: 	add $a0,$a0,48 	# Convert number to ASCII
		syscall 		# Output ASCII representation of hex number
		addi $t0,$t0,1 	# Increment counter
		blt $t0,8,loop 	# If analysis not complete, do loop again
		j next 			# Analysis complete; go to end routine
		
zero: 	li $a0,0x30 	# If number was 0, put 0 in print buffer
		syscall
next: 	li $a0,0x0a 	# Print out carriage return for neatness
		syscall
		la $a0,comp 	# Convert another number to hex?
		li $v0,4
		syscall
		li $v0,11 
		li $a0,0x0a 	# Output CR/LF
		syscall 
		li $v0,12 		# Input answer (y = "Yes")
		syscall
		beq $v0,0x79,main # If yes, go back to start of program
		li $v0,10 		# End program
		syscall
		
		.data
prompt: .asciiz "Enter decimal number (8 digits, maximum): "
answer: .asciiz "Hexadecimal number is: 0x"
comp: 	.asciiz "Input another number (y/n)?" 