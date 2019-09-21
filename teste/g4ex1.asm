	.data
	.eqv SIZE,20
	.eqv read_string,8
	.eqv print_int,1
str:	.space SIZE
	.text
	.globl main
	
main:	li $t1,0
	li $t2,0
	la $a0,str
	li $a1,SIZE
	li $v0,read_string
	syscall
	
while:	la $t3,str
	addu $t4,$t3,$t2
	lb $t5,0($t4)
	beq $t5,'\0',endwh
if:	blt $t5,0,endif
	bgt $t5,9,endif
	addi $t1,$t1,1
endif:	addi $t2,$t2,1
	j while	
endwh:	li $v0,print_int
	la $a0,0($t1)
	syscall
	jr $ra	