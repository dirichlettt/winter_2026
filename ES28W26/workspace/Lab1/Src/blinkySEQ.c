/* NAME: 		 SOLEIL DEMICK
 * COURSE: 		 ENGS 28 261 LAB 1
 * PROGRAM NAME: blinkySEQ.c
 * DESCRIPTION:  Sequentially blink 3 LEDs in a repeating fashion.
 * DEPENDENCIES: N/A
 * I/O PINS:
 * 		PA 5, 6, 7 : OUTPUT, EXTERNAL LEDS
 * REVISIONS:
 * 		BASED ON blinky.c
 */

// INCLUDE FILES
#include "ES28.h"

// CONSTANTS
// Bit 0 of RCC->IOPENR enables clock for GPIOA
#define GPIOAEN	(1U<<0)		// 0b 0000 … 0000 0001 (32-bit)

// Port A pins 5, 6 7
#define LED_PIN1 (1U<<5)
#define LED_PIN2 (1U<<6)
#define LED_PIN3 (1U<<7)

// easy reference for setting/clearing all pins at once
#define ALL_PINS (LED_PIN1 | LED_PIN2 | LED_PIN3)
// counter to track which pin is high
uint32_t count = (1<<0);

int main(void) {
	RCC->IOPENR |= GPIOAEN;		// Enable clock access to GPIOA

	// Configure pins as outputs
	GPIOA->MODER |=  (1U<<10); // PA5
	GPIOA->MODER &= ~(1U<<11);
	GPIOA->MODER |=  (1U<<12); // PA6
	GPIOA->MODER &= ~(1U<<13);
	GPIOA->MODER |=  (1U<<14); // PA7
	GPIOA->MODER &= ~(1U<<15);

	while(1) {
		GPIOA->ODR &= ~ALL_PINS; // reset pins
		GPIOA->ODR |= count<<5;
		delay_ms(500);
		// shift counter left each loop and reset after overflowing
		count <<= 1;
		// mod by 7 because modding by 8 simply clears the counter once it reaches 8 = 1U<<3
		count %= 7;

	}
	return 0;
}
