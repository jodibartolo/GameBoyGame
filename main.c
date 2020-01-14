
//Jodianne Bartolo Final Game: Lactose Foe
//My game is a coninuous runner style game where the player's goal is to get home 
//by defeating a certain amount of zombies before losing lives. Level 1 is the hadest because the zombies come at you pretty fast.
// You can shoot ice cream balls at them by pressing b. If you are close to them you can press a to head butt them.
//Shooting them with an ice ball gets you 1 pt in your ice cream meter, but head butting them gets you 2 points.
//Once you fill it up with 10 zombies, you go to the in between level. Here you have to catch 20 ice cream balls to proceed.
//You have 6 lives and if you lose them all, you have to start the game over.
//If you get all 20, you go to the next level. The car is now faster, but the zombies come slower.
//Fill up the meter to 10 again and then drive home.

//cheats--> press L to jump in car and kill zombies
// press a on catch level to refill lives



#include "myLib.h"
#include "game.h"
#include "Start.h"
#include "FinalSheet.h"
#include "road.h"
#include "sky.h"
#include "instructions.h"
#include "Ah.h"
#include "sound.h"
#include "back.h"
#include "win.h"
#include "level.h"
#include "iceMAnVO.h"
#include "time.h"
#include "subLevel.h"
#include "sky2.h"
#include "catchmusic.h"
#include "drivemusic.h"
#include "catchmusic2.h"
#include "pause.h"
#include "lose.h"


// Prototypes
void initialize();
void goToGame();
void game();
void start();
void goToStart();

// States
OBJ_ATTR shadowOAM[128];
enum {GAME, START, WIN, LOSE, PAUSE, INSTR, CHANGE};
int state;
      
// Button Variables
unsigned short buttons;
unsigned short oldButtons;
SOUND soundA;
SOUND soundB;

int main() {
    srand(time(NULL));

    initialize();
    setupInterrupts();
	setupSounds();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {

      
            case START:
                level = 2; 
                start();
                break;
            case GAME:
                if (level == 2) {
                    game();
                } else if (level ==3){
                    game2();
                } else if (level ==4) {
                    game();
                } else if (level == 5) {
                    game3();
                }
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case PAUSE:
                pause();
                break;
            case INSTR:
                instructions();
                break;
            case  CHANGE:
                levelChanger();
                break;
        }
               
    }
}

// Sets up GBA
void initialize() {
   


    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(7) | BG_SIZE_SMALL;
    // REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(14) | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(14) | BG_SIZE_WIDE;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(21) | BG_SIZE_SMALL;
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    // Set up the first state
    goToStart();
    
}

// Sets up the game state
void goToGame() {
    
    pauseSound();
    // // Set up the sprites
    DMANow(3, roadPal, PALETTE, 256);
    // DMANow(3, skyTiles, &CHARBLOCK[1], skyTilesLen / 2);
    // DMANow( 3, skyMap, &SCREENBLOCK[14], skyMapLen / 2);;
    DMANow(3, roadTiles, &CHARBLOCK[1], roadTilesLen / 2);
    DMANow( 3, roadMap, &SCREENBLOCK[14], roadMapLen / 2);
    DMANow(3, backTiles, &CHARBLOCK[3], backTilesLen / 2);
    DMANow( 3, backMap, &SCREENBLOCK[28], backMapLen / 2);
    
    hideSprites();
     REG_DISPCTL = MODE0 | BG1_ENABLE | BG3_ENABLE |  SPRITE_ENABLE;
     initGame();

    // Set up the display
    playSoundA(Ah, AHLEN - 400, AHFREQ, 1);
    unpauseSound();
   
    waitForVBlank();
   

    state = GAME; 

}
void goToLevel3() {
    level = 5;

    // // Set up the sprites
    DMANow(3, subLevelPal, PALETTE, 256);
    // DMANow(3, skyTiles, &CHARBLOCK[1], skyTilesLen / 2);
    // DMANow( 3, skyMap, &SCREENBLOCK[14], skyMapLen / 2);;
    DMANow(3, subLevelTiles, &CHARBLOCK[1], subLevelTilesLen / 2);
    DMANow( 3, subLevelMap, &SCREENBLOCK[14], subLevelMapLen / 2);
    DMANow(3, sky2Tiles, &CHARBLOCK[3], sky2TilesLen / 2);
    DMANow( 3, sky2Map, &SCREENBLOCK[28], sky2MapLen / 2);
    
    hideSprites();
     REG_DISPCTL = MODE0 | BG1_ENABLE | BG3_ENABLE |  SPRITE_ENABLE;
     initLevel3();

    // Set up the display
    playSoundA(drivemusic, DRIVEMUSICLEN - 400, DRIVEMUSICFREQ, 1);
   
    waitForVBlank();
   

    state = GAME; 

}

// Runs every frame of the game state
void game() {

    
    drawGame();
    updateGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
        if (hits == 10  && level == 2) {
            DMANow(3, roadPal, PALETTE, 256);
            DMANow(3, roadTiles, &CHARBLOCK[1], roadTilesLen / 2);
            DMANow( 3, roadMap, &SCREENBLOCK[14], roadMapLen / 2);
            DMANow(3, backTiles, &CHARBLOCK[3], backTilesLen / 2);
            DMANow( 3, backMap, &SCREENBLOCK[28], backMapLen / 2);
            
            hideSprites();
            initPlayerWalk();
            initBoard();
            pauseSound();
                playSoundA(catchmusic2, CATCHMUSIC2LEN - 400, CATCHMUSIC2FREQ, 1);
            playSoundB(iceMAnVO, ICEMANVOLEN - 300, ICEMANVOFREQ, 0);
            state = CHANGE;
        } else if(hits ==10) {  goToLevel3();
        }
    // } if (dead) {
    //     state = LOSE;
    // }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
 pauseSound();
        goToPause();
    }

}
void game3() {

    drawLevel3();
    updateLevel3();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
 pauseSound();
        goToPause();
    } if (hOff == 0) {
        goToWin();
    }


}

void levelChanger() {
    drawPlayerWalk();
    drawBoard();
    updatePlayerWalk();
    updateBoard();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    if (icemanWalk.hide) {
        level = 3;
    DMANow(3, roadPal, PALETTE, 256);

    DMANow(3, roadTiles, &CHARBLOCK[1], roadTilesLen / 2);
    DMANow( 3, roadMap, &SCREENBLOCK[14], roadMapLen / 2);
    
    hideSprites();
    initLevel();
     REG_DISPCTL = MODE0 | BG1_ENABLE |  SPRITE_ENABLE;

    
   
    waitForVBlank(); 
    pauseSound();
       playSoundA(catchmusic, CATCHMUSICLEN - 400, CATCHMUSICFREQ, 1);

        state = GAME;
    }

}
void game2() {

    
    drawLevel();
    updateLevel();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
        if (collect == 20 ) {
            hideSprites();
            hits = 0;
            level = 4;
            
            pauseSound();

   goToGame();

        }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
      pauseSound();
        goToPause();
    }
        if (icees == 0) {
                DMANow(3, losePal, PALETTE, 256);
    DMANow(3, loseTiles, &CHARBLOCK[2], instructionsTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[21], instructionsMapLen/2);
    hideSprites();
    
    REG_DISPCTL = MODE0 | BG2_ENABLE;
    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128*4);
    state = LOSE;
    }


}
void goToStart() {
    level = 2;
    hits = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE ;

    DMANow(3, StartPal, PALETTE, 256);
    DMANow(3, StartTiles, &CHARBLOCK[0], StartTilesLen/2);
    DMANow(3, StartMap, &SCREENBLOCK[7], StartMapLen/2);
    hideSprites();
    
    
      playSoundA(catchmusic2, CATCHMUSIC2LEN - 400, CATCHMUSIC2FREQ, 1);

    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128*4);
    state = START;

}
void start() {
        // Make sure changes do not appear onscreen

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstr();
    }
}
void instructions() {
        // Make sure changes do not appear onscreen

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}
void goToInstr() { 
        REG_DISPCTL = MODE0 | BG2_ENABLE ;

    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructionsTiles, &CHARBLOCK[2], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[21], instructionsMapLen/2);
    hideSprites();
    
    
    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128*4);
    state = INSTR;
}

void win() {

   if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}

void lose() {


  if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}
void pause() {

    drawBoard1();
    updateBoard1();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

if (BUTTON_PRESSED(BUTTON_SELECT)) {
        // // Set up the sprites
        if (level ==2) {
        hideSprites();
    pauseSound();
    DMANow(3, roadPal, PALETTE, 256);
 
    DMANow(3, roadTiles, &CHARBLOCK[1], roadTilesLen / 2);
    DMANow( 3, roadMap, &SCREENBLOCK[14], roadMapLen / 2);
    DMANow(3, backTiles, &CHARBLOCK[3], backTilesLen / 2);
    DMANow( 3, backMap, &SCREENBLOCK[28], backMapLen / 2);
    
    hideSprites();
     REG_DISPCTL = MODE0 | BG1_ENABLE | BG3_ENABLE |  SPRITE_ENABLE;
  

    // Set up the display
    playSoundA(Ah, AHLEN - 400, AHFREQ, 1);
   
    waitForVBlank();
   
    unpauseSound();
    state = GAME;
        } else if (level == 5) {
            hideSprites();
               DMANow(3, subLevelPal, PALETTE, 256);
    // DMANow(3, skyTiles, &CHARBLOCK[1], skyTilesLen / 2);
    // DMANow( 3, skyMap, &SCREENBLOCK[14], skyMapLen / 2);;
    DMANow(3, subLevelTiles, &CHARBLOCK[1], subLevelTilesLen / 2);
    DMANow( 3, subLevelMap, &SCREENBLOCK[14], subLevelMapLen / 2);
    DMANow(3, sky2Tiles, &CHARBLOCK[3], sky2TilesLen / 2);
    DMANow( 3, sky2Map, &SCREENBLOCK[28], sky2MapLen / 2);
    
    hideSprites();
     REG_DISPCTL = MODE0 | BG1_ENABLE | BG3_ENABLE |  SPRITE_ENABLE;


    // Set up the display
    playSoundA(drivemusic, DRIVEMUSICLEN - 400, DRIVEMUSICFREQ, 1);
   
    waitForVBlank();
   

    state = GAME; 
        } else if (level ==3) {
            hideSprites();
                DMANow(3, roadPal, PALETTE, 256);

    DMANow(3, roadTiles, &CHARBLOCK[1], roadTilesLen / 2);
    DMANow( 3, roadMap, &SCREENBLOCK[14], roadMapLen / 2);
    
    hideSprites();

     REG_DISPCTL = MODE0 | BG1_ENABLE |  SPRITE_ENABLE;

    
   
    waitForVBlank(); 
    pauseSound();
       playSoundA(catchmusic, CATCHMUSICLEN - 400, CATCHMUSICFREQ, 1);

        state = GAME;

        }
}
if (BUTTON_PRESSED(BUTTON_START)) {
     goToStart();
}

}
void goToPause() {
      
    
    // // Set up the sprites
    DMANow(3, pausePal, PALETTE, 256);

    DMANow(3, pauseTiles, &CHARBLOCK[2], roadTilesLen / 2);
    DMANow( 3, pauseMap, &SCREENBLOCK[21], roadMapLen / 2);

    
    hideSprites();
     REG_DISPCTL = MODE0 | BG2_ENABLE |  SPRITE_ENABLE;
     initBoard1();

      playSoundA(catchmusic2, CATCHMUSIC2LEN - 400, CATCHMUSIC2FREQ, 1);
    unpauseSound();
   
    waitForVBlank();
   

    state = PAUSE; 

}

void goToWin() {
    hideSprites();
            REG_DISPCTL = MODE0 | BG2_ENABLE ;

    DMANow(3, winPal, PALETTE, 256);
    DMANow(3, winTiles, &CHARBLOCK[2], instructionsTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[21], instructionsMapLen/2);
    hideSprites();
    
    
    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128*4);
    state = WIN;

}