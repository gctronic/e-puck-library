
#include "translatorI2C.h"

#include "p30F6014A.h"
#include "stdio.h"
#include "string.h"

#include <motor_led/e_init_port.h>
#include <I2C/e_I2C_protocol.h>
#include <uart/e_uart_char.h>
#include "math.h"
#include <utility/utility.h>

#define uart_send_static_text(msg) do { e_send_uart1_char(msg,sizeof(msg)-1); while(e_uart1_sending()); } while(0)
#define uart_send_text(msg) do { e_send_uart1_char(msg,strlen(msg)); while(e_uart1_sending()); } while(0)

#include "memory.h"
extern char buffer[BUFFER_SIZE];

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		act as ASL RS232 - I2C translator
//
// 1 byte messages, protocol ASL-EPFL 2006
//
// in:  RS232 requests from the host PC
// out: answers
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void run_translatorI2C() {
	unsigned char mod, reg, val;

	uart_send_static_text("\f\a"
	                      "WELCOME to the RS232 - I2C translator on e-Puck\r\n"
								" 1 byte protocol ASL-EPFL 2006\r\n");
	e_i2cp_init();

	while (1) {
		e_getchar_uart1((char*)&mod);	// #module
		mod=(unsigned char) (mod<<1);
		e_getchar_uart1((char*)&reg);	// #register
		if (reg>127) {	// read
			e_i2cp_enable();
			val= e_i2cp_read(mod, reg&0x7f);	// read I2C
			e_i2cp_disable();
			e_send_uart1_char((char*)&val, 1);
		} else {	// write
			e_getchar_uart1((char*)&val);	// #value
			e_i2cp_enable();
			e_i2cp_write(mod, reg, val);	// write I2C
			e_i2cp_disable();
		}
	}
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		act as ASL RS232 - I2C translator
//
// multi byte messages, protocol ASL-ETHZ 2007
//
// in:  RS232 requests from the host PC
// out: answers
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

void run_translatorI2C_b() {
	unsigned char mod, reg;

	uart_send_static_text("\f\a"
	                      "WELCOME to the RS232 - I2C translator on e-Puck\r\n"
								" multi byte protocol ASL-ETHZ 2007\r\n");
	e_i2cp_init();

	while (1) {
		e_getchar_uart1((char*)&mod);	// #module
		e_getchar_uart1((char*)&reg);	// #register
		if (mod>127) {	// read
		} else { //write
		}
	}
}
