		.text
main: 	la $a0, str	#load address of str into $a0
		li $v0,4	#print out $a0
		syscall
		
		li $v0,10	#end program
		syscall
		
		.data
str:	.asciiz "Hello, world!\n" #create string called str, with contents "Hello, world!\n"