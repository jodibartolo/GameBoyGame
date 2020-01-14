
//{{BLOCK(subLevel)

//======================================================================
//
//	subLevel, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 100 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3200 + 4096 = 7808
//
//	Time-stamp: 2019-12-06, 13:34:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SUBLEVEL_H
#define GRIT_SUBLEVEL_H

#define subLevelTilesLen 3200
extern const unsigned short subLevelTiles[1600];

#define subLevelMapLen 4096
extern const unsigned short subLevelMap[2048];

#define subLevelPalLen 512
extern const unsigned short subLevelPal[256];

#endif // GRIT_SUBLEVEL_H

//}}BLOCK(subLevel)
