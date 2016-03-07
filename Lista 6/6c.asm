.globl main
main:
	add $s1, $zero, $zero # g = 0
	addi $s0, $zero, 1 # f = 1
	addi $t0, $zero, 10 # end = 10
WHILE:
	add $s1, $s1, $s0 # g += f
	addi $s0, $s0, 1
	ble $s0, $t0, ENDWHILE # if f <= 10 goto WHILE
ENDWHILE:

