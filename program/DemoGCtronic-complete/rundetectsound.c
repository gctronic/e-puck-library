
#include "rundetectsound.h"
#include "p30F6014A.h"
#include <a_d/advance_ad_scan/e_micro.h>
#include <motor_led/advance_one_timer/e_led.h>
#include <utility/utility.h>

#define VOLUME_THR 1000

void run_detectsound() {
    int vol0=0, vol1=0, vol2=0;
    int maxVol;
    int offsetVol0=0, offsetVol1=0, offsetVol2=0;
    unsigned char micId=0;

    offsetVol0 = e_get_micro_volume(0);
    offsetVol1 = e_get_micro_volume(1);
    offsetVol2 = e_get_micro_volume(2);

    while(1) {
        vol0 = e_get_micro_volume(0)-offsetVol0;
        vol1 = e_get_micro_volume(1)-offsetVol1;
        vol2 = e_get_micro_volume(2)-offsetVol2;
        maxVol = vol0;
        micId = 0;
        if(vol1 > maxVol) {
            maxVol = vol1;
            micId = 1;
        }
        if(vol2 > maxVol) {
            maxVol = vol2;
            micId = 2;
        }
        e_set_led(1, 0);
        e_set_led(4, 0);
        e_set_led(7, 0);
        if(maxVol > VOLUME_THR) {
            switch(micId) {
                case 0: e_set_led(1,1);
                        resetTime();
                        while(getDiffTimeMs() < 1000);
                        break;
                case 1: e_set_led(7,1);
                        resetTime();
                        while(getDiffTimeMs() < 1000);
                        break;
                case 2: e_set_led(4,1);
                        resetTime();
                        while(getDiffTimeMs() < 1000);
                        break;
            }
        }
    }

}
