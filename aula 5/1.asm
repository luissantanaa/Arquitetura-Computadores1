# i: $t0
# lista: $t1
# lista + i: $t2
	.data
	.eqv print_string,4
	.eqv read_int,5
	.eqv SIZE,5
str1:   .asciiz "\nIntroduza um numero: "
 	.align 2

lista:  .space 20

	.eqv read_int,5
	.text
	.globl main

main:	li $t0,0
	li $t6,SIZE

while:	bge $t0,$t6,endw
	la $a0,str1
	li $v0,print_string
	syscall
	
	
	la $t1,lista
	sll $t2,$t0,2
	addu $t2,$t2,$t1
	
	sw $v0,0($t2)
	li $v0,read_int
	syscall
	
	addi $t0,$t0,1
	j while
endw:
	jr $ra
