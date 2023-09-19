// write an 8051 C program to toggle all the bits of P1 continuously
#include <reg51.h>

void main(void){
	for(;;){
		P1 = 0x55;
		P1 = 0xAA;
	}
}