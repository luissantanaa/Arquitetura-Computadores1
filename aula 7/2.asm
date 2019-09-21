##############################################
# FALTA A FUNÇÃO STREEV (VAI FAZE-LA BURRO!) #
##############################################
# Mapa de registos (MAIN)
# str: $s0
# val: $s1
# O main é, neste caso, uma sub-rotina intermédia 

		
	.data
str:	.space 34
	.eqv STR_MAX_SIZE,33
	.eqv read_int,5
	.eqv print_string,4
	.text
	.globl main
	
main: addiu $sp,$sp,-12
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)


do:	li $v0,read_int
	syscall
	move $s1,$v0
	jal itoa

while:	beqz $s1,endw
endw:	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	addiu $sp,$sp,12
	lw $v0,0
	jr $ra

# Mapa de registos (RESTANTES FUNÇÕES)
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# v: $t0-> $s4 
# digit: $t0
# *p: $t1
# Sub-rotina intermedia

itoa:	addiu $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	move $s0,$a0
	move $s1,$a1
	move $s2,$a2
	
	lb $t1,0($s2) #*p=s
	
do:	divu $s0,$s1  # estas duas linhas sao
	mfhi $t0      # n % b
	mflo $s0      # n / b
	addiu $t1,$t1,1 # *p++
	jal toascii

while:	blez $s0,enddo # while(n>0)
	j do

enddo:	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
	addu $t1,$t1,'\0' # *p = '\0'
	jal streev
	lw $v0,($s2)
	jr $ra
	
	
toascii: addiu $sp,$sp,-24
	 sw $ra,0($sp)
	 sw $s0,4($sp)
	 sw $s1,8($sp)
	 sw $s2,12($sp)
	 sw $s3,16($sp)
	 sw $s4,20($sp)
	 move $s0,$a0
	 move $s1,$a1
	 move $s2,$a2
	 move $s4,$t0
	 
	 addu $s4,$s4,'0' # v+= '0'

if:	ble $s4,'9',endif # if(v>9)
	addu $s4,$s4,7
	j if	

endif:	 lw $ra,0($sp)
	 lw $s0,4($sp)
	 lw $s1,8($sp)
	 lw $s2,12($sp)
	 lw $s3,16($sp)
	 lw $s4,20($sp)
	 addiu $sp,$sp,24
	 lw $v0,($s4)
	 jr $ra
	 
