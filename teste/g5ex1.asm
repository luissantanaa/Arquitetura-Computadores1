	.data
	.eqv SIZE,5
lista:	.space SIZE
str1:	.asciiz "\nIntroduza um numero: "
	.align 2
	.eqv print_string,4
	.eqv read_int,5
	.text
	.globl main
	
main:	li $t0,0
	li $t6,5
for:	bge $t0,$t6,endfor
	li $v0,print_string
	la $a0,str1
	syscall
	
	sll $t2,$t0,2
	la $t1,lista
	add $t2,$t2,$t1
	
	li $v0,read_int
	syscall
	
	sw $v0,0($t2)
	addi $t0,$t0,1
	j for
endfor:	jr $ra