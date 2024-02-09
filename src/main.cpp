//
// Created by Verity Blumenfeld on 1/1/24 under the GNU Public License v3
//

#include <string.h>

#include <psp2/ctrl.h>
#include <psp2/kernel/processmgr.h>

#include <vita2d.h>

#include "ztcommon.hh"
//#include "ztactor.hh"

// Symbols for MainMenu loop assets

void mainMenu(SceCtrlData pad)
{
    vita2d_texture *aaa;
    vita2d_texture *aab;
    vita2d_texture *aac;
    vita2d_pvf *aa;
    aaa = vita2d_load_PNG_file("app0:assets/g/a/aaa.png");
    aab = vita2d_load_PNG_file("app0:assets/g/a/aab.png");
    aac = vita2d_load_PNG_file("app0:assets/g/a/aac.png");
    aa = vita2d_load_custom_pvf("app0:assets/f/aa.pvf");
    bool exit = false;

    //Draw intro splashes
    fadeIn(*aaa, FADE_MED);
    sceKernelDelayThread(1250000);
    fadeOut(*aaa, FADE_MED);
    sceKernelDelayThread(500000);
    fadeIn(*aab, FADE_MED);
    sceKernelDelayThread(1250000);
    fadeOut(*aab, FADE_MED);
    sceKernelDelayThread(500000);

    while(true) {
        sceCtrlPeekBufferPositive(0, &pad, 1);
        if (pad.buttons & CROSS) {
            exit = true;
        }
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(aac, 0, 0);
        vita2d_pvf_draw_text(aa, 425, 440, RGBA8(255, 255, 255, 255), 1.2f, "New Game");
        vita2d_pvf_draw_text(aa, 423, 475, RGBA8(255, 255, 255, 255), 1.2f, "Load Game");
        if (exit)
        {
            vita2d_pvf_draw_text(aa, 0, 0, RGBA8(255, 255, 255, 255), 1.2f, "...This is a demo. You can exit normally, idiot...");
        }
        vita2d_end_drawing();
        vita2d_swap_buffers();
    }
}

void demo()
{

}

int main(int argc, char *argv[])
{
    SceCtrlData pad;
    // Init vita2d stuff
    vita2d_init();
    vita2d_set_clear_color(RGBA8(0x40, 0x40, 0x40, 0xFF));

    memset(&pad, 0, sizeof(pad));

    mainMenu(pad);

    vita2d_pvf *aa;
    vita2d_start_drawing();
    vita2d_pvf_draw_text(aa, 10, 5, RGBA8(255, 255, 255, 255), 1.2f, "You can quit me now lol");
    vita2d_end_drawing();
    vita2d_swap_buffers();
    vita2d_fini();
    return 0;
}