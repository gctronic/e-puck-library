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

extern int e_dci_unavailable;

#define X_AXIS 0
#define Y_AXIS 1
#define Z_AXIS 2

float dpsValue = 0;
unsigned char soundPlayedFlag = 0;
signed int tempX = 0, tempY = 0, tempZ = 0;

void execDemoZ() {
    dpsValue = rawToDps(tempZ);
    e_led_clear();
    if(dpsValue > 0) {
        if(dpsValue > 27) {
            e_set_led(0, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 54) {
            e_set_led(7, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 81) {
            e_set_led(6, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 108) {
            e_set_led(5, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 135) {
            e_set_led(4, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 162) {
            e_set_led(3, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 189) {
            e_set_led(2, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue > 216) {
            e_set_led(1, 1);
            if(soundPlayedFlag == 0) {
                while (e_dci_unavailable);
                e_play_sound(11028, 8016);
                soundPlayedFlag = 1;
            }
        } else {
            soundPlayedFlag = 0;
            return;
        }
    } else {
        if(dpsValue < -27) {
            e_set_led(0, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -54) {
            e_set_led(1, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -81) {
            e_set_led(2, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -108) {
            e_set_led(3, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -135) {
            e_set_led(4, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -162) {
            e_set_led(5, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -189) {
            e_set_led(6, 1);
        } else {
            soundPlayedFlag = 0;
            return;
        }
        if(dpsValue < -216) {
            e_set_led(7, 1);
            if(soundPlayedFlag == 0) {
                while (e_dci_unavailable);
                e_play_sound(11028, 8016);
                soundPlayedFlag = 1;
            }
        } else {
            soundPlayedFlag = 0;
            return;
        }
    }
}

void execDemoY() {
    dpsValue = rawToDps(tempY);
    e_led_clear();
    if(dpsValue > 0) {
        if(dpsValue > 186) {
            e_set_led(6, 1);
            e_set_led(7, 1);
            e_set_led(0, 1);
            e_set_led(1, 1);
            e_set_led(2, 1);
            e_set_front_led(1);
        } else if(dpsValue > 124) {
            e_set_led(7, 1);
            e_set_led(0, 1);
            e_set_led(1, 1);
            e_set_front_led(0);
        } else if(dpsValue > 62) {
            e_set_led(0, 1);
            e_set_front_led(0);
        }
    } else {
        if(dpsValue < -186) {
            e_set_led(6, 1);
            e_set_led(5, 1);
            e_set_led(4, 1);
            e_set_led(3, 1);
            e_set_led(2, 1);
            e_set_front_led(1);
        } else if(dpsValue < -124) {
            e_set_led(5, 1);
            e_set_led(4, 1);
            e_set_led(3, 1);
            e_set_front_led(0);
        } else if(dpsValue < -62) {
            e_set_led(4, 1);
            e_set_front_led(0);
        }
    }
}

void execDemoX() {
    dpsValue = rawToDps(tempX);
    e_led_clear();
    if(dpsValue > 0) {
        if(dpsValue > 186) {
            e_set_led(0, 1);
            e_set_led(1, 1);
            e_set_led(2, 1);
            e_set_led(3, 1);
            e_set_led(4, 1);
            e_set_body_led(1);
        } else if(dpsValue > 124) {
            e_set_led(1, 1);
            e_set_led(2, 1);
            e_set_led(3, 1);
            e_set_body_led(0);
        } else if(dpsValue > 62) {
            e_set_led(2, 1);
            e_set_body_led(0);
        }
    } else {
        if(dpsValue < -186) {
            e_set_led(0, 1);
            e_set_led(7, 1);
            e_set_led(6, 1);
            e_set_led(5, 1);
            e_set_led(4, 1);
            e_set_body_led(1);
        } else if(dpsValue < -124) {
            e_set_led(7, 1);
            e_set_led(6, 1);
            e_set_led(5, 1);
            e_set_body_led(0);
        } else if(dpsValue < -62) {
            e_set_led(6, 1);
            e_set_body_led(0);
        }
    }
}

void run_gyroscope() {
    signed int maxValue = 0;
    unsigned char maxAxis = 0;    

    e_init_sound();

    while(1) {
        getAllAxesGyro(&tempX, &tempY, &tempZ);
        maxValue = abs(tempX);
        maxAxis = X_AXIS;
        if(abs(tempY) > maxValue) {
            maxValue = abs(tempY);
            maxAxis = Y_AXIS;
        }
        if(abs(tempZ) > maxValue) {
            //maxValue = abs(tempZ);
            maxAxis = Z_AXIS;
        }
        switch(maxAxis) {
            case X_AXIS:
                execDemoX();
                break;
            case Y_AXIS:
                execDemoY();
                break;
            case Z_AXIS:
                execDemoZ();
                break;
        }

    }
}

