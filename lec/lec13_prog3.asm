		.text
main: 	la $t0,str
loop:	lb $t1,0($t0)
		beqz $t1,over
		blt $t1,0x61,incr
		bgt $t1,0x7a,incr
		addi $t2,$t2,1
incr:	addi $t0,$t0,1
		j loop
over:	la $a0,ans
		li $v0,4
		syscall
		move $a0,$t2
		li $v0,1
		syscall
		li $v0,10	#end program
		syscall
		
		.data
str:	.asciiz "Hello, world!\n"	
ans:	.asciiz "The number of lower case letters is: "