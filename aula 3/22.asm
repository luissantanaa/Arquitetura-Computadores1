# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
 .data
str1: .asciiz "Introduza um numero: " 
str2: .asciiz "\nO valor binario é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.text
	.globl main
	
main:   la $a0,str1
	li $v0,print_string
	syscall
	
	li $v0, read_int
	syscall
	move $t0,$v0
	
	
	li $t2,0
	li $t8,0
for:    bge $t2,32,endfor 		#$t0 >= $t1
	
	
cenas:	andi $t1,$t0,0x80000000

if_flag1: beq $t8,1,if

if_flag2: beqz $t1,endif	 	 


if:	li $t8,1
	remu $t3,$t2,4
	bnez $t3,if_0
	li $v0, print_char
	la $a0, ' '
	syscall

if_0:	bnez $t1,else 			#$t0 <> $t1
	li $v0,print_char
	la $a0,'0'
	syscall	
	j endif

else:   li $v0,print_char
	la $a0,'1'
	syscall
	
	
endif:
	sll $t0,$t0,1
	addiu $t2,$t2,1
	j for
endfor: 
	jr $ra
