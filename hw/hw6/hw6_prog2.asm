# CE 2310 HW 6 Program 2
# Drew Pulliam	
		
		.text
main: 	la $t0,str
		move $t1,$0			#total sum
		move $t2,$0			#vowels total sum
		
loop: 	lb $t3,0($t0) 		# Loop begins here.
		addi $t0,$t0,1		#incr pointer
		beqz $t3,end		# null char, loop end
		add $t1,$t1,$t3		#add to total
		beq $t3,0x61,addV	#check if char is a vowel
		beq $t3,0x65,addV
		beq $t3,0x69,addV
		beq $t3,0x6f,addV
		beq $t3,0x75,addV
		beq $t3,0x41,addV
		beq $t3,0x45,addV
		beq $t3,0x49,addV
		beq $t3,0x4f,addV
		beq $t3,0x55,addV
		j loop
		
addV:	add $t2,$t2,$t3
		j loop
		
end: 	move $a0,$t1
		li $v0,1
		syscall
		la $a0,ans1
		li $v0,4
		syscall
		move $a0,$t2
		li $v0,1
		syscall
		la $a0,ans2
		li $v0,4
		syscall
		sub $t4,$t1,$t2
		move $a0,$t4
		li $v0,1
		syscall
		li $v0,10		#end program
		syscall
		
		.data
str: 	.asciiz "Hello, world!\n"
ans1: 	.asciiz " - "
ans2: 	.asciiz " = "

# a = 0x61, A = 0x41
# e = 0x65, E = 0x45
# i = 0x69, I = 0x49
# o = 0x6f, O = 0x4f
# u = 0x75, U = 0x55