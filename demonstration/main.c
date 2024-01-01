//
// Created by Verity Blumenfeld on 1/1/24 under the GNU Public License v3
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#include <psp2/ctrl.h>
#include <psp2/kernel/processmgr.h>

#include <vita2d.h>

#include "common.h"

// Symbols for graphical assets
extern unsigned char _binary_ztsplash_png_start;

void fadetest(vita2d_texture ztsplash)
{
    int i;
    for (i = 255; i >= 0; i++)
    {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&ztsplash, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
        i = i - FADE_FAST;
    }
    for (i = 0; i <= 255; i--)
    {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&ztsplash, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
        i = i + FADE_FAST;
    }
    for (i = 255; i >= 0; i++)
    {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&ztsplash, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
        i = i - FADE_SLOW;
    }
    for (i = 0; i <= 255; i--)
    {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&ztsplash, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
        i = i + FADE_SLOW;
    }
}

int main()
{
    SceCtrlData pad;
    vita2d_texture *ztsplash;

    // Init vita2d stuff
    vita2d_init();
    vita2d_set_clear_color(RGBA8(0x40, 0x40, 0x40, 0xFF));

    ztsplash = vita2d_load_PNG_buffer(&_binary_ztsplash_png_start);

    memset(&pad, 0, sizeof(pad));

    int8_t fade = TRUE;

    if (fade == TRUE) {
        fadetest(*ztsplash);
        fade = FALSE;
    }

    vita2d_fini();
    vita2d_free_texture(ztsplash);
    sceKernelExitProcess(0);
    return 0;
}