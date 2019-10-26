		.text
main: 	lw $t0,t	#store t in $t0
		lw $t1,u	#store u in $t1
		lw $t2,v	#store v in $t2
		lw $t3,w	#store w in $t3
		add $t4,$t0,$t1	#add t and u
		sw $t4,x		#store in x
		or $t5,$t2,$t3	#OR v and w
		sw $t5,y		#store in y
		mul $t6,$t4,$t5 #mul x and y
		sw $t6,z		#store in z
		add $t7,$t4,$t6 #add x and z
		move $a0,$t7	#output x + z
		li $v0,1
		syscall
		li $v0,10	#end program
		syscall
		
		.data
t:		.word 100
u:		.word 54
v:		.word 37
w:		.word 23
x:		.word 0
y:		.word 0
z:		.word 0