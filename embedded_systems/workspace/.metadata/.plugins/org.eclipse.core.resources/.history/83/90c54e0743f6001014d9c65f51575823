#include <stdio.h>
#include "ES28.h"
#include "uart.h"

int main(void) {
	// Initialize the UART
	uart2_init();

	// A little message to show that the program has started
	printf("Counter with serial output demo\r\n");
	printf("tHex \tDecimal\r\n");

	while(1) {
		for (int count = 0; count<100; count++) {
			printf("%x\t%d\r\n", count, count);
			delay_ms(500); // slow down
		}
	}
}
