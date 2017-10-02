#include "p30F6014A.h"

#define IR_RECIEVER

#include "stdio.h"
#include "string.h"
#include "math.h"
#include <time.h>

#include <codec/e_sound.h>
#include <motor_led/e_init_port.h>
#include <motor_led/advance_one_timer/e_led.h>
#include <motor_led/advance_one_timer/e_motors.h>
#include <motor_led/advance_one_timer/e_agenda.h>
#include <camera/fast_2_timer/e_poxxxx.h>
#include <uart/e_uart_char.h>
#include <a_d/advance_ad_scan/e_ad_conv.h>
#include <a_d/advance_ad_scan/e_prox.h>
#include <a_d/advance_ad_scan/e_acc.h>
#include <a_d/advance_ad_scan/e_micro.h>
#include <bluetooth/e_bluetooth.h>
#include <motor_led/e_epuck_ports.h>
#include <acc_gyro/e_lsm330.h>
#include <I2C/e_I2C_protocol.h>

/* selector on normal extension*/

#define SELECTOR0 _RG6

#define SELECTOR1 _RG7

#define SELECTOR2 _RG8

#define SELECTOR3 _RG9

#include "memory.h"
char buffer[BUFFER_SIZE];
extern int selector;
char c;

#ifdef IR_RECIEVER
#include <motor_led/advance_one_timer/e_remote_control.h>
#define SPEED_IR 600
#endif 
#include "runaccelerometer.h"
#include "runbreitenberg_adv.h"
#include "runwallfollow.h"
#include "rungrounddirection.h"
#include <utility/utility.h>
#include "Asercom.h"
#include "runshow.h"
#include "translatorI2C.h"
#include "rungyroscope.h"
#include "runsquare.h"
#include "rundetectsound.h"

#define PI 3.14159265358979

#define uart2_send_static_text(msg) { e_send_uart2_char(msg,sizeof(msg)-1); while(e_uart2_sending()); }
#define uart1_send_static_text(msg) { e_send_uart1_char(msg,sizeof(msg)-1); while(e_uart1_sending()); }

int main() {
	//SLEEP(); while(1);

	static int version, i, r=-1, g=-1, b=-1;
	//char command[20];
	//char response[50];

	//system initialization
	e_init_port();    // configure port pins      
	e_start_agendas_processing();
        e_init_motors();
	e_init_uart1();   // initialize UART to 115200 Kbaud
	e_init_uart2(BAUD115200);   // initialize UART to 115200 Kbaud
	e_init_ad_scan(ALL_ADC);
	//e_init_ad_scan();
	//Reset if Power on (some problem for few robots)
	if (RCONbits.POR) {
		RCONbits.POR=0;
		__asm__ volatile ("reset");
	}
        
	// Decide upon program
	selector=getselector();
	sprintf(buffer, "Selector pos %d\r\n", selector);
	e_send_uart1_char(buffer, strlen(buffer));
	while(e_uart1_sending());


	if (selector==0) {
		run_accelerometer();
	} else if (selector==1) {
                run_detectsound();
	} else if (selector==2) {
		run_wallfollow();
	} else if (selector==3) {
		run_asercom();		// advanced sercom protocol
	} else if (selector==4) {	// let the robot move in a square shape
            run_square();
	} else if (selector==5) {	// sensor "feedback display"
		run_SensDispl();
	} else if (selector==6) {	// camera point to light
		run_CameraTurn();
	} else if (selector==7) {	// act like the ASL RS232 - I2C translator
		run_translatorI2C();
	} else if (selector==8) {	
		run_grounddirection();
        } else if (selector==9) {   // exploit gyroscope
            run_gyroscope();
	} else if (selector==10) {
                // enable I2C peripheral and init the camera: not sure why but it is required by the PO8030 camera (e-puck rev 1.3).
                e_i2cp_init();
                e_poxxxx_init_cam();

                // disable the I2C peripheral in order to let the gumstix extension be the master of the I2C communication,
                // and thus letting the gumstix communicating with the I2C peripherals mounted on the robot (camera, ground sensor, digital acc+gyro).
                I2CCONbits.I2CEN=0; // disable I2C peripheral
                SIO_C_DIR= INPUT_PIN;   // put the pins in input in order to be completely controlled by the gumstix
		SIO_D_DIR= INPUT_PIN;

		e_init_uart2(BAUD230400);   // the gumstix communicate with the robot at 230400 bauds
		run_asercom();

	} else if (selector==11) {	// BT configuration	

		 sprintf(buffer, "\f\a\n\n\rWELCOME to the protocol on e-Puck Bluetooth calibration");

		 e_send_uart2_char(buffer, strlen(buffer));  //send string

		while(e_uart2_sending());

		memset(buffer, 0x0, 120); 
		sprintf(buffer, "\n\rPress H (return) for help");

		 e_send_uart2_char(buffer, strlen(buffer));  //send string

 		while(e_uart2_sending());

		memset(buffer, 0x0, 120);
		
		while(1)

		{	

		   i = 0;

			c=0;

		   do

		   {

		     	if (e_getchar_uart2(&buffer[100+i])) //&command[i]))

				{	

					c=buffer[100+i];//command[i];

		    		i++;

				}	

		   }

		   while (((char)c != '\n')&&((char)c != '\x0d'));

		   buffer[100+i]='\0'; //command[i]='\0';

			

		memset(buffer, 0x0, 100);

		   switch (buffer[100]) 

		   { 

			case 'P':	e_bt_read_local_pin_number(buffer);

						sprintf(&buffer[50],"\n\rPIN code = %s",buffer);

						break;

			case 'O':	sscanf(&buffer[100],"O,%s\n",buffer);

						if(e_bt_write_local_pin_number(buffer))

							sprintf(&buffer[50],"\n\rError writting PIN");

						else

							sprintf(&buffer[50],"\n\rPIN code = %s",buffer);

						break;

			case 'M':	sscanf(&buffer[100],"M,%s\n",buffer);

						if(e_bt_write_local_name(buffer))

							sprintf(&buffer[50],"\n\rError writting Name");

						else

							sprintf(&buffer[50],"\n\rFriendly name = %s",buffer);

						break;

			case 'S':	sscanf(&buffer[100],"S,%s\n",buffer);

						if(e_bt_write_local_pin_number(buffer))

							sprintf(&buffer[50],"\n\rError writting PIN");

						else

							sprintf(&buffer[50],"\n\rPIN code = %s",buffer);

						e_send_uart2_char(&buffer[50],strlen(&buffer[50])); 

						while(e_uart2_sending());

						sprintf(&buffer[100],"e-puck_%s",buffer);

						if(e_bt_write_local_name(&buffer[100]))

							sprintf(&buffer[50],"\n\rError writting Name");

						else

							sprintf(&buffer[50],"\n\rFriendly name = %s",&buffer[100]);

						break;

			case 'N':	e_bt_read_local_name(buffer);

						sprintf(&buffer[50],"\n\rFriendly name = %s",buffer);

						break;

			case 'R':	version=e_bt_reset();

						sprintf(&buffer[50],"\n\rReset ok Firmware = %d",version);

						break;
			case 'F':	e_bt_factory_reset();
					break;

			case 'H':	uart2_send_static_text("\n\r \"F\" Factory reset");
						uart2_send_static_text("\n\r \"M,Name\" Write Name for Friendly Bluetooth name");

						uart2_send_static_text("\n\r \"N\" Read actual Friendly Bluetooth name");

						uart2_send_static_text("\n\r \"O,#\" Write # PIN number");

						uart2_send_static_text("\n\r \"P\" Read actual PIN number"); 

						uart2_send_static_text("\n\r \"R\" Soft reset Bluetooth module");	

						uart2_send_static_text("\n\r \"S,#\" Write # PIN number and same time e-puck_#");	

						

						buffer[50]='\n';

						buffer[51]='\0';

						break;

		   	default:    sprintf(&buffer[50],"\n\rz,Command not found");

		                 	break;

		   }

		   e_send_uart2_char(&buffer[50],strlen(&buffer[50]));

		   while(e_uart2_sending());

		 }		

	} else if (selector==12) {	// Global test
		sprintf(buffer, "%c%c%d;%d;%dm", 0x1B, 0x5B, 1, 37, 44);	//bold
		e_send_uart2_char(buffer, strlen(buffer));

		// calibrate proximity sensors
		uart2_send_static_text("\f\aStarting calibration - Remove any object in sensors range\r\n");
		e_calibrate_ir();
		uart2_send_static_text("Calibration finished\r\n");

		// sound
		e_init_sound();
		e_play_sound(11028,8016);
		wait(800000);

		// set motor speed
		e_set_speed_left(100);
		e_set_speed_right(100);

		// init camera
		e_poxxxx_init_cam();
		e_poxxxx_config_cam((ARRAY_WIDTH -40*8)/2,(ARRAY_HEIGHT-40*8)/2,40*8,40*8,8,8,RGB_565_MODE);
		e_poxxxx_set_mirror(1,1);
		e_poxxxx_write_cam_registers();

                // calibrate accelerometer
                e_acc_calibr();

		// set body led
		e_set_body_led(1);
	
		// set front led
		e_set_front_led(1);
	
		// set others LEDs
		e_set_led(8,1);

		uart2_send_static_text("\f\a");
		while(1) {

			// read accelerometer
			//ESC]2k =>Â clear line
			sprintf(buffer,"%c%cH\r\nACCELEROMETER\r\n%c%c2K%4d, %4d, %4d\r\n\n", 0x1B, 0x5B, 0x1B, 0x5B, e_get_acc(0),e_get_acc(1),e_get_acc(2));
			e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			// read selector position
			selector = SELECTOR0 + 2*SELECTOR1 + 4*SELECTOR2 + 8*SELECTOR3;
			sprintf(buffer,"SELECTOR\r\n%c%c2K%2d\r\n\n",0x1B, 0x5B, selector);
			e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			// read IR
                  	sprintf(buffer,"IR\r\n%c%c2Kcheck : 0x%x, address : 0x%x, data : 0x%x\r\n\n", 0x1B, 0x5B, e_get_check(), e_get_address(), e_get_data());
                  	e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			// read proximity sensors
			sprintf(buffer,"PROXIMITY SENSORS\r\n%c%c2K%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\r\n\n", 0x1B, 0x5B, 
			e_get_prox(0),e_get_prox(1),e_get_prox(2),e_get_prox(3),
			e_get_prox(4),e_get_prox(5),e_get_prox(6),e_get_prox(7));
			e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			sprintf(buffer,"AMBIENT LIGHT SENSORS\r\n%c%c2K%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\r\n\n", 0x1B, 0x5B,
			e_get_ambient_light(0),e_get_ambient_light(1),e_get_ambient_light(2),e_get_ambient_light(3),
			e_get_ambient_light(4),e_get_ambient_light(5),e_get_ambient_light(6),e_get_ambient_light(7));
			e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			// micro
			sprintf(buffer,"MICROPHONE\r\n%c%c2K%4d,%4d,%4d\r\n\n",0x1B, 0x5B, e_get_micro_volume(0),e_get_micro_volume(1),e_get_micro_volume(2));
			e_send_uart2_char(buffer, strlen(buffer));
			while(e_uart2_sending());

			//camera
			e_poxxxx_launch_capture(&buffer[0]);
			while(!e_poxxxx_is_img_ready());
                        r = (int)buffer[0]&0xF8;
                        g = (int)(buffer[0]&0x07)<<5 | (buffer[1]&0xE0)>>3;
                        b = (int)(buffer[1]&0x1F)<<3;
			sprintf(&buffer[3200], "CAMERA\r\n%c%c2KR=%3d, G=%3d, B=%3d\r\n\n",0x1B, 0x5B, r, g, b);
			e_send_uart2_char(&buffer[3200], strlen(&buffer[3200]));
			while(e_uart2_sending());
			
			for(i=0; i<100; i++);
		} 
	} else if (selector==13) {	// uart 1 to uart 2 transponder
		//e_init_uart2();// 230400   // initialize UART to 115200 Kbaud
		e_send_uart2_char(buffer, strlen(buffer));
		while (1) {
			if(e_getchar_uart1(&c)) e_send_uart2_char(&c, 1);
			if(e_getchar_uart2(&c)) e_send_uart1_char(&c, 1);
		}
	} else if (selector==14) {
		run_breitenberg_follower();
	} else if (selector==15) {	// simple dust cleaner behaviour
		run_DustCleaner();
	} else {
		run_breitenberg_shocker();
	}

	while(1);
	return 0;
}

