//
// Created by Verity Blumenfeld on 1/1/24.
//

#include "ztcommon.hh"
#include <vita2d.h>

// Macros for PSVita buttons
#define CROSS SCE_CTRL_CROSS
#define CIRCLE SCE_CTRL_CIRCLE
#define SQUARE SCE_CTRL_SQUARE
#define TRIANGLE SCE_CTRL_TRIANGLE
#define LTRIGGER SCE_CTRL_LTRIGGER
#define RTRIGGER SCE_CTRL_RTRIGGER
#define START SCE_CTRL_START
#define SELECT SCE_CTRL_SELECT
#define UP SCE_CTRL_UP
#define DOWN SCE_CTRL_DOWN
#define LEFT SCE_CTRL_LEFT
#define RIGHT SCE_CTRL_RIGHT

// Macros for fade speeds
#define FADE_SLOW 2
#define FADE_MED 5
#define FADE_FAST 17

/**
 * @brief Fades in the specified texture at the specified speed
 * @param tex The texture to fade in
 * @param speed The speed of the fade
 */
void fadeIn(vita2d_texture tex, int8_t speed) {
    int i;
    for (i = 255; i >= 0; i = i - speed) {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&tex, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
    }
}

/**
 * @brief Fades out the specified texture at the specified speed
 * @param tex The texture to fade out
 * @param speed The speed of the fade
 */
void fadeOut(vita2d_texture tex, int8_t speed) {
    int i;
    for (i = 0; i <= 255; i = i + speed) {
        vita2d_start_drawing();
        vita2d_clear_screen();
        vita2d_draw_texture(&tex, 0, 0);
        vita2d_draw_rectangle(0, 0, 960, 544, RGBA8(0, 0, 0, i));
        vita2d_end_drawing();
        vita2d_swap_buffers();
    }
}
