		.text
main: 	la $t0,str
loop:	lb $t1,0($t0)
		beqz $t1,over
		beq $t1,0x6c,cnt
incr:	addi $t0,$t0,1
		j loop
cnt:	addi $t2,$t2,1
		j incr
over:	la $a0,ans
		li $v0,4
		syscall
		move $a0,$t2
		li $v0,1
		syscall
		li $v0,10	#end program
		syscall
		
		.data
str:	.asciiz "Hello, world!"	
ans:	.asciiz "The total count of the letter l is "