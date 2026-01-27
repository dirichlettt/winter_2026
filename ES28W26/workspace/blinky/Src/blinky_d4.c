//#include "stm32C0xx.h"			// All the port definitions are here
#include <ES28.h>

// Bit 0 of RCC->IOPENR enables clock for GPIOA
#define GPIOBEN		(1U<<1)		// 0b 0000 … 0000 0001 (32-bit)

// Bit 5 of Port A is wired to the LED
//#define LED_PIN		(1U<<5)		// 0b 0000 … 0010 0000
#define LED_PIN (1U<<10)

int main(void) {
	RCC->IOPENR |= GPIOBEN;		// 1. Enable clock access to GPIOA

	GPIOB->MODER |= (1U<<20);	// 2. Configure PB10 (Port B, bit 10)
	GPIOB->MODER &= ~(1U<<21);	//    as output pin

	while(1) {
		GPIOB->ODR |= LED_PIN;	// 3. Set set bit 5 to turn LED on // ODR = Output Data Register
//		for (int i=0; i<100000; i++);		// kill some time
		delay_ms(1000);

		GPIOB->ODR &= ~LED_PIN;	// 4. Clear bit 5 to turn LED off
//		for(int i=0; i<100000; i++);	// kill some time
		delay_ms(500);
	}
	return 0;					// never reached


}
