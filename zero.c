#include <stdio.h>
#include <stdlib.h>

int** zeros(int x, int y) {
	int i;
	int** z = (int*)malloc(sizeof(int*)*x);
	for(i = 0; i < x; i++) {
		z[i] = (int*)malloc(sizeof(int)*y);
	}
	return z;
}
