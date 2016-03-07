.globl main
main:
	#addi $a0, $zero, 75
	#addi $a1, $zero, 25
	add $s0, $a0, $zero # a = A
	add $s1, $a1, $zero # b = B
	addi $v0, $zero, 1 # gcd(a, b) >= 1
	add $v1, $zero, $zero # lcm(a, b) >= 0

WHILE:
	beq $s0, $zero, AISZERO # if a == 0 goto AISZERO
	beq $s1, $zero, BISZERO # if b == 0 goto BISZERO

	srl $t0, $s0, 1 # t0 = a / 2
	sll $t0, $t0, 1 # t0 = t0 * 2
	srl $t1, $s1, 1 # t1 = b / 2
	sll $t1, $t1, 1 # t1 = t1 * 2
	bne $t0, $s0, AISODD
	bne $t1, $s1, BISODD
ABAREEVEN:
	sll $v0, $v0, 1 # gcd *= 2
	srl $s0, $s0, 1 # a /= 2
	srl $s1, $s1, 1 # b /= 2
	j WHILE

AISODD:
	bne $t1, $s1, ABAREODD
	srl $s1, $s1, 1 # b /= 2
	j WHILE

BISODD:
	bne $t0, $s0, ABAREODD
	srl $s0, $s0, 1 # a /= 2
	j WHILE

ABAREODD:
	sub $t2, $s0, $s1 # t2 = (a-b)
	bgt $t2, $zero, POSITIVE

NEGATIVE: # b > a
	sub $t2, $zero, $t2 # t2 = -t2
	srl $t2, $t2, 1 # t2 /= 2
	add $s1, $t2, $zero # b = t2
	j WHILE

POSITIVE: # a > b
	srl $t2, $t2, 1 # t2 /= 2
	add $s0, $t2, $zero # a = t2
	j WHILE

ENDWHILE:

AISZERO:
	beq $s1, $zero, COUNTLCM # if b == 0 goto COUNTLCM
	mul $v0, $v0, $s1 # gcd *= b
	j COUNTLCM

BISZERO:
	beq $s0, $zero, COUNTLCM # if a == 0 goto COUNTLCM
	mul $v0, $v0, $s0 # gcd *= a
	j COUNTLCM

COUNTLCM:
	mul $v1, $a0, $a1 # lcm = A*B
	div $v1, $v1, $v0 # lcm /= gcd
