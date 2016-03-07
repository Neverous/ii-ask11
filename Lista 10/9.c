/* 2011
 * Maciej Szeptuch
 * II UWr
 */

int array[10000][100000];
int main(void)
{
	/* V1 */
	/*
	for(int h = 0; h < 10000; ++ h)
		for(int w = 0; w < 100000; ++ w)
			array[h][w] *= 2;
			*/
	/* V2 */
	for(int w = 0; w < 100000; ++ w)
		for(int h = 0; h < 10000; ++ h)
			array[h][w] *= 2;
	return 0;
}
