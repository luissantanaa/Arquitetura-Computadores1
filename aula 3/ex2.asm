	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "\n O valor binário é: "
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_char, 11
	
	.text
	.globl main

main:	li $t0, 0 #i=0
	li $t1,0
	li $t2,0
	la $a0, str1
	li $v0, print_string
	syscall
	
	li $v0, read_int
	syscall
	move $t2,$v0
for:	
	bge $t0,32,endfor
	
	andi $t1,$t2,0x80000000 #$t1=bit $t2=value
	
if1:
	rem $t3, $t0, 4
	bnez $t3, if
	la $a0, ' '
	li $v0, print_char
	syscall	
if:	
	bnez $t1,else
	
	la $a0, '0'
	li $v0, print_char
	syscall
	j endIf	
else:
	la $a0, '1'
	li $v0, print_char
	syscall			
endIf:	
	sll $t2,$t2,1
	addi $t0,$t0,1 
	j for
	
endfor:
	jr $ra		
