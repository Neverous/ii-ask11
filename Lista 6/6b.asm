.globl main
main:
	addi $s0, $zero, 1 # f = 1
	addi $t0, $zero, 10 # t0 = 10
WHILE:
	addi $s0, $s0, 1 # f += 1
	blt $s0, $t0, WHILE # if f < 10 goto WHILE
ENDWHILE:
