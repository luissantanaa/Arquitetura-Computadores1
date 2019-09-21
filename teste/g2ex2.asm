	.data
	.eqv print_int16,34
	.eqv print_char,11
	.text
	.globl main
	
main:	ori $t0,$0,0x00001234
	andi $a0,$t0,0x0000F000
	srl $a0,$a0,12
	ori $v0,$0,print_int16
	syscall
	
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	
	andi $a0,$t0,0x00000F00
	srl $a0,$a0,8
	ori $v0,$0,print_int16
	syscall
	
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	
	andi $a0,$t0,0x000000F0
	srl $a0,$a0,4
	ori $v0,$0,print_int16
	syscall 
	
	andi $a0,$t0,0x0000000F
	ori $v0,$0,print_int16
	syscall
	ori $v0,$0,print_char
	ori $a0,$0,' '
	syscall
	jr $ra