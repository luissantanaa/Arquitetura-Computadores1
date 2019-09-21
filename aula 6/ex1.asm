# $t0--*s
# $t1--len

	.data
 str1:	.asciiz "\nIntroduza uma frase: "
 x:     .asciiz "ola "
	.eqv read_string,8
	.eqv print_int,1
	.eqv print_string,4
	.text
	.globl main

main:	#la $a0,str1
	#li $v0,print_string
	#syscall
	
	#li $v0,read_string
	#syscall	
	la $a0,x
	jal strlen
	move $t0,$v0
	
	li $v0,print_int
     	move $a0,$t0
      	syscall
      	
      	li $v0,0
      	jr $ra
      	#li $v0,10
      	#syscall
	
	
strlen: li $t1,0
while: 	lb $t0,0($a0)
	addiu $a0,$a0,1
	beq $t0,'\0',endw
	addiu $t1,$t1,1
	j while
endw: move $v0,$t1
      jr $ra
