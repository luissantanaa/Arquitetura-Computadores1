.text
.globl main
main:	ori $t0,$0,0x762A5C1B
	ori $t1,$0,0x89D5A3E4
	and $t2, $t0, $t1
	or $t3, $t0, $t1
	nor $t4, $t0, $t1
	xor $t5, $t0, $t1
	sll $t6, $t0,2
	srl $t7, $t0,2
	sra $t8, $t0,2
	jr $ra
