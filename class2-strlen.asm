#  Assumptions:
#    Base address of str is in $a0
#    i is stored in $t0
#    return value to be stored in $v0
#
.text
main:     la  $a0, astring	# la (load address) pseudoinstruction
		  add $t0,$zero,$zero	# i=0
loop:	  add $t1,$a0,$t0		# calculate address of a[i] = a0+t0
		  lbu $t2,0($t1)
		  beq $t2,$zero, endwhile
		  addi $t0,$t0,1		# i=i+1
		  j loop
endwhile: add $v0,$t0,$zero
#-------------------
.data
astring:	.asciiz "this is a string"
