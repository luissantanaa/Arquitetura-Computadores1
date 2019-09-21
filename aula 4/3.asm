# Mapa de registos
# p: $t0
# pultimo:$t1
# *p $t2
# soma: $t3 

	.data
array:	.word 7692,23,5,234
	.eqv print_int10,1
	.eqv SIZE,4
	.text
	.globl main

main:	li $t3,0
	la $t0,	array
	li $t6,SIZE
	sll $t6,$t6,4
	addu $t1,$t0,$t6
	
	
	
while:	bge $t0,$t1,endw
	lw $t2,0,($t0)
	add $t3,$t3,$t2
	addiu $t0,$t0,4
	j while

endw:	la $a0,($t3)
	li $v0,print_int10
	syscall
end:
	jr $ra
	
