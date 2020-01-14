#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "FinalSheet.h"


// // TODO 2.1: Include the collision map

// Variables
int hOff;
int vOff;
int hits;
int dead;
ANISPRITE iceman;
ANISPRITE zombies[10];
ANISPRITE zombieCar;
ANISPRITE iceHealth;
ANISPRITE iceCream[5];

int dt;
int acceleration =  1; 
int velocity;
int position;
int selfDrive;
int level = 2;
int run;
int zombietime;
int a;
int jumping;
int uptime;
int buttime;
int butting;
int shootcount;
int shooting;
// // Initialize the game
void initGame() {

    a = 21;
    run = 1;
dead = 0;
selfDrive = 0;
	// Place screen on map 
    vOff = 96;
    hOff = 9;

    initPlayer();
    initZombie();
    initCar();
    initHealth();
    initCream();
 
}

// // Updates the game each frame
void updateGame() {
    if (!selfDrive) {
   hOff++;
    }


	updatePlayer();
    updateZombie();
    updateCar();
    updateHealth();
    updateCream();
    jumpman();
       headButt();
    shootMe();
}

// // Draws the game each frame
void drawGame() {
    REG_BG1HOFF = hOff /3;
    REG_BG3HOFF = hOff / 5;


    drawPlayer();
    drawZombie();
    drawCar();
    drawHealth();
    drawCream();



}
// // Initialize the player
void initZombie() {
    for (int i = 0; i < ZOMBIECOUNT; i++) {

    zombies[i].width = 16;
    zombies[i].height = 32;
    zombies[i].rdel = 1;
    zombies[i].cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    zombies[i].row = 100; 
    zombies[i].col = 220;
    zombies[i].aniCounter = 0;
    zombies[i].curFrame = 0;
    zombies[i].numFrames = 8;
    zombies[i].aniState = 8;
    zombies[i].hide = 1;


    }
    DMANow(3, FinalSheetTiles, &CHARBLOCK[4], FinalSheetTilesLen / 2);
    DMANow(3, FinalSheetPal, SPRITEPALETTE, 256);
    zombies[0].hide = 0;
}

void initPlayer() {

    iceman.width = 16;
    iceman.height = 32;
    iceman.rdel = 1.5 * 8;
    iceman.cdel = 2;

    // Place in the middle of the screen in the world location chosen earlier
    iceman.row = 100 ; 
    iceman.col = 10;
    iceman.aniCounter = 0;
    iceman.curFrame = 0;
    iceman.numFrames = 8;
    iceman.aniState = 0;
    iceman.hide = 0;

}
void initCream() {
    for (int i = 0; i < 5; i++) {

    iceCream[i].width = 4;
    iceCream[i].height = 4;
    iceCream[i].rdel = 0;
    iceCream[i].cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    iceCream[i].row = iceman.row + 20; 
    iceCream[i].col = iceman.col;
    iceCream[i].aniCounter = 0;
    iceCream[i].curFrame = 12;
    iceCream[i].numFrames = 0;
    iceCream[i].aniState = 0;
    iceCream[i].hide = 1;
    }

}
void initCar() {

    zombieCar.width = 38;
    zombieCar.height = 16;
    zombieCar.rdel = 1;
    if(level == 4) {
        zombieCar.cdel = 3;
    } else {
    zombieCar.cdel = 2;
    }
    // Place in the middle of the screen in the world location chosen earlier
    zombieCar.row = 90; 
    zombieCar.col = 200;
    zombieCar.curFrame = 8;
    zombieCar.numFrames = 8;
    zombieCar.aniState = 8;

}
void initHealth() {

iceHealth.width = 32;
iceHealth.height = 32;
iceHealth.aniState = 24;
iceHealth.curFrame = 0;
iceHealth.col = 0;
iceHealth.row = 0;

}
void drawHealth() {

    // if (dead) {
    //     shadowOAM[15].attr0 |= ATTR0_HIDE;
    // } else {
        shadowOAM[16].attr0 = iceHealth.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[16].attr1 = iceHealth.col | ATTR1_MEDIUM;
        shadowOAM[16].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(iceHealth.aniState, iceHealth.curFrame);
    
}

void drawCream() {
    for (int i = 0; i < 5; i++) {
    if (iceCream[i].hide) {
        shadowOAM[i + 18].attr0 = ATTR0_HIDE;
    } else {

        shadowOAM[i + 18].attr0 = iceCream[i].row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[i + 18].attr1 = iceCream[i].col | ATTR1_SMALL;
        shadowOAM[i + 18].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(iceCream[i].aniState, iceCream[i].curFrame);
    }
    }
}
void updateCream() {
    for (int i = 0; i < 5; i++) {
      if ((iceCream[i].col == 0)  | (iceCream[i].col == SCREENWIDTH + 6)) {
                iceCream[i].hide = 1;
                // break;
        
            }
        if (!iceCream[i].hide) {
           
            
            iceCream[i].col += iceCream[i].cdel;
        
   
          
                if(iceman.aniCounter % 30 == 0 ) {
        iceCream[i].aniState = (iceCream[i].aniState + 2) % 6;
    }
        }

    }
}
void shootCream(ANISPRITE* a) {
    a->hide = 0;

        if (iceman.aniState == 0) {
            a->col = iceman.col + iceman.width;
            a->cdel = 1;
        } else  if (iceman.col > 20) {
            a->col = iceman.col;
            
            a->cdel = -1;
        }
}
void updateHealth() {

    if (hits == 1) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 16;
    }  else if (hits == 2) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 16;
    }  else if (hits == 3) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 12;
   
    }  else  if (hits == 4) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 8;
    }   else if (hits == 5) {
        iceHealth.aniState = 20;
        iceHealth.curFrame = 4;
    }  else if (hits == 6) {
iceHealth.aniState = 20;
        iceHealth.curFrame = 0;
   
    }   else  if (hits == 7) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 12;
    }  else   if (hits == 8) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 8;
    }   else  if (hits == 9) {
iceHealth.aniState = 16;
        iceHealth.curFrame = 4;
    } else    if (hits == 10) {
        iceHealth.aniState = 16;
        iceHealth.curFrame = 0;
    }    else if (hits ==0) {
        iceHealth.aniState = 24;
iceHealth.curFrame = 0;
    }

}

// // Handle every-frame actions of the player
void updatePlayer() {
       
         
            if ( BUTTON_PRESSED(BUTTON_B))  {
                if(!shooting) {
               for (int i = 0; i < 5; i++) {
                    if( iceCream[i].hide == 1) {
              

                 iceCream[i].row = iceman.row + 8;
                 
            shootCream(&iceCream[i]);
            shooting = 1;
            break;
                     }
      
           
                //   break;
            

        }
            }
            }


    if (!jumping && iceman.row != 100) {
        iceman.row+= iceman.rdel >> 3;
    }
    

    // TODO 1.0: Update to include complex camera movement
    // TODO 2.2: Update to include collision map
    if(BUTTON_PRESSED(BUTTON_UP)) {
        if ( iceman.row == 100) {
            uptime = 0;
        jumping = 1;
            // iceman.row -= iceman.rdel * 42;

            //fake jumping timer. row decrements while jumping. stops when not 
           
        


    } 


    }

    if(BUTTON_HELD(BUTTON_LEFT)) {
        iceman.prevCurFrame =  iceman.curFrame;
        iceman.aniState = 4;
        if (iceman.col > 0) {
            iceman.col -= iceman.cdel;

  
    }     

    }
     
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        iceman.prevCurFrame =  iceman.curFrame;
        iceman.aniState = 0;
        if (iceman.col + iceman.width < 240) {
            iceman.col+= iceman.cdel;

        }
    }
     if(BUTTON_PRESSED(BUTTON_A)) {
    
        iceman.curFrame = 8;

        butting = 1;
        buttime = 0;
         
            
    
         
        }
     
    



animatePlayer();

}

// // Draw the player
void drawPlayer() {
 

    if (iceman.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = iceman.row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[0].attr1 = iceman.col | ATTR1_MEDIUM;
        shadowOAM[0].attr2 =  ATTR2_PALROW(0)| ATTR2_TILEID(iceman.aniState, iceman.curFrame);
    }
}
void drawZombie() {
    for (int i = 0; i < ZOMBIECOUNT; i++) {

    if (zombies[i].hide) {
        shadowOAM[i + 2].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[i + 2].attr0 = zombies[i].row| ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[i + 2].attr1 = zombies[i].col | ATTR1_MEDIUM;
        shadowOAM[i + 2].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(zombies[i].aniState, zombies[i].curFrame);
    }
    }
}
void drawCar() {

    if (dead) {
        shadowOAM[14].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[14].attr0 = zombieCar.row| ATTR0_WIDE | ATTR0_4BPP;
        shadowOAM[14].attr1 = zombieCar.col | ATTR1_LARGE;
        shadowOAM[14].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(zombieCar.aniState, zombieCar.curFrame);
    }
}

void updateZombie() {
    timerCount();

    for(int i = 0; i < ZOMBIECOUNT; i++) {
        if (!zombies[i].hide) {
    if(zombies[i].col == 0) {
        // zombie.cdel *= -1;
        zombies[i].col = SCREENWIDTH + i;
        zombies[i].col -= zombies[i].cdel;
    
        // flip();
        
    } else {
        zombies[i].col -= zombies[i].cdel;
        

    }
    zombies[i].row -= zombies[i].rdel;
    if (zombies[i].row == 80| zombies[i].row == 110) {
        
            zombies[i].rdel *= -1;
    }
      if (selfDrive) {
          if(zombieCar.curFrame == 8 && collision(zombies[i].col, zombies[i].row, zombies[i].width, zombies[i].height,
            zombieCar.col, zombieCar.row + 10, 4, zombieCar.height)) {

             zombies[i].col = SCREENWIDTH;
                zombies[i].hide = 1;
                hits++;

            } else if (zombieCar.curFrame == 12 && collision(zombies[i].col, zombies[i].row, zombies[i].width, zombies[i].height,
            zombieCar.col + zombieCar.width, zombieCar.row + 10, 4, zombieCar.height)) {
                           
                zombies[i].hide = 1;
                zombies[i].col = SCREENWIDTH;
                hits++;
            }
      }
        if ( !iceman.hide && iceman.curFrame == 8 && collision(zombies[i].col + 2, zombies[i].row, zombies[i].width, zombies[i].height,
            iceman.col, iceman.row, iceman.width, iceman.height))
            {
                // shadowOAM[i + 2].attr0 |= ATTR0_MOSAIC;
                // // zombies[i].hide = 1;
                zombies[i].col = SCREENWIDTH;
                zombies[i].hide = 1;
                hits+= 2;
                // if (i < ZOMBIECOUNT - 1) {
                // //   shadowOAM[i + 2].attr0 |=  ATTR0_MOSAIC;
                // zombies[i +1].hide = 0;
                // }
            
            }
     else if (!iceman.hide && collision(zombies[i].col + 2, zombies[i].row, zombies[i].width, zombies[i].height,
            iceman.col, iceman.row, iceman.width, iceman.height))
            {
                if(iceman.col > 6) {
                iceman.col -= 4;
                } else {
                    zombies[i].col = SCREENWIDTH;
                }
                if (hits > 0) {
                hits--;
                }
           
            } for(int b = 0; b < 5; b++) {
                   if (!iceCream[b].hide && collision(zombies[i].col, zombies[i].row, zombies[i].width, zombies[i].height,
            iceCream[b].col, iceCream[b].row, iceCream[b].width, iceCream[b].height))
            {
        
                zombies[i].hide = 1;
                zombies[i].col = SCREENWIDTH;
            
                hits++;
                iceCream[b].hide = 1;
                break;
           
            }
            }
        

        } else if ((zombietime % (58 + a)) == 0) {
            zombietime = 0;
            if(a > 0 && level ==2) {
            a-= 3;
            }  else if(level!= 2) {
                a-=1;
            }
            
            if (a >0) {
                a+=3;
            } 
        zombies[i].hide = 0;
        if(zombies[i].row + zombies[i].height ==(SCREENHEIGHT - 40)) {
            zombies[i].rdel = 1;
        zombies[i].row += zombies[i].rdel;
        } else if(zombies[i].row == 90) {
            zombies[i].rdel = -1;
            zombies[i].row += zombies[i].rdel;
        }

        break;
    }

    }
        
}
updateCar() {
    if (!selfDrive) {
         zombieCar.curFrame = 8;
    if (zombieCar.col > 2) {
        zombieCar.col -= zombieCar.cdel;
    }
    else {
        zombieCar.col = 220;
    }
    if (collision(zombieCar.col, zombieCar.row + 20, zombieCar.width - 26, zombieCar.height,
            iceman.col, iceman.row, iceman.width, iceman.height))
            {
                if(!selfDrive) {
                if(iceman.col > 6) {
                iceman.col -= 4;
                hits = 0;
                } else {
                    hits = 0;
                    zombieCar.col = SCREENWIDTH;
                    
                }
                }
                if (BUTTON_PRESSED(BUTTON_L)) {
                    selfDrive = 1;
                    iceman.hide = 1;
                }
                // dead = 1;
            }
    } else {
        if (BUTTON_HELD(BUTTON_LEFT)) {
            zombieCar.curFrame = 8;
            if (zombieCar.col > 2) {
            zombieCar.col -= zombieCar.cdel;
            } else {
            zombieCar.col = 220;
            }

        } 
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            zombieCar.curFrame = 12;
            if (zombieCar.col < SCREENWIDTH - zombieCar.width) {
            zombieCar.col += zombieCar.cdel;
            } else {
                zombieCar.col = 2;
            }
        }
        if (BUTTON_PRESSED(BUTTON_L)){
           if(selfDrive) {
            iceman.hide = 0;
            selfDrive = 0;
           }
        }

    }


}

// void flip() {
//     if (zombies[i].curFrame == 8) {
//         zombie.curFrame = 12;
//     } else {
//         zombie.curFrame = 8;
//     }
// }

void animatePlayer() {

    // Set previous state to current state
    iceman.prevAniState = iceman.aniState;


    // Change the animation frame every 20 frames of gameplay
    if(iceman.aniCounter % 20 == 0 && (BUTTON_HELD(BUTTON_LEFT) | 
        BUTTON_HELD(BUTTON_RIGHT))) {
        iceman.curFrame = (iceman.curFrame + 4) % iceman.numFrames;
    }
    for (int i = 0; i < ZOMBIECOUNT; i++) {

    if(iceman.aniCounter % 30 == 0 ) {
        zombies[i].curFrame = (zombies[i].curFrame + 4) % zombies[i].numFrames;
    }
    }
    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_LEFT))
        iceman.aniState = 4;
    if(BUTTON_HELD(BUTTON_RIGHT))
        iceman.aniState = 0;

    // If the iceman aniState is idle, frame is iceman standing
        iceman.aniCounter++;

}

void timerCount() {
    zombietime++;



}
void jumpman() { 
    if (jumping) {
        uptime++;
        iceman.row -= (iceman.rdel >>3)* 2;
        if(uptime % 22 == 0) {
            jumping = 0;
        }
    }


}

void headButt() {
        if (butting) {
        buttime++;
        if(buttime % 10 == 0) {
            butting= 0;
            if(iceman.prevCurFrame != 8) {
             iceman.curFrame = iceman.prevCurFrame;
            } else {
                iceman.curFrame = 0;
            }


        }
    }

}

void shootMe() {
    if (shooting) {
        shootcount++;
    if( level ==2 && shootcount% 30 == 0) {
        shooting = 0;
    } else  if( level ==4 && shootcount% 20 == 0) {
        shooting = 0;
    }
}
}


