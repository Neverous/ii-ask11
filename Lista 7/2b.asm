# ONLINE
main:
	addi $s0, $zero, 10 # '\n'
	addi $s1, $zero, 90 # 'Z'
	addi $s2, $zero, 32 # ' '
	add $t0, $zero, $sp # miejsce na wynik
WHILE:
	addi $v0, $zero, 12
	syscall # Wczytaj znak
	subi $t0, $t0, 4 # zarezerwuj miejsce
	beq $v0, $s0, ENDWHILE # Skończ na \n
	beq $v0, $s2, SAVE # spacje olewamy
	bgt $v0, $s1, SMALL # mała litera
BIG:
	addi $v0, $v0, 32 # zmniejsz litere
	j SAVE
SMALL:
	subi $v0, $v0, 32 # powieksz litere
	j SAVE
SAVE:
	sw $v0, 0($t0)
	j WHILE
ENDWHILE:
	sw $v0, 0($t0)
	add $t0, $zero, $sp # wypisywanie wyniku
PRINT:
	subi $t0, $t0, 4
	addi $v0, $zero, 11
	lw $a0, 0($t0)
	syscall # wypisz znak
	bne $a0, $s0, PRINT
ENDPRINT: