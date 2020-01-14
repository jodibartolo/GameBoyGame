
//{{BLOCK(sky2)

//======================================================================
//
//	sky2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 4 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 128 + 2048 = 2688
//
//	Time-stamp: 2019-12-04, 14:03:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKY2_H
#define GRIT_SKY2_H

#define sky2TilesLen 128
extern const unsigned short sky2Tiles[64];

#define sky2MapLen 2048
extern const unsigned short sky2Map[1024];

#define sky2PalLen 512
extern const unsigned short sky2Pal[256];

#endif // GRIT_SKY2_H

//}}BLOCK(sky2)
