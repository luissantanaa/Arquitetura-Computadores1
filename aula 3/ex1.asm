	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos é: "
	.eqv print_int, 1
	.eqv print_string, 4
	.eqv read_int, 5
	
	.text
	.globl main
	
main:	li $t0, 0	#i=0
	li $t1, 0	#value=0
	li $t2, 0	#soma=0
	
for:	
 	bge $t0,5, endfor	#if(i>=5) -> endfor(termina o for)
 	
 	la $a0, str1	#vai guardar a str1 no $a0
 	li $v0, print_string #vai imprimir a str1
 	syscall
 	
 	li $v0, read_int #$v0 vai ler o inteiro
 	syscall
 	
 	move $t1, $v0	#vai mover o $v0 para o $t1
 	
if:
	blez $t1, else #if(v=<0) -> else
	add $t2, $t2, $t1
	j endIf
	
else:
 	la $a0, str2
 	li $v0, print_string
 	syscall
 	
endIf:
	addi $t0, $t0, 1 #i++
	j for #depois do if o endif é o que vai ter o incremento do i e o jump para o for(quase sempre)
	
endfor: 
	la $a0, str3 #vai guardar a string str3
	li $v0, print_string #vai imprimir a str3
	syscall
	
	move $a0, $t2 #vai guardar o $t2
	li $v0, print_int #vai imprimir a soma
	syscall
	
	jr $ra