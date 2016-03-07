.globl main
main:
	addi $t1, $zero, 4 # Stała 4
	sub $s1, $s2, $s0 # $s1 = $s2 - $s0 / g = h - f
	lw $t0, 4($s4) # $t0 = $s4[1] / $t0 = B[1]
	add $s1, $s1, $t0 # $s1 = $s1 + $t0 / g += B[1]
	add $t0, $s1, $zero # $t0 = $s1 + 0 / $t0 = g
	mul $t0, $t0, $t1 # $t0 = $t0 * $t1 / $t0 = $t0 * 4
	add $t0, $t0, $s4 # $t0 = $t0 + $s4 / $t0 = &B[g]
	lw $t0, 0($t0) # $t0 = B[g]
	mul $t0, $t0, $t1 # $t0 = $t0 * $t1 / $t0 = B[g] * 4
	add $t0, $t0, $t1 # $t0 = $t0 + $t1 / $t0 = 4B[g] + 4
	add $t0, $t0, $s3 # $t0 = $t0 + $s4 / $t0 = &A[B[g] + 1]
	lw $s0, 0($t0) # f = A[B[g] + 1]
