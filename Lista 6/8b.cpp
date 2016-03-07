/* 2011
 * Maciej Szeptuch
 * II UWr
 */
#include<cstdio>
//#define DEBUG(args...) fprintf(stderr, args)
#define DEBUG(args...)

int main(void)
{
	/*
	 * addi $t1, $s0, 400
	 * LOOP: lw $s1, 0($s0)
	 * add $s2, $s2, $s1
	 * lw $s1, 4($s0)
	 * add $s2, $s2, $s1
	 * addi $s0, $s0, 8
	 * bne $t1, $s0, LOOP
	 */
	i = MemArray + 400; // MemArray + 100
	while(i != MemArray)
	{
		x = MemArray[0];
		result += x;
		x = MemArray[1];
		result += x;
		MemArray += 8; // += 2
	}
	// 301 rozkazów?

	return 0;

}

