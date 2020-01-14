
//{{BLOCK(back)

//======================================================================
//
//	back, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 64 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2048 + 2048 = 4608
//
//	Time-stamp: 2019-11-19, 15:25:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACK_H
#define GRIT_BACK_H

#define backTilesLen 2048
extern const unsigned short backTiles[1024];

#define backMapLen 2048
extern const unsigned short backMap[1024];

#define backPalLen 512
extern const unsigned short backPal[256];

#endif // GRIT_BACK_H

//}}BLOCK(back)
