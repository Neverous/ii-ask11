.globl main
main:
	addi $t0, $zero, 1
IF:
	ble $s0, $t1, ENDIF # if f <= 1 goto ENDIF
	add $s1, $s0, $s0 # g = f + f
	add $s0, $zero, $zero # f = 0
ENDIF:
	add $s1, $s1, $t0
	
