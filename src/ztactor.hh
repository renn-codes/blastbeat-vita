//
// Created by Verity Blumenfeld on 1/16/24.
//

#ifndef BLASTBEATRAIDERS_ZTACTOR_HH
#define BLASTBEATRAIDERS_ZTACTOR_HH

#include <array>
#include <vector>
#include <map>

#include <vita2d.h>
#include "../lib/piclib.h"

class zt_actor {

public:
    zt_actor(char filename, int xsize, int ysize, int numframes);
    std::map<int, std::map<int,std::pair<int, int>>> spratlas;
    char spr;
    int frames;
    int xsize;
    int ysize;
    vita2d_texture genFrame(int facing, int frame);

};
#endif //BLASTBEATRAIDERS_ZTACTOR_HH
