#include <stdint.h>

#define reg_uart_div (*(volatile uint32_t*)0x02000004)
#define reg_uart_data (*(volatile uint32_t*)0x02000008)

void set_uart_div(uint32_t div) {
	reg_uart_div = div;
}

void putchar(char c)
{
    if (c == '\n')
        putchar('\r');
    reg_uart_data = c;
}

void print(const char *p)
{
    while (*p)
        putchar(*(p++));
}

void main() {
	set_uart_div(271);
	print("Booted!");
}
