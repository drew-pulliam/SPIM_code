		.text
main: 	lw $t1,data1  	#store data1 in $t1
		lw $t2,data2  	#store data2 in $t2
		lw $t3,data3  	#store data3 in $t3
		lw $t4,data4  	#store data4 in $t4
		lw $t5,data5  	#store data5 in $t5
		add $t6,$t1,$t2 #data1 + data2
		add $t6,$t6,$t3 # + data3
		mul $t6,$t6,$t4 # x data4
		sub $t6,$t6,$t5 # - data5
		not $t0,$t6		#take 2's complement
		addi $t0,$t0,1
		sw $t0,ans		#store in ans
		la $a0,str
		li $v0,4		#output ans leader
		syscall
		lw $a0,ans
		li $v0,1		#output ans
		syscall
		li $v0,10		#end program
		syscall
		
		.data
str:	.asciiz "Answer = "
data1:	.word 95
data2:	.word 270
data3:	.word 88
data4:	.word 23
data5:	.word 456
ans:	.word 0