
//{{BLOCK(road)

//======================================================================
//
//	road, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 156 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 4992 + 4096 = 9600
//
//	Time-stamp: 2019-11-19, 15:23:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ROAD_H
#define GRIT_ROAD_H

#define roadTilesLen 4992
extern const unsigned short roadTiles[2496];

#define roadMapLen 4096
extern const unsigned short roadMap[2048];

#define roadPalLen 512
extern const unsigned short roadPal[256];

#endif // GRIT_ROAD_H

//}}BLOCK(road)
