#include <stdio.h>

int main (int argc, char** argv)
{
	int count;
	cudaGetDeviceCount(&count);

	for (int i = 0; i < count; i++) {
		cudaDeviceProp prop;
		cudaGetDeviceProperties(&prop, i);

		printf ("device #%d/%d\n", i+1, count);
 		printf ("    name: %s\n", prop.name);
		printf ("    warpSize: %d\n", prop.warpSize);
	}

	return 0;	
}

