		.text
main: 	la $t0,phrase1
		move $t3,$0
loop:	lb $t1,($t0)
		beqz $t1,end
		beq $t1,0x61,a
		beq $t1,0x65,e
		beq $t1,0x69,vowel
		beq $t1,0x6f,vowel
		beq $t1,0x75,vowel
		beq $t1,0x79,vowel
incr:	addi $t0,$t0,1
		j loop
a:		li $t2,0x65
		sb $t2,($t0)
		j vowel
e:		li $t2,0x61
		sb $t2,($t0)
		j vowel
vowel:	addi $t3,$t3,1
		j incr
end:	la $a0,answer
		li $v0,4
		syscall
		move $a0,$t3
		li $v0,1
		syscall
		li $a0,0x0a
		li $v0,11
		syscall
		la $a0,phrase1
		li $v0,4
		syscall
		li $v0,10
		syscall
		
		.data
phrase1: .asciiz "The quick brown fox jumps over the lazy dog."
answer:  .asciiz "The number of vowels is: "

#0x61 = a
#0x65 = e
#0x69 = i
#0x6f = o
#0x75 = u
#0x79 = y