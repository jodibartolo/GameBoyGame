// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256
#define SHIFTUP(i) ((i) << 8)  //- initialization / calculation (update)
#define SHIFTDOWN(i) ((i) >> 8)  //- position (collision)/ position (draw/erase)
#define ZOMBIECOUNT 10


// Variables
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
extern ANISPRITE zombies[ZOMBIECOUNT];
extern int collect;
extern int run; 
extern int icees;


// Prototypes 
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