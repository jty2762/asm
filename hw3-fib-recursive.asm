##
## fib.a - recursive implementation of the
##         Fibonacci function.
##
##	a0 - value to test function
##

#################################################
#					 	#
#		text segment			#
#						#
#################################################

	.text		
       	.globl __start 
__start:		# execution starts here
	li $a0,9
	jal fib		# call fib
	move $a0,$v0	# print result
	li $v0, 1
	syscall

	la $a0,endl
	li $v0,4
	syscall

	li $v0,10
	syscall		# au revoir...

#------------------------------------------------
# fib - recursive implementation of the
# Fibonacci function.
#	a0 - holds parameter n
#	s0 - holds fib(n-1)
#	v0 - returns result
#------------------------------------------------

# Any changes above this line will be discarded by
# mipsmark. Put your answer between dashed lines.
#-------------- start cut -----------------------



#--------------  end cut  -----------------------
# Any changes below this line will be discarded by
# mipsmark. Put your answer between dashed lines.
 

#################################################
#					 	#
#     	 	data segment			#
#						#
#################################################

	.data
endl:	.asciiz "\n"

##
## end of file fib.a
