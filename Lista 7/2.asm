# ONLINE
main:
	addi $s0, $zero, 10 # '\n'
	addi $s1, $zero, 90 # 'Z'
	addi $s2, $zero, 32 # ' '
WHILE:
	addi $v0, $zero, 12
	syscall # Wczytaj znak
	add $a0, $v0, $zero # przepisz jako argument dla wypisywania
	beq $a0, $s0, ENDWHILE # Skończ na \n
	beq $a0, $s2, PRINT
	bgt $a0, $s1, SMALL
BIG:
	addi $a0, $a0, 32 # zmniejsz litere
	j PRINT
SMALL:
	subi $a0, $a0, 32 # powieksz litere
	j PRINT
PRINT:
	addi $v0, $zero, 11
	syscall # wypisz
	j WHILE
ENDWHILE:
	addi $v0, $zero, 11
	add $a0, $zero, $s0
	syscall # zakończ '\n'