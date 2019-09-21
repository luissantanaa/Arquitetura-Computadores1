# Mapa de registos:
# $t0 – soma
# $t1 – value
# $t2 - i 
	.data
str1:	.asciiz "Introdua um numero: "
str2:	.asciiz "Valor ignorado "
str3:	.asciiz "Soma dos valores:  "
	.eqv print_string,4 
	.eqv read_int,5
	.eqv print_int,1
	.text 
	.globl main
	
main:   li $t0,0
	li $t2,0

for:	bge $t2,2,endfor
	la $a0,str1
	li $v0,print_string
	syscall
	 
	li $v0, read_int
	syscall
	move $t1,$v0
	
if:	ble $t1,0,else 
	add $t0,$t0,$t1
	j endif

else: 	la $a0,str2
	li $v0,print_string
	syscall
	
endif:  addi $t2,$t2,1
	j for

endfor: la $a0,str3
	li $v0,print_string
	syscall

	li $v0,print_int
	move $a0,$t0
	syscall
	
	jr $ra