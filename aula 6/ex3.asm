# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# i: $t1
# src: $t2
# dst: $t3

	.data
str:    .asciiz "ola "
	.eqv print_string,4
	.text
	.globl main
	
main: addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,str
	jal strcpy
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	move $a0,$s0
	move $v0,$a0
	#li $v0,print_string
	#syscall
	jr $ra

#strcpy: li $t1,0
#	addiu $sp,$sp,-8
#	sw $ra,0($sp)
#	sw $s0,4($sp)
#	
#	move $s0,$a0

#while_1: lb $t2,0($s0) 
#	beq $t2,'\0',endwh_1	
#	sb $t3($t2)
#	addiu $t0,$t0,1
#	lb $t2($t1)
#	j while_1
#endwh_1: lw $ra,0($sp)
#	lw $s0,4($sp)
#	addiu $sp,$sp,8
#	jr $ra    

                   
   # str: $a0 -> $s0 (argumento é passado em $a0)
# i: $t0
# src: $a1 
# dst: $a2 
# $t4/$t5/$t6 sao auxiliares na passagem dos bytes do array para os registos a serem utilizados
# src[i] ->$t2
# dst[i] ->$t3

strcpy: 
	addiu $sp,$sp,-8
	sw $ra,0($sp)
	sw $s0,4($sp)
	
	move $s0,$a0
	
	li $t0,0 #i=0

do: 	addu $t4, $t0, $a0  #obter o valor de src na posição i
	lb $t2,($t4) #guardar o valor obtido anteriormente (src[i])
	lb $t3,($t4) #criar dst[i]
	move $t3,$t2 #dst[i]=src[i]

while:	addiu $t0,$t0,1
	addu $t4, $t0, $a0  #obter o valor de src na posição i
	lb $t2,($t4) #guardar o valor obtido anteriormente (src[i])
	beq $t2,'\0',endw #while(src[i++] != '\0')
	move $a2,$t3 #dst=dst[i]
	j do

endw:	move $s0,$a2
	lw $ra,0($sp)
	lw $s0,4($sp)
	addiu $sp,$sp,8
	jr $ra    
	
	