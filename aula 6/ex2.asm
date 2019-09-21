# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
# *p2: $t1
# aux: $t2

	.data
x:      .asciiz "ola "
	.eqv read_string,8
	.eqv print_string,4
	.text
	.globl main
	
main: 	addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,x
	jal strrev
	
	li $v0,print_string
     	move $a0,$t2
      	la $a0,x
      	syscall
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra

strrev: addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	move $s0,$a0
	move $s1,$a0
	move $s2,$a0
	

while_1: lb $t1,0($s2)  
	 beq $t1,'\0',while_2
	 addiu $s2,$s2,1
	 j while_1

endwh_1: subiu $s2,$s2,1

while_2: bge $s1,$s2,endwh_2
	 move $a0,$s1
	 move $a1,$s2
	 jal exchange
	 addiu $s1,$s1,1
	 subiu $s2,$s2,1
	 lw $ra,0($sp)
	 lw $s0,4($sp)
	 lw $s1,8($sp)
	 lw $s2,12($sp)
	 addiu $sp,$sp,16

endwh_2: jr $ra

exchange: addiu $sp,$sp,-4
	  sw $ra,0($sp)
	  move $t2,$a0
	  move $a0,$a1
	  move $a1,$t2
	  lw $ra,0($sp)
	  addiu $sp,$sp,4
	 
	  li $v0,print_string
     	move $a0,$t2
      	syscall
	  
	  jr $ra	  
	
