
//{{BLOCK(Start)

//======================================================================
//
//	Start, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 105 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3360 + 2048 = 5920
//
//	Time-stamp: 2019-11-12, 23:38:39
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define StartTilesLen 3360
extern const unsigned short StartTiles[1680];

#define StartMapLen 2048
extern const unsigned short StartMap[1024];

#define StartPalLen 512
extern const unsigned short StartPal[256];

#endif // GRIT_START_H

//}}BLOCK(Start)
