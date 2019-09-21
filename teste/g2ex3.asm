	#t0==a
	#t1==b
	#t2==a+b
	.data
str1:	.asciiz "Introduza 2 numeros\n"
str2:	.asciiz "A soma dos dois numeros é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	
	.text
	.globl main
	
main: 	la $a0,str1
	ori $v0,$0,print_string
	syscall 
	
	ori $v0,$0,read_int
	syscall
	ori $t0,$v0,0
	ori $t1,$v0,0
	syscall
	
	la $a0,str2
	ori $v0,$0,print_string
	syscall
	
	and $t2,$t1,$t0
	andi $a0,$t2,0
	ori $v0,$0,print_int10
	syscall