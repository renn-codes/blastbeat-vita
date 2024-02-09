//
// Created by Verity Blumenfeld on 1/16/24.
//

#include "ztactor.hh"

zt_actor::zt_actor(char filename, int xsiz, int ysiz, int numframes) {
    spr = filename;
    frames = numframes;
    xsize = xsiz;
    ysize = ysiz;
    int x = 0;
    int y = 0;
    int frame = 0;
    int framex = 0;
    int framey = 0;
    for (int i = 0; i < 4; frame++) {
        if (frame == frames)
        {
            framex = 0;
            frame = 0;
            framey = framey + ysize;
            i++;
        }
        else {
            spratlas[i][frame] = std::make_pair(x + framex, y + framey);
            framex = framex + xsize;
        }
    }
}

/**
 * @brief   Returns the specified frame of the actor in the specified facing
 * @details This function draws the specified frame of the actor, in the specified facing. It returns the texture of the frame. \n\n
 * It is assumed that it is called within a loop that calls vita2d_start_drawing(), vita2d_end_drawing(), and vita2d_swap_buffers()
 * @param facing The direction the actor is facing, best passed as a SPRMask facing value
 * @param frame The frame of the actor to draw
 */
vita2d_texture zt_actor::genFrame(int facing, int frame)
{
    const char& cspr = spr;
    const_cast<char&>(cspr) = spr;
    vita2d_texture *region = load_PIC_file(&cspr, spratlas[facing][frame].first, spratlas[facing][frame].second, xsize, ysize);
    return *region;
}