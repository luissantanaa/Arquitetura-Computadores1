# Mapa de registos 
# SIZE-1:$t3 
# houve_troca: $t4 
# i:$t5 
# lista:$t6 
# lista + i:$t7

	.data
	.eqv TRUE,1
	.eqv FALSE,0
	.eqv SIZE, 10
str1:	.asciiz "\nInsira um valor: "	

lista:
	.word 10 
	.eqv read_int, 5
	.eqv print_string,4
	.eqv print_int, 1
	
	.text
	.globl main	
main:
	li $t5,0
	la $a0, str1
	li $v0, print_string
	syscall
	la $t6, lista
	
save:
	bgeu $t5, SIZE, do 
	li $v0, read_int
	syscall
	sll $t7,$t5,2
	addu $t7,$t7,$t6
	sw $v0,0($t7)
	addi $t5,$t5,1
	j save
do:
	li $t4, FALSE
	li $t5,0
	li $t3,9
while:
	bge $t5, $t3, endw
if:	
	sll $t7, $t5,2
	addu $t7, $t7,$t6	
	lw $t8,0($t7)
	lw $t9,4($t7)
	ble $t8,$t9, endif
	sw $t8, 4($t7)
	sw $t9,0($t7)
	li $t4, TRUE
	
endif:	
	add $t5, $t5, 1
	j while
			
endw:	
	beq $t4,TRUE,do

endDoWhile:
	li $t5,0
for:
	bge $t5, SIZE, endfor
	sll $t9, $t5, 2
	addu $t9, $t9,$t6 #endereço
	lw $a0,0($t9)
	li $v0, print_int
	syscall
	
	la $a0, ';'
	li $v0, 11
	syscall
	
	addi $t5,$t5,1
	j for
endfor:
	jr $ra
