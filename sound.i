# 1 "sound.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sound.c"
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
# 2 "sound.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 3 "sound.c" 2
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
# 4 "sound.c" 2

void setupSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;

        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);
        soundA.loops = loops;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.data = sound;
        soundA.isPlaying = 1;
        soundA.duration = (((59.727) * length) / frequency);
        soundA.vBlankCount = 0;
# 54 "sound.c"
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;

        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);
        soundB.loops = loops;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.data = sound;
        soundB.isPlaying = 1;
        soundB.duration = (((59.727) * length) / frequency);
        soundB.vBlankCount = 0;
# 87 "sound.c"
}

void setupInterrupts()
{
 *(unsigned short*)0x4000208 = 0;




    *(unsigned int*)0x3007FFC = (unsigned int)interruptHandler;

 *(unsigned short*)0x4000200 |= 1 << 0;
 *(unsigned short*)0x4000004 |= 1 << 3;
 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {

 *(unsigned short*)0x4000208 = 0;

 if(*(volatile unsigned short*)0x4000202 & 1 << 0) {
  if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    *(volatile unsigned short*)0x4000102 = 0;
                    *(volatile unsigned short*)0x4000102 = (0<<7);
                    dma[1].cnt = 0;

                }
            }
# 132 "sound.c"
  }






     if (soundB.isPlaying) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundA(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    *(volatile unsigned short*)0x4000106 = 0;
                    *(volatile unsigned short*)0x4000106 = (0<<7);
                    dma[2].cnt = 0;
                }
            }
        }
        if (run) {
        *(volatile unsigned short*)0x400010A = 0;
        *(volatile unsigned short*)0x4000108 = 65536 - 16384;
        *(volatile unsigned short*)0x400010A = (1<<7) | 3 ;

        }




  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }

 *(unsigned short*)0x4000208 = 1;
}

void pauseSound() {
    if (soundA.isPlaying) {
        soundA.isPlaying = 0;
        *(volatile unsigned short*)0x4000102 = 0;
        *(volatile unsigned short*)0x4000102 = (0<<7);

    }
     if (soundB.isPlaying) {
        soundB.isPlaying = 0;
        *(volatile unsigned short*)0x4000106 = 0;
        *(volatile unsigned short*)0x4000106 = (0<<7);

    }
# 191 "sound.c"
}

void unpauseSound() {


    if (!soundA.isPlaying) {
        soundA.isPlaying = 1;
        *(volatile unsigned short*)0x4000102 = (1<<7);

    }
     if (!soundB.isPlaying) {
        soundB.isPlaying = 1;
        *(volatile unsigned short*)0x4000106 = (1<<7);

    }






}

void stopSound() {




 if(soundA.isPlaying) {
     soundA.isPlaying = 0;
     *(volatile unsigned short*)0x4000102 = (0<<7);
     dma[1].cnt = 0;
 } if (soundB.isPlaying) {
     soundB.isPlaying = 0;
     *(volatile unsigned short*)0x4000106 = (0<<7);
     dma[2].cnt = 0;
 }






}