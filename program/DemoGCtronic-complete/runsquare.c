#include "p30F6014A.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
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
#include <acc_gyro/e_lsm330.h>

void run_square() {
    unsigned char useGyroFlag = 0;  // 0=use odometry, 1=use gyroscope
    unsigned char squareState = 0;
    signed int tempZ = 0;
    float turnAngle = 0;
    float diffTime = 0;
    float dpmsValue = 0;

    //e_init_uart2(BAUD230400); // for debug
    
    while(1) {
        if(isEpuckVersion1_3() && useGyroFlag==1) {
            switch(squareState) {
                case 0: // set speed to go forward (square side)
                    e_set_speed_left(150);
                    e_set_speed_right(150);
                    e_set_steps_left(0);
                    squareState = 1;
                    break;
                case 1: // go forward for a while
                    if(e_get_steps_left() >= 800) {
                        squareState = 2;
                    }
                    break;
                case 2: // set speed to rotate on the square angle
                    e_set_steps_left(0);
                    e_set_speed_left(-100);
                    e_set_speed_right(100);
                    resetTime();
                    turnAngle = 0;
                    squareState = 3;
                    break;
                case 3: // rotate 90 degrees
                    tempZ = getZAxisGyro();
                    dpmsValue = rawToDpms(tempZ);
                    diffTime = getDiffTimeMsAndReset();
                    turnAngle += diffTime*dpmsValue; // integrate the angular rate to get the rotation angle
                    //sprintf(buffer, "%f,%d,%f\r\n", turnAngle,tempZ,diffTime);
                    //e_send_uart2_char(buffer, strlen(buffer));
                    if(turnAngle >= 90) {
                        e_set_speed_left(0);
                        e_set_speed_right(0);
                        squareState = 0;
                    }
                    break;
            }
        } else {
            switch(squareState) {
                case 0: // set speed to go forward (square side)
                    e_set_speed_left(150);
                    e_set_speed_right(150);
                    e_set_steps_left(0);
                    squareState = 1;
                    break;
                case 1: // go forward for a while
                    if(e_get_steps_left() >= 800) {
                        squareState = 2;
                    }
                    break;
                case 2: // set speed to rotate on the square angle
                    e_set_steps_left(0);
                    e_set_speed_left(-100);
                    e_set_speed_right(100);
                    resetTime();
                    turnAngle = 0;
                    squareState = 3;
                    break;
                case 3: // rotate 90 degrees
                    turnAngle = e_get_steps_left();
                    //sprintf(buffer, "%f,%d,%f\r\n", turnAngle,tempZ,diffTime);
                    //e_send_uart2_char(buffer, strlen(buffer));
                    if(turnAngle <= -330) {    // from field test 330 steps correspond to about 90 degrees
                        e_set_speed_left(0);
                        e_set_speed_right(0);
                        squareState = 0;
                    }
                    break;
            }
        }
    }
}

