main:
	addi $v0, $zero, 5
	syscall
	add $a0, $zero, $v0
	jal Fibonacci
	add $a0, $zero, $v0
	addi $v0, $zero, 1
	syscall
	j END
	
Fibonacci:
	addi $t0, $zero, 2
	blt $a0, $t0, ONE
	subi $sp, $sp, 4
	sw $ra, 0($sp) # RETURN PLACE
	subi $sp, $sp, 4
	sw $s0, 0($sp) # N - 1
	subi $a0, $a0, 1
	jal Fibonacci
	add $s0, $zero, $v0
	subi $a0, $a0, 1
	jal Fibonacci
	add $v0, $s0, $v0
	lw $s0, 0($sp) # RESTORE $s0
	addi $sp, $sp, 4
	lw $ra, 0($sp) # RESTORE $ra
	addi $sp, $sp, 4
	addi $a0, $a0, 2
	jr $ra# RETURN $v0 = $s0 + $v0 / fibn = fib(n-1) + fib(n-2)
	
ONE:
	addi $v0, $zero, 1
	jr $ra# RETURN $v0 = 1
	
END:	