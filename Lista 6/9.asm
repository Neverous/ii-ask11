.globl main
main:
	#addi $s1, $zero, 3
	add $s0, $zero, $zero # miejsce na wynik
	addi $t1, $zero, 2 # stała 2
	add $t0, $zero, $s1 # $t0 = $s1
WHILE:
	srl $t2, $t0, 1 # $t2 = $t0 / 2
	sll $t2, $t2, 1 # $t2 = $t2 * 2
IF:
	beq $t0, $t2, ENDIF # if $t2 == $t0 goto ENDIF
	addi $s0, $s0, 1 # res += 1
ENDIF:
	srl $t0, $t0, 1 # $t0 = $t0 / 2
	bgt $t0, $zero, WHILE # if $t0 > $zero goto WHILE
ENDWHILE:
