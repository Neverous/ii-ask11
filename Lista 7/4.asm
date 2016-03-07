main:
	addi $v0, $zero, 5
	syscall
	add $a0, $zero, $v0
	addi $v0, $zero, 5
	syscall
	add $a1, $zero, $v0
	jal Newton
	add $a0, $zero, $v0
	addi $v0, $zero, 1
	syscall
	j END
Newton:
	beq $a1, $zero, ONE
	beq $a0, $a1, ONE
	subi $sp, $sp, 4
	sw $ra, 0($sp) # RETURN PLACE
	subi $sp, $sp, 4
	sw $s0, 0($sp) # N - 1, K
	subi $a0, $a0, 1
	jal Newton
	add $s0, $zero, $v0
	subi $a1, $a1, 1
	jal Newton
	add $v0, $s0, $v0
	lw $s0, 0($sp) # RESTORE $s0
	addi $sp, $sp, 4
	lw $ra, 0($sp) # RESTORE $ra
	addi $sp, $sp, 4
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	jr $ra # RETURN $v0 = $s0 + $v0 / Newton(n, k) = Newton(n-1, k) + Newton(n - 1, k - 1)
	
ONE:
	addi $v0, $zero, 1
	jr $ra # RETURN $v0 = 1
	
END: