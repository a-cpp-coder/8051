#include<reg51.h>


sbit led = P2 ^ 0; // led at PORT 2 pin 0

void Delay(void); // Delay function declaration

void main() // main function
{
  led = 0; //output PORT pin

  while (1) // infinite loop
  {
    led = 1; // LED ON
    Delay();
    led = 0; // LED OFF
    Delay();
  }
}

void Delay(void) // delay function
{
  int j;
  int i;

  for (i = 0; i < 10; i++)
  {
    for (j = 0; j < 10000; j++)
    {
    }
  }
}				 