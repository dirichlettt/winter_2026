#include "stm32C0xx.h"			// All the port definitions are here

// Bit 0 of RCC->IOPENR enables clock for GPIOA
#define GPIOAEN		(1U<<0)		// 0b 0000 … 0000 0001 (32-bit)

// Bit 5 of Port A is wired to the LED
#define LED_PIN		(1U<<5)		// 0b 0000 … 0010 0000

int main(void) {
	RCC->IOPENR |= GPIOAEN;		// 1. Enable clock access to GPIOA

	GPIOA->MODER |= (1U<<10);	// 2. Configure PA5 (Port A, bit 5)
	GPIOA->MODER &= ~(1U<<11);	//    as output pin

	int period = 0;
	int max_period = 100000;
	int delta_period = 5000;

	while(1) {
		GPIOA->ODR |= LED_PIN;	// 3. Set set bit 5 to turn LED on // ODR = Output Data Register
		for (int i=0; i<period; i++);		// kill some time

		GPIOA->ODR &= ~LED_PIN;	// 4. Clear bit 5 to turn LED off
		for(int i=0; i<period; i++);	// kill some time

		period = (period - delta_period) % max_period; // decrement the period
		if (period == 0) {
			period +=1 ;
		}
	}
	return 0;					// never reached


}
