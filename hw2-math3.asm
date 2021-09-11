## Start of file math3.a
##
## Question:
## calculate (NUM-3)*(NUM+4)
## 
## Output format must be:
## "answer = 98"

#################################################
#					 	#
#		text segment			#
#						#
#################################################

	.text		
       	.globl __start 
__start:		# execution starts here


# Any changes above this line will be discarded by
# mipsmark. Put your answer between dashed lines.
#-------------- start cut -----------------------

	lw $t0, NUM
	
	sub $t1, $t0, 3
	add $t2, $t0, 4
	mul $t3, $t1, $t2
	
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

#--------------  end cut  -----------------------
# Any changes below this line will be discarded by
# mipsmark. Put your answer between dashed lines.

#################################################
#                                               #
#               data segment                    #
#                                               #
#################################################

        .data
NUM:	.word 10
ans:	.asciiz "answer = "
endl:	.asciiz "\n"
##
## End of file math3.a
