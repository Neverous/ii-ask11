count: # (*, n, x)
	add $t0, $zero, $zero # res = 0
	add $t1, $zero, $a0 # &a[0]
	sll $t2, $a1, 2 # n * 4
	add $t2, $t2, $a0 # &a[n]
FOR:
	beq $t1, $t2, ENDFOR
	lw $t3, 0($t2) # a[i]
	bne $t3, $a2, ENDIF #a[i] != x
	addi $t0, $t0, 1
ENDIF:
	addi $t2, $t2, 4
	j FOR
ENDFOR:
	add $v0, $zero, $t0
	jr $ra