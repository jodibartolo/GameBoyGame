#include <stdlib.h>
#include "myLib.h"
#include "FinalSheet.h"
#include "game.h"
#include "level.h"

ANISPRITE iceBoard1;


void initBoard1() { 

REG_BG1HOFF = 0;
    iceBoard1.width = 32;
    iceBoard1.height = 16;
    iceBoard1.col = 96;
    iceBoard1.row = 60;
    iceBoard1.curFrame = 24;
    iceBoard1.aniState = 8;
    iceBoard1.aniCounter = 0;

}
void drawBoard1() {
       
    
        shadowOAM[30].attr0 = iceBoard1.row| ATTR0_WIDE | ATTR0_MOSAIC ;
        shadowOAM[30].attr1 = iceBoard1.col  | ATTR1_LARGE;
        shadowOAM[30].attr2 =  ATTR2_PALROW(0)| ATTR2_TILEID(iceBoard1.aniState, iceBoard1.curFrame);
}
void updateBoard1() {
    if (iceBoard1.aniCounter % 20 == 0) {
        if(iceBoard1.aniState == 8 && iceBoard1.curFrame == 24) {
            iceBoard1.aniState = 16;
        } else if(iceBoard1.aniState == 16 && iceBoard1.curFrame == 24) {
            iceBoard1.aniState = 0;
            iceBoard1.curFrame = 28;
        } else if(iceBoard1.aniState == 0 && iceBoard1.curFrame == 28) {
            iceBoard1.aniState = 8;
        }else if(iceBoard1.aniState == 8 && iceBoard1.curFrame == 28) {
            iceBoard1.aniState = 16;
        } else {
            iceBoard1.aniState = 8;
            iceBoard1.curFrame = 24;
        }
    }
iceBoard1.aniCounter++;
}