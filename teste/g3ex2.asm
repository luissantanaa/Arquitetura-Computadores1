	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor binario é "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.text
	.globl main

main:	li $t3,0
	li $t2,0
	li $t1,0
	
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_int
	syscall
	move $t1,$v0
	
	li $v0,print_string
	la $a0,str2
	syscall
	
for:	bge $t3,32,endfor
	andi $t2,$t1,0x80000000
if1:
	rem $t4, $t3, 4
	bnez $t4, if
	la $a0, ' '
	li $v0, print_char
	syscall		

if:	bnez $t2,else
	li $v0,print_char
	la $a0,'0'
	syscall
	j endif

else:	li $v0,print_char
	la $a0,'1'
	syscall

endif:	sll $t1,$t1,2
	addi $t3,$t3,1
	j for
	
endfor:	jr $ra
	