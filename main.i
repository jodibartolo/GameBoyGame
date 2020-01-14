# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 17 "main.c"
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
# 18 "main.c" 2
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
# 19 "main.c" 2
# 1 "Start.h" 1
# 22 "Start.h"
extern const unsigned short StartTiles[1680];


extern const unsigned short StartMap[1024];


extern const unsigned short StartPal[256];
# 20 "main.c" 2
# 1 "FinalSheet.h" 1
# 21 "FinalSheet.h"
extern const unsigned short FinalSheetTiles[16384];


extern const unsigned short FinalSheetPal[256];
# 21 "main.c" 2
# 1 "road.h" 1
# 22 "road.h"
extern const unsigned short roadTiles[2496];


extern const unsigned short roadMap[2048];


extern const unsigned short roadPal[256];
# 22 "main.c" 2
# 1 "sky.h" 1
# 22 "sky.h"
extern const unsigned short skyTiles[4400];


extern const unsigned short skyMap[1024];


extern const unsigned short skyPal[256];
# 23 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[4896];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 24 "main.c" 2
# 1 "Ah.h" 1
# 20 "Ah.h"
extern const unsigned char Ah[423057];
# 25 "main.c" 2
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
# 26 "main.c" 2
# 1 "back.h" 1
# 22 "back.h"
extern const unsigned short backTiles[1024];


extern const unsigned short backMap[1024];


extern const unsigned short backPal[256];
# 27 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[2432];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 28 "main.c" 2
# 1 "level.h" 1



extern ANISPRITE icemanWalk;
extern ANISPRITE iceBoard;
extern ANISPRITE iceBoard1;
void initBoard();
void drawBoard();
void updateBoard();
void initPlayerWalk();
void updatePlayerWalk();
void drawPlayerWalk();
void animatePlayer1();
void drawPlayer1();
void initPlayer1();
void initCream1();
void drawCream1();
void updateLevel();
void drawLevel();
void updateCream1();
void updatePlayer1();
void initLevel();
# 29 "main.c" 2
# 1 "iceMAnVO.h" 1
# 20 "iceMAnVO.h"
extern const unsigned char iceMAnVO[75796];
# 30 "main.c" 2
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 1 3
# 10 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 16 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 43 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3

# 41 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 44 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3

# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 149 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 46 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 12 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 15 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 1 3 4
# 9 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 3 4
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 2 3 4
# 6 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 357 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;


typedef __builtin_va_list __va_list;
# 16 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 571 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
  void *deviceData;
};
# 769 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 13 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3



# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 17 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3


# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/time.h" 1 3
# 20 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3
# 28 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 63 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef long time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 29 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/timespec.h" 1 3
# 38 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
# 1 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_timespec.h" 1 3
# 45 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/timespec.h" 2 3
# 58 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 30 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 2 3







struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;







char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;


# 103 "/Users/jodiannebartolo/Desktop/Fall2019/CS2261/devkitARM/arm-none-eabi/include/time.h" 3
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 31 "main.c" 2
# 1 "subLevel.h" 1
# 22 "subLevel.h"

# 22 "subLevel.h"
extern const unsigned short subLevelTiles[1600];


extern const unsigned short subLevelMap[2048];


extern const unsigned short subLevelPal[256];
# 32 "main.c" 2
# 1 "sky2.h" 1
# 22 "sky2.h"
extern const unsigned short sky2Tiles[64];


extern const unsigned short sky2Map[1024];


extern const unsigned short sky2Pal[256];
# 33 "main.c" 2
# 1 "catchmusic.h" 1
# 20 "catchmusic.h"
extern const unsigned char catchmusic[311294];
# 34 "main.c" 2
# 1 "drivemusic.h" 1
# 20 "drivemusic.h"
extern const unsigned char drivemusic[415059];
# 35 "main.c" 2
# 1 "catchmusic2.h" 1
# 20 "catchmusic2.h"
extern const unsigned char catchmusic2[103765];
# 36 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[1952];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 37 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[2848];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 38 "main.c" 2



void initialize();
void goToGame();
void game();
void start();
void goToStart();


OBJ_ATTR shadowOAM[128];
enum {GAME, START, WIN, LOSE, PAUSE, INSTR, CHANGE};
int state;


unsigned short buttons;
unsigned short oldButtons;
SOUND soundA;
SOUND soundB;

int main() {
    srand(time(
# 59 "main.c" 3 4
              ((void *)0)
# 59 "main.c"
                  ));

    initialize();
    setupInterrupts();
 setupSounds();

    while(1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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
            case CHANGE:
                levelChanger();
                break;
        }

    }
}


void initialize() {



    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((7)<<8) | (0<<14);

    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((14)<<8) | (1<<14);
    (*(volatile unsigned short*)0x400000C) = ((2)<<2) | ((21)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000E) = ((3)<<2) | ((28)<<8) | (0<<14);


    goToStart();

}


void goToGame() {

    pauseSound();

    DMANow(3, roadPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, roadTiles, &((charblock *)0x6000000)[1], 4992 / 2);
    DMANow( 3, roadMap, &((screenblock *)0x6000000)[14], 4096 / 2);
    DMANow(3, backTiles, &((charblock *)0x6000000)[3], 2048 / 2);
    DMANow( 3, backMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<11) | (1<<12);
     initGame();


    playSoundA(Ah, 423057 - 400, 11025, 1);
    unpauseSound();

    waitForVBlank();


    state = GAME;

}
void goToLevel3() {
    level = 5;


    DMANow(3, subLevelPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, subLevelTiles, &((charblock *)0x6000000)[1], 3200 / 2);
    DMANow( 3, subLevelMap, &((screenblock *)0x6000000)[14], 4096 / 2);
    DMANow(3, sky2Tiles, &((charblock *)0x6000000)[3], 128 / 2);
    DMANow( 3, sky2Map, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<11) | (1<<12);
     initLevel3();


    playSoundA(drivemusic, 415059 - 400, 11025, 1);

    waitForVBlank();


    state = GAME;

}


void game() {


    drawGame();
    updateGame();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
        if (hits == 10 && level == 2) {
            DMANow(3, roadPal, ((unsigned short *)0x5000000), 256);
            DMANow(3, roadTiles, &((charblock *)0x6000000)[1], 4992 / 2);
            DMANow( 3, roadMap, &((screenblock *)0x6000000)[14], 4096 / 2);
            DMANow(3, backTiles, &((charblock *)0x6000000)[3], 2048 / 2);
            DMANow( 3, backMap, &((screenblock *)0x6000000)[28], 2048 / 2);

            hideSprites();
            initPlayerWalk();
            initBoard();
            pauseSound();
                playSoundA(catchmusic2, 103765 - 400, 11025, 1);
            playSoundB(iceMAnVO, 75796 - 300, 11025, 0);
            state = CHANGE;
        } else if(hits ==10) { goToLevel3();
        }



    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
 pauseSound();
        goToPause();
    }

}
void game3() {

    drawLevel3();
    updateLevel3();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
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
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if (icemanWalk.hide) {
        level = 3;
    DMANow(3, roadPal, ((unsigned short *)0x5000000), 256);

    DMANow(3, roadTiles, &((charblock *)0x6000000)[1], 4992 / 2);
    DMANow( 3, roadMap, &((screenblock *)0x6000000)[14], 4096 / 2);

    hideSprites();
    initLevel();
     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);



    waitForVBlank();
    pauseSound();
       playSoundA(catchmusic, 311294 - 400, 11025, 1);

        state = GAME;
    }

}
void game2() {


    drawLevel();
    updateLevel();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
        if (collect == 20 ) {
            hideSprites();
            hits = 0;
            level = 4;

            pauseSound();

   goToGame();

        }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
      pauseSound();
        goToPause();
    }
        if (icees == 0) {
                DMANow(3, losePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[2], 9792/2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[21], 2048/2);
    hideSprites();

    (*(unsigned short *)0x4000000) = 0 | (1<<10);
    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = LOSE;
    }


}
void goToStart() {
    level = 2;
    hits = 0;

    (*(unsigned short *)0x4000000) = 0 | (1<<8) ;

    DMANow(3, StartPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, StartTiles, &((charblock *)0x6000000)[0], 3360/2);
    DMANow(3, StartMap, &((screenblock *)0x6000000)[7], 2048/2);
    hideSprites();


      playSoundA(catchmusic2, 103765 - 400, 11025, 1);

    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = START;

}
void start() {


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToInstr();
    }
}
void instructions() {


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }
}
void goToInstr() {
        (*(unsigned short *)0x4000000) = 0 | (1<<10) ;

    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[2], 9792/2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[21], 2048/2);
    hideSprites();


    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = INSTR;
}

void win() {

   if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }

}

void lose() {


  if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }

}
void pause() {

    drawBoard1();
    updateBoard1();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

        if (level ==2) {
        hideSprites();
    pauseSound();
    DMANow(3, roadPal, ((unsigned short *)0x5000000), 256);

    DMANow(3, roadTiles, &((charblock *)0x6000000)[1], 4992 / 2);
    DMANow( 3, roadMap, &((screenblock *)0x6000000)[14], 4096 / 2);
    DMANow(3, backTiles, &((charblock *)0x6000000)[3], 2048 / 2);
    DMANow( 3, backMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<11) | (1<<12);



    playSoundA(Ah, 423057 - 400, 11025, 1);

    waitForVBlank();

    unpauseSound();
    state = GAME;
        } else if (level == 5) {
            hideSprites();
               DMANow(3, subLevelPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, subLevelTiles, &((charblock *)0x6000000)[1], 3200 / 2);
    DMANow( 3, subLevelMap, &((screenblock *)0x6000000)[14], 4096 / 2);
    DMANow(3, sky2Tiles, &((charblock *)0x6000000)[3], 128 / 2);
    DMANow( 3, sky2Map, &((screenblock *)0x6000000)[28], 2048 / 2);

    hideSprites();
     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<11) | (1<<12);



    playSoundA(drivemusic, 415059 - 400, 11025, 1);

    waitForVBlank();


    state = GAME;
        } else if (level ==3) {
            hideSprites();
                DMANow(3, roadPal, ((unsigned short *)0x5000000), 256);

    DMANow(3, roadTiles, &((charblock *)0x6000000)[1], 4992 / 2);
    DMANow( 3, roadMap, &((screenblock *)0x6000000)[14], 4096 / 2);

    hideSprites();

     (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);



    waitForVBlank();
    pauseSound();
       playSoundA(catchmusic, 311294 - 400, 11025, 1);

        state = GAME;

        }
}
if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
     goToStart();
}

}
void goToPause() {



    DMANow(3, pausePal, ((unsigned short *)0x5000000), 256);

    DMANow(3, pauseTiles, &((charblock *)0x6000000)[2], 4992 / 2);
    DMANow( 3, pauseMap, &((screenblock *)0x6000000)[21], 4096 / 2);


    hideSprites();
     (*(unsigned short *)0x4000000) = 0 | (1<<10) | (1<<12);
     initBoard1();

      playSoundA(catchmusic2, 103765 - 400, 11025, 1);
    unpauseSound();

    waitForVBlank();


    state = PAUSE;

}

void goToWin() {
    hideSprites();
            (*(unsigned short *)0x4000000) = 0 | (1<<10) ;

    DMANow(3, winPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, winTiles, &((charblock *)0x6000000)[2], 9792/2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[21], 2048/2);
    hideSprites();


    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = WIN;

}
