#include <stdio.h>

int fat(int x) {
	if (x > 1)
		return x * fat(x-1);
	return 1;
}
