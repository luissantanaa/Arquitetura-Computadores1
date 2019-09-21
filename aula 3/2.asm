# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
 .data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "\nO valor em binário é: "
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11
 	.text
 	.globl main
 
 main: la $a0,str1
       li $v0,print_string
       syscall
       
       ori $v0,$0,read_int
       syscall
      
       ori $t0,$v0,0
       syscall
       
       li $t2,0

for:   blt $t2,32,endfor
       syscall
       
       andi $t1,$t0,0x80000000
       bne $t1,0,else
       syscall
       
       li 