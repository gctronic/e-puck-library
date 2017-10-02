#include "p30F6014A.h"
#include "stdio.h"
#include "string.h"

#include <codec/e_sound.h>
#include <motor_led/e_init_port.h>
#include <motor_led/advance_one_timer/e_led.h>
#include <motor_led/advance_one_timer/e_motors.h>
#include <uart/e_uart_char.h>
#include <a_d/advance_ad_scan/e_ad_conv.h>
#include <a_d/advance_ad_scan/e_prox.h>
#include <a_d/advance_ad_scan/e_acc.h>
#include "math.h"
#include <utility/utility.h>

#define STATE_NORMAL (0)
#define STATE_FREEFALL (1)
#define STATE_SHOCK (2)

#define PI 3.14159265358979

//#define MOVE //option if you want that e-puck move

extern int e_dci_unavailable;
extern int e_stop_flag;

int accx0, accy0, accz0;

void acc_calibrate() {
	int i;
	int accx, accy, accz;
	long saccx, saccy, saccz;
	extern char buffer[60];

	saccx=0;
	saccy=0;
	saccz=0;
	for (i=0; i<32; i++) {
		accx=e_get_acc(0);
		accy=e_get_acc(1);
		accz=e_get_acc(2);
		saccx+=accx;
		saccy+=accy;
		saccz+=accz;
		sprintf(buffer, "%d, %d, %d\r\n", accx, accy, accz);
		e_send_uart1_char(buffer, strlen(buffer));
		wait(3000);
	}

	accx0=(saccx>>5);
	accy0=(saccy>>5);
	accz0=(saccz>>5)-744; // 744 is 1g
}

void run_accelerometer() {
	int accx, accy, accz;
	long ampl;
	long amplavg;
	extern char buffer[60];
	int state;
	int lednum;
	double angle;
	int soundsel;

	// Init sound
	//e_init_acc();
	//e_init_motors();
	e_init_sound();

	// Calibrate accelerometers
	e_set_led(8, 1);
	acc_calibrate();
	sprintf(buffer, "Calibration values: %d, %d, %d\r\n", accx0, accy0, accz0);
	e_send_uart1_char(buffer, strlen(buffer));
	e_set_led(8, 0);

#ifdef MOVE
	// Move forwards
	e_set_speed_left(100);
	e_set_speed_right(100);
#endif
	// Detect free fall and shocks
	state=STATE_NORMAL;
	amplavg=1000;
	while (1) {
		// Read accelerometer
		//gil e_get_acc(&accx, &accy, &accz);
		accx=e_get_acc(0);
		accy=e_get_acc(1);
		accz=e_get_acc(2);
		accx-=accx0;
		accy-=accy0;
		accz-=accz0;

		if ((accz<0) && (accz>-600)) {accz=0;}
		ampl=((long)(accx)*(long)(accx))+((long)(accy)*(long)(accy))+((long)(accz)*(long)(accz));
		amplavg=(amplavg>>2)+ampl;

                //sprintf(buffer, "%ld, (%d, %d, %d) -> (%ld)\r\n", amplavg, accx, accy, accz, ampl);
		//e_send_uart1_char(buffer, strlen(buffer));
                //sprintf(buffer, "%d,%d,%d\r\n", accx, accy, accz);
		//e_send_uart2_char(buffer, strlen(buffer));

		if (! e_dci_unavailable) {
			if (state!=STATE_NORMAL) {
				state=STATE_NORMAL;
				e_set_led(8, 0);
				e_set_body_led(0);
			}
		}

		if (amplavg<1000) {
			if (state!=STATE_FREEFALL) {
				state=STATE_FREEFALL;
				e_stop_flag=1;
				while (e_dci_unavailable);
				sprintf(buffer, "Free fall: %ld, (%d, %d, %d) -> (%ld)\r\n", amplavg, accx, accy, accz, ampl);
				e_send_uart1_char(buffer, strlen(buffer));
				e_play_sound(11028, 8016);
				e_set_body_led(1);
				e_set_led(8, 0);
			}
		} else if (amplavg>4000000) {
			if (state!=STATE_SHOCK) {
				state=STATE_SHOCK;
				e_stop_flag=1;
				while (e_dci_unavailable);
				sprintf(buffer, "Shock: %ld, (%d, %d, %d) -> (%ld)\r\n", amplavg, accx, accy, accz, ampl);
				e_send_uart1_char(buffer, strlen(buffer));
				soundsel=(accx & 3);
				if (soundsel==0) {
					e_play_sound(0, 2112);
				} else if (soundsel==1) {
					e_play_sound(2116, 1760);
				} else {
					e_play_sound(3878, 3412);
				}
				e_set_body_led(0);

				angle=atan2(accy, accx);
				lednum=floor(atan2(accy, accx)/PI*4+PI/2+PI/8);
				while (lednum>8) {lednum=lednum-8;}
				while (lednum<0) {lednum=lednum+8;}
				sprintf(buffer, "(x=%d, y=%d) -> angle=%f, led=%d\r\n", accx, accy, angle, lednum);
				e_send_uart1_char(buffer, strlen(buffer));
				e_set_led(lednum, 1);
			}
		}
	}
}

