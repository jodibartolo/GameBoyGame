# 1 "level3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level3.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();







typedef struct {
    int screenRow;
    int screenCol;
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int prevCurFrame;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 202 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 213 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 352 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

typedef struct
{
 int row;
 int col;
 int rdel;
 int cdel;
 int size;
 u16 color;
 int AI_STATE;
} MOVOBJ;
# 2 "level3.c" 2
# 1 "game.h" 1
# 10 "game.h"
extern int hOff;
extern int vOff;
extern int hits;
extern int dead;
extern int level;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE iceman;
extern ANISPRITE iceman1;
extern ANISPRITE lives[6];
extern ANISPRITE iceCream[5];
extern ANISPRITE iceCream1[20];
extern ANISPRITE zombies[10];
extern int collect;
extern int run;
extern int icees;



void initGame();
void updateGame();
void drawGame();
void initPlayer();
void initZombie();
void updatePlayer();
void updateZombie();
void animatePlayer();
void drawPlayer();
void drawZombie();
void initLevel3();
void updateLevel3();
void drawLevel3();
void drawLives();
void initLives();
void initBoard1();
void drawBoard1();
void updateBoard1();
# 3 "level3.c" 2
# 1 "FinalSheet.h" 1
# 21 "FinalSheet.h"
extern const unsigned short FinalSheetTiles[16384];


extern const unsigned short FinalSheetPal[256];
# 4 "level3.c" 2
# 1 "collisionsub.h" 1
# 20 "collisionsub.h"
extern const unsigned short collisionsubBitmap[262144];
# 5 "level3.c" 2
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
    (*(volatile unsigned short *)0x04000014) = 0;

}

void drawLevel3() {



         (*(volatile unsigned short *)0x04000016) = vOff;
    drawCar2();

}


void initCar2() {

    zombieCar.width = 38;
    zombieCar.height = 18;
    zombieCar.rdel = 2.0 * 8;
    zombieCar.cdel = 1;


    zombieCar.row = 120 << 3;
    zombieCar.col = 10;
    zombieCar.curFrame = 12;
    zombieCar.numFrames = 8;
    zombieCar.aniState = 8;

}
void updateLevel3() {
    updateCar2();





}


void drawCar2() {

    if (dead) {
        shadowOAM[14].attr0 |= (2<<8);
    } else {
        shadowOAM[14].attr0 = zombieCar.row >> 3| (1<<14) | (0<<13);
        shadowOAM[14].attr1 = zombieCar.col | (3<<14);
        shadowOAM[14].attr2 = ((0)<<12)| ((zombieCar.curFrame)*32+(zombieCar.aniState));
    }
}


void updateCar2() {
# 82 "level3.c"
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {



           if (zombieCar.col + 100 != 256) {
               zombieCar.col+= zombieCar.cdel;
       (*(volatile unsigned short *)0x04000014) = hOff;
       hOff+=2;

           } else{

               zombieCar.cdel = 0;
               hOff = 0;


        }
    }
# 113 "level3.c"
}
