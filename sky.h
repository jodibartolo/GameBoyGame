
//{{BLOCK(sky)

//======================================================================
//
//	sky, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 275 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8800 + 2048 = 11360
//
//	Time-stamp: 2019-11-12, 19:16:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKY_H
#define GRIT_SKY_H

#define skyTilesLen 8800
extern const unsigned short skyTiles[4400];

#define skyMapLen 2048
extern const unsigned short skyMap[1024];

#define skyPalLen 512
extern const unsigned short skyPal[256];

#endif // GRIT_SKY_H

//}}BLOCK(sky)
