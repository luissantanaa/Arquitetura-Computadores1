# Mapa de registos
# p: $t0
# *p: $t1
# lista+Size: $t2 
	.data
str1:	.asciiz ";"
str2:	"\nConteudo do array:\n"
lista:	.word 8,-4,3,5,124,-15,87,9,27,15
	.eqv print_int10,1
	.eqv print_string,4
	.eqv SIZE,10
	.text
	.globl main

main:	la $a0,str2
	li $v0,print_string
	syscall
	
	la $t0,lista
	li $t2,SIZE
	sll $t2,$t2,2
	addu $t2,$t0,$t2
	
while:	bge $t0,$t2,endw
	lw $t3,0($t0)
	move $a0,$t3
	li $v0,print_int10
	syscall
	
	la $a0,str1
	li $v0,print_string
	syscall
	
	addu $t0,$t0,4
	j while

endw:	jr $ra
	
