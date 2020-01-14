#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "level.h"
#include "FinalSheet.h"



ANISPRITE icemanWalk;
ANISPRITE iceBoard;


void initPlayerWalk() { 


    icemanWalk.width = 12;
    icemanWalk.height = 16;
    icemanWalk.rdel = 1;
    icemanWalk.cdel = (2.0 * 8);
    // Place in the middle of the screen in the world location chosen earlier
    icemanWalk.row = 100; 
    icemanWalk.col =0 ;
    icemanWalk.aniCounter = 0;
    iceman.curFrame = 0;
    icemanWalk.numFrames = 8;
    icemanWalk.aniState = 0;
    icemanWalk.hide = 0;
    

}


void initBoard() { 


    iceBoard.width = 32;
    iceBoard.height = 16;
    iceBoard.col = 96;
    iceBoard.row = 0;
    iceBoard.curFrame = 24;
    iceBoard.aniState = 8;
    

}
void drawBoard() {
       
    
        shadowOAM[30].attr0 = iceBoard.row| ATTR0_WIDE | ATTR0_MOSAIC ;
        shadowOAM[30].attr1 = iceBoard.col  | ATTR1_LARGE;
        shadowOAM[30].attr2 =  ATTR2_PALROW(0)| ATTR2_TILEID(iceBoard.aniState, iceBoard.curFrame);
}
void updateBoard() {
    if (icemanWalk.aniCounter % 20 == 0) {
        if(iceBoard.aniState == 8 && iceBoard.curFrame == 24) {
            iceBoard.aniState = 16;
        } else if(iceBoard.aniState == 16 && iceBoard.curFrame == 24) {
            iceBoard.aniState = 0;
            iceBoard.curFrame = 28;
        } else if(iceBoard.aniState == 0 && iceBoard.curFrame == 28) {
            iceBoard.aniState = 8;
        }else if(iceBoard.aniState == 8 && iceBoard.curFrame == 28) {
            iceBoard.aniState = 16;
        } else {
            iceBoard.aniState = 8;
            iceBoard.curFrame = 24;
        }
    }

}

void updatePlayerWalk() {
    if ((icemanWalk.col >>3)< SCREENWIDTH - icemanWalk.width) {
    icemanWalk.col += (icemanWalk.cdel >> 3);
      icemanWalk.prevAniState = icemanWalk.aniState;


    // Change the animation frame every 20 frames of gameplay
    if(icemanWalk.aniCounter % 40 == 0) {
        icemanWalk.curFrame = (icemanWalk.curFrame + 4) % icemanWalk.numFrames;
    }

        icemanWalk.aniCounter++;
    } else {
        icemanWalk.hide = 1;
    }


}

void drawPlayerWalk() {
        if (icemanWalk.hide) {
        shadowOAM[21].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[21].attr0 = icemanWalk.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[21].attr1 = icemanWalk.col >>3 | ATTR1_MEDIUM;
        shadowOAM[21].attr2 =  ATTR2_PALROW(0)| ATTR2_TILEID(icemanWalk.aniState, icemanWalk.curFrame);
    }
}
