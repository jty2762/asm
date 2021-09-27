	.text		
       	.globl __start 
__start:	

	lw $s1 ,i
	lw $s2, h
	la $a0, A
	la $a1, B
	
	Loop:	sll $t0, $s1, 2
		add $t1, $t0, $a0
		add $t2, $t0, $a1
		lw $t3, 0 ($t1)
		lw $t4, -4 ($t1)
		lw $t5, 0 ($t2)
		add $t3, $t4, $t5
		sw $t3, 0 ($t1)
		add $s1, $s1, 1
		bne $s1, $s2, Loop
		
	la $a0, ans
	li $v0, 4
	syscall
	move $a0, $t3
	li $v0, 1
	syscall
	la $a0, endl
	li $v0, 4
	syscall
	li $v0, 10
	syscall

        .data
A:	.word 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
B:	.word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
i:	.word 1
h:	.word 10
x:	.word 0
ans:	.asciiz "answer = "
endl:	.asciiz "\n"
