		.text
main: 	lw $t0,aa  		#store aa in $t1
		div $t1,$t0,9 	#aa / 9
		sw $t1,bb
		sub $t2,$t0,$t1 #aa - bb
		sw $t2,cc
		or $t3,$t0,$t2  #aa OR cc
		sw $t3,dd
		and $t4,$t0,$t3 #aa AND dd
		sw $t4,ee
		xor $t5,$t3,$t4 #dd XOR ee
		sw $t5,ff
		la $a0,ldr
		li $v0,4		#output ldr
		syscall
		lw $a0,ff
		li $v0,1		#output ff
		syscall
		li $v0,10		#end program
		syscall
		
		.data
aa:		.word 35987
bb:		.word 0
cc:		.word 0
dd:		.word 0
ee:		.word 0
ff:		.word 0
ldr:	.asciiz "Final answer = "