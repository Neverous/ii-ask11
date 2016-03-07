main: 
	li $t0, 4
	sub $sp, $sp, $t0
	lui $t0, 0x01AB # $t0 = 0x01ABCDEF
	ori $t0, 0xCDEF
	sw $t0, 0($sp)

	lb $t1, 0($sp) 
	lb $t2, 1($sp) 
	lb $t3, 2($sp) 
	lb $t4, 3($sp)
.data
.asciiz "ASK2011"
