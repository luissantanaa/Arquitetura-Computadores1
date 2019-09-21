# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx 

	.data
	.eqv print_int10,1
str:    .asciiz "2016 e 2020 sao anos bissextos"
 	.text
 	.globl main
 	
 main:	addiu $sp,$sp,-4
 	sw $ra,0($sp)
 	la $a0,str
 	jal atoi
 	
 	move $a0,$v0
 	li $v0,print_int10
 	syscall
 	lw $ra,0($sp)
 	addiu $sp,$sp,4
 	li $v0,0
 	jr $ra
 	
 atoi: li $v0,0
 while:	lb $t0,0($a0)
 	bltu $t0,'0',endwhl
 	bgtu $t0,'9',endwhl
 	subu $t1,$t0,'0'
 	addiu $a0,$a0,1
 	mulu $v0,$v0,10
 	addu $v0,$v0,$t1
 	j while
 
 endwhl: 
 	jr $ra
