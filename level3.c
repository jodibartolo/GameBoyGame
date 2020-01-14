#include "myLib.h"
#include "game.h" 
#include "FinalSheet.h"
#include "collisionsub.h"
ANISPRITE zombieCar;
int count = 0;
int jumping = 0;
int num;
int opp;
void initLevel3() {
    num = 120 <<3;
    opp =num >>3;
    initCar2();
        vOff = 0;
    hOff = 1;
    REG_BG1HOFF = 0;

}

void drawLevel3() {
    // hOff++;
    

         REG_BG1VOFF = vOff;
    drawCar2();

}


void initCar2() {

    zombieCar.width = 38;
    zombieCar.height = 18;
    zombieCar.rdel = 2.0 * 8;
    zombieCar.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    zombieCar.row = 120 << 3; 
    zombieCar.col = 10;
    zombieCar.curFrame = 12;
    zombieCar.numFrames = 8;
    zombieCar.aniState = 8;

}
void updateLevel3() {
    updateCar2();

        // jump();
    
    
// hOff++;
}


void drawCar2() {

    if (dead) {
        shadowOAM[14].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[14].attr0 = zombieCar.row >> 3| ATTR0_WIDE | ATTR0_4BPP;
        shadowOAM[14].attr1 = zombieCar.col | ATTR1_LARGE;
        shadowOAM[14].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(zombieCar.aniState, zombieCar.curFrame);
    }
}


void updateCar2() {
    // if (!jumping) {
    //     if (zombieCar.row < num) {
    //                 if((num > 4 &&(collisionsubBitmap[OFFSET(zombieCar.col, num + 10, zombieCar.width)] != BLACK))
    //     && (collisionsubBitmap[OFFSET(zombieCar.col, num+ 10 + zombieCar.height, zombieCar.width)] != BLACK)) {
    //         zombieCar.row += zombieCar.rdel >>3;
    //     }
          
    //         }
    //     if (zombieCar.rdel!= 32.0) {
    //           zombieCar.rdel += zombieCar.rdel;
    //     } else {
    //         zombieCar.rdel = (2.0 * 8);
    //     }
    // }
    if(BUTTON_HELD(BUTTON_RIGHT)) {

           
    
           if (zombieCar.col + 100 != 256) {
               zombieCar.col+= zombieCar.cdel;
       REG_BG1HOFF = hOff;
       hOff+=2;
        
           } else{
        
               zombieCar.cdel = 0;
               hOff = 0;

    
        }
    }
        
    // } else   if(BUTTON_HELD(BUTTON_LEFT)) {
    //     if ((collisionsubBitmap[OFFSET(zombieCar.col - 1, num + 10, zombieCar.height)] != BLACK)
    //     && (collisionsubBitmap[OFFSET(zombieCar.col - 1, num + 10  + zombieCar.height , zombieCar.width)] != BLACK)) {
    //        zombieCar.col-= zombieCar.cdel;
       
    //     }
        
    // }





}

// void jump() {
   
//     if (jumping) {
//          zombieCar.rdel = (2.0 * 8);
//         count++;
//          if(num > 4 &&(collisionsubBitmap[OFFSET(zombieCar.col, num + 9, zombieCar.width)] != BLACK)
//         && (collisionsubBitmap[OFFSET(zombieCar.col, num + 9  + zombieCar.height , zombieCar.width)] != BLACK)) {
//         zombieCar.row -= (zombieCar.rdel >>3) * 2;
//         }
//         if(count % 40 == 0) {
//             jumping = 0;
//         }
//     }

// }
//hOff >= 256 
//hOff -= 256;
//screenblock++; 