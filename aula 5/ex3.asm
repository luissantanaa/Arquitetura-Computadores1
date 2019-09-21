# Mapa de registos
#p: #t1
#*p: $t2
# aux: $t3
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7
# lista (trocado): $t8
# lista+ i(trocado):$t9


 	.data
 lista:	.space 40	 	
 	.eqv FALSE,0
 	.eqv TRUE,1
 str1:	.asciiz "\nIntroduza um numero: "
	.align	2
 	.eqv read_int,5
 	.eqv print_char,11
 	.eqv print_int,1
 	.eqv print_string,4
 	.eqv SIZE,10
 	.text
 	.globl main
 	
main:	la $a0,str1
	li $v0,print_string
	syscall
	
	li $t5,0
for_1:	bge $t5,9,endfor_1
	la $t6,lista
	sll $t7,$t5,2
	addu $t7,$t6,$t5
	li $v0,read_int
	syscall
	sw $v0,0($t7)
	
	addi $t5,$t5,1
	j for_1
endfor_1:	


do:	li $t4,FALSE
	li $t5,0
for_2:	bge $t5,9,endfor_2
if:	sll $t7,$t5,2
	addu $t7,$t7,$t5
	lw $t8,0($t7)
	lw $t9,4($t7)
	ble $t8,$t9,endif
	
	move $t3,$t9
	move $t8,$t9
	move $t9,$t3
	li $t4,TRUE
endif:
	addu $t5,$t5,$1
	j for_2	
endfor_2:
while:	bne $t4,1,endwhl
endwhl:
	li $t5,0
for_3:	bge $t5,9,endfor_3
	sll $t9, $t5, 2
	addu $t9, $t9,$t6 
	lw $a0,0($t9)
	li $v0, print_int
	syscall
	
	la $a0, ';'
	li $v0, print_char
	syscall
	
	
	addu $t5,$t5,1
	j for_3
endfor_3:
	jr $ra


