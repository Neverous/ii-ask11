count: # ([], n, x)
	add $t0, $zero, $zero #res
	add $t1, $zero, $zero #i
FOR:
	beq $t1, $a1, ENDFOR
	sll $t2, $t1, 2
	add $t3, $a0, $t2
	lw $t3, 0($t3) # a[i]
	bne $t3, $a2, ENDIF #a[i] != x
	addi $t0, $t0, 1
ENDIF:
	addi $t1, $t1, 1
	j FOR
ENDFOR:
	add $v0, $zero, $t0
	jr $ra