	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos valores é"
	.eqv print_int,1
	.eqv print_string,4
	.eqv read_int,5
	.text
	.globl main
	
main:	li $t0,0
	li $t2,0
for:	bge $t2,5,endfor
	la $a0,str1
	li $v0,print_string
	syscall
	
	li $v0,read_int
	syscall
	
	move $t1,$v0

if:	blez $t1,else
	add $t0,$t0,$t1
	j endif

else:	la $a0,str2
	li $v0,print_string
	syscall
	
endif:	addi $t2,$t2,1
	j for
endfor:	li $v0,4
	la $a0,str3
	syscall
	
	li $v0,1
	move $a0,$t0
	syscall
	jr $ra	
