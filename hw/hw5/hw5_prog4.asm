		.text
main: 	lw $t1,data1  	#store data1 in $t1
		lw $t2,data2  	#store data2 in $t2
		bgez $t1,print1 #check data1 >= 0
check2:	bgez $t2,print2 #check data2 >= 0
		j done
print1:	move $a0,$t1
		li $v0,1		#output data1
		syscall
		j check2
print2:	move $a0,$t2
		li $v0,1		#output data2
		syscall
done:	li $v0,10		#end program
		syscall
		
		.data
data1:	.word 0x0001ead7
data2:	.word 0x9800fffe