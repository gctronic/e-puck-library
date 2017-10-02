
#include "runshow.h"

#include "p30F6014A.h"
#include "stdio.h"
#include "string.h"

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
#include "math.h"
#include <utility/utility.h>

#include "memory.h"
extern char buffer[BUFFER_SIZE];

//#define PI 3.1415

/* defines used in turn_to_direction.c */
//#define TURN_SPEED 1000
//#define STEPS_FOR_2PI 1300.

//float calculate_direction(void);
//int find_delta_t(int mic1_nb,int mic2_nb);
//void show_led(float angle);
//void turn_to_direction(float direction);

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		turn to direction
//
// Turns the robot to the appropriate direction
//
// in:  float (angle between 0 and 2PI clockwise)
// out: void
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*
void turn_to_direction(float direction)
{
	int end_turn;
		
		if (direction < PI)     // turn clockwise
		{
			e_set_steps_left(0);
			// calculate how many steps the robot needs to turn
			end_turn = (int)(STEPS_FOR_2PI*(direction/(2*PI)));   

			e_set_speed_left(TURN_SPEED);  // motor speed in steps/s
			e_set_speed_right(-TURN_SPEED);  // motor speed in steps/s
			
			while(e_get_steps_left() < end_turn);   // turn until done 
		}
		else 					// turn counterclockwise
		{
			e_set_steps_right(0);
			// calculate how many steps the robot needs to turn
			end_turn = - (int)(STEPS_FOR_2PI*((2*PI-direction)/(2*PI)));//- new norm

			e_set_speed_left(-TURN_SPEED);  // motor speed in steps/s
			e_set_speed_right(TURN_SPEED);  // motor speed in steps/s
			
			while(e_get_steps_right() > end_turn);   // turn until done
		}

		// stop motors
		e_set_speed_left(0);  // motor speed in steps/s
		e_set_speed_right(0);  // motor speed in steps/s
}
*/

void run_CameraTurn() {
	int cam_mode,cam_width,cam_heigth,cam_zoom,cam_size;
	int i;
	unsigned char *buf_ptr, pixel, lightest;
	unsigned int left, right, lightPos;

	#include "DataEEPROM.h"
	/*read HW version from the eeprom (last word)*/
	int HWversion=0xFFFF;
	int temp = 0;
	temp = ReadEE(0x7F,0xFFFE,&HWversion, 1);
	temp = temp & 0x03;	// get the camera rotation from the HWversion byte

	/*Cam default parameter*/
	cam_mode=GREY_SCALE_MODE;
	if ((temp==3)||(temp==0)) { // 0' and 180' camera rotation
		cam_width=1;
		cam_heigth=60;
	} else {
		cam_width=60;
		cam_heigth=1;
	}
	cam_zoom=8;
	cam_size=cam_width*cam_heigth;
	e_poxxxx_init_cam();
	e_poxxxx_config_cam((ARRAY_WIDTH -cam_width*cam_zoom)/2,(ARRAY_HEIGHT-cam_heigth*cam_zoom)/2,cam_width*cam_zoom,cam_heigth*cam_zoom,cam_zoom,cam_zoom,cam_mode);
	e_poxxxx_set_mirror(1,1);
	e_poxxxx_write_cam_registers();

	while (1) {
		e_poxxxx_launch_capture(&buffer[0]);	// start camera capture
		e_led_clear();
		e_set_body_led(0);
		e_set_front_led(0);

		while(!e_poxxxx_is_img_ready());	// wait end of capture
		buf_ptr=(unsigned char*)&buffer[0];
		left=0; right=0; lightPos=0; lightest=0;
		for (i=0; i<30; i++) {	//left
			pixel=*buf_ptr;
			buf_ptr++;
			left+=pixel;
			if (pixel>lightest) {
				lightest=pixel;
				lightPos=i;
			}
		}
		for (; i<cam_heigth; i++) {	//right
			pixel=*buf_ptr;
			buf_ptr++;
			right+=pixel;
			if (pixel>lightest) {
				lightest=pixel;
				lightPos=i;
			}
		}
		if (lightPos<20) {	//led on at lightest position
			e_set_led(7,1); }
		else if (lightPos<40) {
			e_set_led(0,1); }
		else {
			e_set_led(1,1); }

		if ((temp==3)||(temp==2)) { // 0' and 90' camera rotation
			e_set_speed_left(10*(lightPos-30));  // motor speed in steps/s
			e_set_speed_right(-10*(lightPos-30));
		} else {
			e_set_speed_left(-10*(lightPos-30));  // motor speed in steps/s
			e_set_speed_right(10*(lightPos-30));
		}

		sprintf(buffer, "left %u, right %u, lightest %u, lightPos %u\r\n", left, right, lightest, lightPos);
		e_send_uart1_char(buffer, strlen(buffer));
		wait(5000);
	}								
}


void run_SensDispl() {
	int cam_mode,cam_width,cam_heigth,cam_zoom,cam_size;
	int i;
	unsigned long cam_light;
	unsigned char *buf_ptr;
	/*Cam default parameter*/
	cam_mode=GREY_SCALE_MODE;
	cam_width=20;
	cam_heigth=20;
	cam_zoom=8;
	cam_size=cam_width*cam_heigth;
	e_poxxxx_init_cam();
	e_poxxxx_config_cam((ARRAY_WIDTH -cam_width*cam_zoom)/2,(ARRAY_HEIGHT-cam_heigth*cam_zoom)/2,cam_width*cam_zoom,cam_heigth*cam_zoom,cam_zoom,cam_zoom,cam_mode);
	e_poxxxx_set_mirror(1,1);
	e_poxxxx_write_cam_registers();

	e_acc_calibr();
	while (1) {
		e_poxxxx_launch_capture(&buffer[0]);	// start camera capture
		e_led_clear();
		e_set_body_led(0);
		e_set_front_led(0);
		if (e_get_micro_volume(0)>30 || e_get_micro_volume(1)>30 || e_get_micro_volume(2)>30)
			e_set_body_led(1);
		if (e_get_prox(0)>400) 
			e_set_led(0,1);
		if (e_get_prox(1)>400) 
			e_set_led(1,1);
		if (e_get_prox(2)>400) 
			e_set_led(2,1);
		if (e_get_prox(3)>400) 
			e_set_led(3,1);
		if (e_get_prox(4)>400) 
			e_set_led(4,1);
		if (e_get_prox(5)>400) 
			e_set_led(5,1);
		if (e_get_prox(6)>400) 
			e_set_led(6,1);
		if (e_get_prox(7)>400) 
			e_set_led(7,1);
		while(!e_poxxxx_is_img_ready());	// wait end of capture
		cam_light=0;
		buf_ptr=(unsigned char*)&buffer[0];
		for (i=0; i<cam_size; i++) {
			cam_light+=*buf_ptr;
			buf_ptr++;
		}
		sprintf(buffer, "Cam light %lu\r\n", cam_light);
		e_send_uart1_char(buffer, strlen(buffer));
		if (cam_light>48000)	// 20*20pixels*120grayValue
			e_set_front_led(1);
		wait(5000);
	}								
}

// *** behaviour insired by a dust cleaner
void run_DustCleaner() {	
	int i;
	int sensor;
	int leftwheel, rightwheel;
	int spiral=100;
	int weightleft[8] = {-10,-10,-5,0,0,5,10,10};
	int weightright[8] = {10,10,5,0,0,-5,-10,-10};

	while (1) {
		e_led_clear();
		e_set_body_led(0);
		e_set_front_led(0);
		if (e_get_prox(0)>600) 
			e_set_led(0,1);
		if (e_get_prox(1)>600) 
			e_set_led(1,1);
		if (e_get_prox(2)>600) 
			e_set_led(2,1);
		if (e_get_prox(3)>600) 
			e_set_led(3,1);
		if (e_get_prox(4)>600) 
			e_set_led(4,1);
		if (e_get_prox(5)>600) 
			e_set_led(5,1);
		if (e_get_prox(6)>600) 
			e_set_led(6,1);
		if (e_get_prox(7)>600) 
			e_set_led(7,1);

		if  (e_get_prox(0)>250 || e_get_prox(1)>250 || e_get_prox(2)>250 ||
 			e_get_prox(5)>250 || e_get_prox(6)>250 || e_get_prox(7)>250 ){  // obstacle
			e_set_body_led(1);
			// *** avoid
			leftwheel=200;
			rightwheel=200;
			for (i=0; i<8; i++) {
				sensor=e_get_prox(i); //-sensorzero[i];
				sprintf(buffer, "%d, ", sensor);
				e_send_uart1_char(buffer, strlen(buffer));
				leftwheel+=weightleft[i]*(sensor>>4);
				rightwheel+=weightright[i]*(sensor>>4);
			}
			sprintf(buffer, "setspeed %d %d\r\n", leftwheel, rightwheel);
			e_send_uart1_char(buffer, strlen(buffer));
			if (leftwheel>800) {leftwheel=800;}
			if (rightwheel>800) {rightwheel=800;}
			if (leftwheel<-800) {leftwheel=-800;}
			if (rightwheel<-800) {rightwheel=-800;}
			e_set_speed_left(leftwheel);
			e_set_speed_right(rightwheel);

		} else { // spiral

			e_set_speed_left(700);  // left maximum
			spiral +=1;		// increasing radius of the spiral
			if (spiral >700)
				spiral =100;
			e_set_speed_right(spiral);

			sprintf(buffer, "spiral %u\r\n", spiral);
			e_send_uart1_char(buffer, strlen(buffer));
		}
		wait(20000);
	}								
}

