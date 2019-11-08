		.text
main: 	la $t3,num5
		li $t4,1
next:	la $t0,num1
		beqz $t4,print
		move $t4,$0
loop:	beq $t0,$t3,next
		lw $t1,0($t0)
		lw $t2,4($t0)
		bgt $t1,$t2,swap
incr:	addi $t0,$t0,4
		j loop
swap:	sw $t1 4($t0)
		sw $t2 0($t0)
		addi $t4,$t4,1
		j incr		
print:	lw $a0,($t0)
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11
		syscall
		beq $t0,$t3,end
		addi $t0,$t0,4
		j print
end:	li $v0,10
		syscall
		
		.data
num1:	.word 75632
num2:	.word 30401
num3:	.word 99483
num4:	.word 11128
num5:	.word 54746