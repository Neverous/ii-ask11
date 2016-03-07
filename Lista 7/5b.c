int count(int *a, int n, int x)
{
	int res = 0;
	int *i;
	for(i = a; i != &a[n]; ++ i)
		if(*i == x)
			++ res;

	return res;
}
