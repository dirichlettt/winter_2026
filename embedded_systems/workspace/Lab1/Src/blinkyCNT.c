/* NAME: 		 SOLEIL DEMICK
 * COURSE: 		 ENGS 28 261 LAB 1
 * PROGRAM NAME: blinkyCNT.c
 * DESCRIPTION:  Display an incrementing 3-bit binary number with external LEDs.
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
#define LED1_PIN (1U<<5)
#define LED2_PIN (1U<<6)
#define LED_PIN3 (1U<<7)

// easy reference for setting/clearing all pins at once
#define LED_ALL (LED1_PIN | LED2_PIN | LED_PIN3)
// counter to track which pins are high
uint32_t count = 0;

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
		GPIOA->ODR &= ~LED_ALL; // clear pins
		GPIOA->ODR |= count<<5; // shift counter to correct position and set bits 5-7
		delay_ms(500);
		// increment count mod 8 to get repeating sequential pattern
		count++;
		count %= 8;
	}
	return 0;
}
