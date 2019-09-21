	.data
str1:.asciiz "Introduza 2 numeros\n"
str2:.asciiz "A Soma dos dois numeros é"
	.eqv print_string,4
	.eqv read_int,
	.eqv print_int10,
	
	.text
	.globl main

main:	la $a0,str1
	ori $v0,$0,print_string
	syscall
	
	ori $v0,$0,read_int
	syscall
	
	ori $t0,$v0,$0
	jr $ra