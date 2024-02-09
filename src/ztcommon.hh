#ifndef ZTCOMMON_HH
#define ZTCOMMON_HH

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

// Macros for the fade speeds
#define FADE_SLOW 2
#define FADE_MED 5
#define FADE_FAST 17

/**
 * @brief Fades in the specified texture at the specified speed
 * @param tex The texture to fade in
 * @param speed The speed of the fade
 */
void fadeIn(vita2d_texture tex, int8_t speed);

/**
 * @brief Fades out the specified texture at the specified speed
 * @param tex The texture to fade out
 * @param speed The speed of the fade
 */
void fadeOut(vita2d_texture tex, int8_t speed);

#endif
