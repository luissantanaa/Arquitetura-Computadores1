# Mapa de registos:
# $t0 – soma
# $t1 – value
# $t2 - i

	.data
str1: .asciiz "introduza um número: "
str2: .asciiz "valor ignorado!"
str3: .asciiz "A soma dos positivos é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,34
	.text
	.globl main

main:   li $t0,0
	li $t2,0

for: bge $t2,5,endfor
     ori $a0,$0,print_string
     syscall
     ori $v0,$0,read_int
     syscall
     ori $t1,$v0,0
     syscall

     ble $t1,0,else
     add $t1,$t2,0
     j for
     
else: ori $a0,$0,print_string
      syscall
      j endfor
      
endif: addi $t2,$t2,1
       j for

endfor: ori $a0,$0,print_string
        syscall
        ori $t0,$0,print_int10
	syscall
	jr $ra        
      
      
