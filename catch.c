#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "level.h"
#include "level2.h"
#include "FinalSheet.h"
#include "sound.h"
#include "yumm.h"

ANISPRITE iceCream1[20];
ANISPRITE iceman1;
ANISPRITE lives[6]; 
ANISPRITE iceHealth;
ANISPRITE iceHealth1;
int icees;
int collect;
void initLevel() {
    icees = 6;
    srand(time(NULL)); 
    initCream1();
    collect = 0;
    initPlayer1();
    initLives();
    initHealth1();
    initHealth2();
}
void drawLevel() {
    drawPlayer1();
    drawCream1();
    drawLives();
    drawHealth1();
    drawHealth2();

}
void updateLevel() {
    updatePlayer1();
    updateCream1();
    updateHealth2();
    updateHealth1();

}

void initPlayer1() {

    iceman1.width = 18;
    iceman1.height = 32;
    iceman1.rdel = 1;
    iceman1.cdel = 2;

    // Place in the middle of the screen in the world location chosen earlier
    iceman1.row = 100; 
    iceman1.col = 10;
    iceman1.aniCounter = 0;
    iceman1.curFrame = 20;
    iceman1.numFrames = 8;
    iceman1.aniState = 0;
    iceman1.hide = 0;

}
void initHealth1() {

iceHealth.width = 32;
iceHealth.height = 32;
iceHealth.aniState = 24;
iceHealth.curFrame = 0;
iceHealth.col = 180;
iceHealth.row = 0;
iceHealth.hide = 0;

}
void drawHealth1() {

    // if (dead) {
    //     shadowOAM[15].attr0 |= ATTR0_HIDE;
    // } else {
        shadowOAM[16].attr0 = iceHealth.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[16].attr1 = iceHealth.col | ATTR1_MEDIUM;
        shadowOAM[16].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(iceHealth.aniState, iceHealth.curFrame);
    
}
void initHealth2() {

iceHealth1.width = 32;
iceHealth1.height = 32;
iceHealth1.aniState = 24;
iceHealth1.curFrame = 0;
iceHealth1.col = 210;
iceHealth1.row = 0;

}
void drawHealth2() {

    // if (dead) {
    //     shadowOAM[15].attr0 |= ATTR0_HIDE;
    // } else {
        shadowOAM[18].attr0 = iceHealth1.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[18].attr1 = iceHealth1.col | ATTR1_MEDIUM;
        shadowOAM[18].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(iceHealth1.aniState, iceHealth1.curFrame);
    
}
void drawCream1() {
    for (int i = 0; i < 20; i++) {
    if (iceCream1[i].hide) {
        shadowOAM[i + 25].attr0 = ATTR0_HIDE;
    } else {

        shadowOAM[i + 25].attr0 = iceCream1[i].row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[i + 25].attr1 = iceCream1[i].col | ATTR1_SMALL;
        shadowOAM[i + 25].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(iceCream1[i].aniState, iceCream1[i].curFrame);
    }
    }
}
void drawPlayer1() {
    if (iceman1.hide) {
        shadowOAM[47].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[47].attr0 = iceman1.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[47].attr1 = iceman1.col | ATTR1_MEDIUM;
        shadowOAM[47].attr2 =  ATTR2_PALROW(0)| ATTR2_TILEID(iceman1.aniState, iceman1.curFrame);
    }

}
void drawLives() {
    for (int i = 0; i < 6; i++) {
    if (lives[i].hide) {
        shadowOAM[i + 60].attr0 = ATTR0_HIDE;
    } else {

        shadowOAM[i + 60].attr0 = lives[i].row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[i + 60].attr1 = lives[i].col | ATTR1_SMALL;
        shadowOAM[i + 60].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(lives[i].aniState, lives[i].curFrame);
    }}
}
    
void initLives() {
    for (int i = 0; i < 6; i++) {
     

    lives[i].width = 4;
    lives[i].height = 4;
    lives[i].rdel = 1;
    lives[i].cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    lives[i].row = 10; 
    lives[i].col = 20  + (i * 12);

 
    lives[i].curFrame = 16;
    lives[i].aniState = 0;
    lives[i].hide = 0;

    }
    }
void initCream1() {
    for (int i = 0; i < 20; i++) {
     

    iceCream1[i].width = 8;
    iceCream1[i].height = 8;
    iceCream1[i].rdel = 1;
    iceCream1[i].cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    iceCream1[i].row = 0; 
    iceCream1[i].col = rand() % 200;

 
    iceCream1[i].numFrames = 0;
    iceCream1[i].aniState = 8;
    iceCream1[i].hide = 1;
        if (i % 2 == 0) {
               iceCream1[i].curFrame = 20;

        } else {
               iceCream1[i].curFrame = 22;
        }
    }
    iceCream1[0].hide = 0;
    DMANow(3, FinalSheetTiles, &CHARBLOCK[4], FinalSheetTilesLen / 2);
    DMANow(3, FinalSheetPal, SPRITEPALETTE, 256);

}
void updateCream1() {
    for (int i = 0; i < 20; i++) {
        if (!iceCream1[i].hide) {
            if (iceCream1[i].row < SCREENHEIGHT - 10) {
            iceCream1[i].row += iceCream1[i].rdel;
            } else {
                iceCream1[i].hide = 1;
                iceCream1[i].row = 0;
                iceCream1[i].col = rand() % 200;
                icees--;
                updateLives(icees);
            }
            if ( iceman1.aniState == 4 && collision(iceCream1[i].col, iceCream1[i].row, iceCream1[i].width, iceCream1[i].height,
                iceman1.col, iceman1.row + 19, 9, 4)) {
                    collect++;
                    iceCream1[i].hide = 1;
                    iceCream1[i].row = 0;
                      iceCream1[i].col = rand() % 200;
                    playSoundB(yumm, YUMMLEN - 300, YUMMFREQ, 0);
                } else if ( iceman1.aniState == 0 && collision(iceCream1[i].col, iceCream1[i].row, iceCream1[i].width, iceCream1[i].height,
                iceman1.col + iceman1.width, iceman1.row + 19, 12, 4)) {
                    collect++;
                    iceCream1[i].hide = 1;
                    iceCream1[i].row = 0;
                      iceCream1[i].col = rand() % 200;
                    playSoundB(yumm, YUMMLEN - 300, YUMMFREQ, 0);
                }
        
  
    //             if(iceman1.aniCounter % 20 == [0 ) {
    //     iceCream1[i].aniState = (iceCream1[i].aniState + 2) % 6;
    // }
        } else if(iceman1.aniCounter % 67 == 0) {
            iceCream1[i].hide = 0;
            break;
        }

    }
}


void updatePlayer1() {


    if(BUTTON_HELD(BUTTON_LEFT)) {
        iceman1.aniState = 4;
        if (iceman1.col > 0) {
            iceman1.col -= iceman.cdel;
  
    }     

    }
     
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        iceman1.aniState = 0;
        if (iceman1.col + iceman1.width < 240) {
            iceman1.col+= iceman1.cdel;

        }
    }
    if(BUTTON_PRESSED(BUTTON_A)) {
        icees = 6;
        for (int i = 0; i < 6; i++) {
            lives[i].hide = 0;
        }
    }

animatePlayer1();

}

void animatePlayer1() {

    // Set previous state to current state
    iceman1.prevAniState = iceman1.aniState;


    // Change the animation frame every 20 frames of gameplay
    // if(iceman.aniCounter % 20 == 0 && (BUTTON_HELD(BUTTON_LEFT) | 
    //     BUTTON_HELD(BUTTON_RIGHT))) {
    //     iceman1.curFrame = (iceman1.curFrame + 4) % 24;
    // }
    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_LEFT))
        iceman1.aniState = 4;
    if(BUTTON_HELD(BUTTON_RIGHT))
        iceman1.aniState = 0;

    // If the iceman aniState is idle, frame is iceman standing
        iceman1.aniCounter++;

}
void updateHealth1() {

    if (collect == 1) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 16;
    }  else if (collect == 2) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 16;
    }  else if (collect == 3) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 12;
   
    }  else  if (collect == 4) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 8;
    }   else if (collect == 5) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 4;
    }  else if (collect == 6) {
iceHealth.aniState = 20;
        iceHealth.curFrame = 0;
   
    }   else  if (collect == 7) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 12;
    }  else   if (collect == 8) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 8;
    }   else  if (collect == 9) {
iceHealth.aniState = 16;
        iceHealth.curFrame = 4;
    } else    if (collect == 10) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 0;
    }    else if (collect ==0) {
        iceHealth.aniState = 24;
iceHealth.curFrame = 0;
    }

}
void updateHealth2() {

    if (collect == 11) {
        iceHealth1.aniState = 20;
        iceHealth1.curFrame = 16;
    }  else if (collect == 12) {
        iceHealth1.aniState = 16;
        iceHealth1.curFrame = 16;
    }  else if (collect == 13) {
        iceHealth1.aniState = 20;
        iceHealth1.curFrame = 12;
   
    }  else  if (collect == 14) {
        iceHealth1.aniState = 20;
        iceHealth1.curFrame = 8;
    }   else if (collect == 15) {
        iceHealth1.aniState = 20;
        iceHealth1.curFrame = 4;
    }  else if (collect == 16) {
iceHealth1.aniState = 20;
        iceHealth1.curFrame = 0;
   
    }   else  if (collect == 17) {
        iceHealth1.aniState = 16;
        iceHealth1.curFrame = 12;
    }  else   if (collect == 18) {
        iceHealth1.aniState = 16;
        iceHealth1.curFrame = 8;
    }   else  if (collect == 19) {
iceHealth.aniState = 16;
        iceHealth1.curFrame = 4;
    } else    if (collect == 20) {
        iceHealth1.aniState = 16;
        iceHealth1.curFrame = 0;
    }    

}

void updateLives(int ivee) {
    lives[icees].hide = 1;

}