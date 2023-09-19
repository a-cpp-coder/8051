// A program to send hex values for ASCII characters of 012345ABCD to port P1
#include <reg51.h>
void main(void)
{
	unsigned char mynum[] = "0123456789ABCDE";	// YEs
	unsigned char z;
	for(z = 0; z <= 15; z++){
		P1 = mynum[z];
	}
}
	