## Start of file math2.a
##
##
## Question:
## calculate 5*X^2-3
## 
## Output format must be:
## "answer = 242"

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

	lw $t0, X
	
	mul $t1, $t0, $t0
	mul $t1, $t1, 5
	sub $t1, $t1, 3
	la $a0, ans
	li $v0, 4
	syscall
	move $a0, $t1
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
X:	.word 7
ans:	.asciiz "answer = "
endl:	.asciiz "\n"
##
## End of file math2.a
