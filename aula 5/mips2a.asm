#Mapa de registos 
#p: $t0
#*p: $t1
#lista+SIZE: $t2

	.data
str1:	.asciiz "; "
str2:	.asciiz "\nConteudo do array:\n"
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15 #diretiva alinha endereço múltiplo de 4
	.eqv print_int10, 1
	.eqv print_str, 4
	.eqv SIZE, 10
	
	.text
	.globl main
main:	la $a0, str2
	li $v0, print_str
	syscall
	
	la $t0, lista #p=lista
	li $t2, SIZE #$t2=SIZE
	sll $t2, $t2, 2
	addu $t2, $t0, $t2 #$t2=lista + SIZE
	
while:	bge $t0, $t2, endw #while (p<lista+SIZE)
	lw $t3, 0($t0) #nova variavel
	
	move $a0, $t3
	li $v0, print_int10
	syscall
	
	la $a0, str1
	li $v0, print_str
	syscall
	addu $t0, $t0, 4 #p++
	
	j while
	
endw:	jr $ra
	
