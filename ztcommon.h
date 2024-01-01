#ifndef COMMON_H
#define COMMON_H

#ifdef __cplusplus
extern "C" {
#endif

// Define boolean values
#define TRUE 1
#define FALSE 0

// Defines for the buttons
#define START_BUTTON SCE_CTRL_START
#define SELECT_BUTTON SCE_CTRL_SELECT
#define UP_BUTTON SCE_CTRL_UP
#define DOWN_BUTTON SCE_CTRL_DOWN
#define LEFT_BUTTON SCE_CTRL_LEFT
#define RIGHT_BUTTON SCE_CTRL_RIGHT
#define TRIANGLE_BUTTON SCE_CTRL_TRIANGLE
#define CIRCLE_BUTTON SCE_CTRL_CIRCLE
#define CROSS_BUTTON SCE_CTRL_CROSS
#define SQUARE_BUTTON SCE_CTRL_SQUARE
#define LTRIGGER_BUTTON SCE_CTRL_LTRIGGER
#define RTRIGGER_BUTTON SCE_CTRL_RTRIGGER

// Defines for the fade speeds
#define FADE_SLOW 5
#define FADE_FAST 17

// Function prototypes or other declarations can be added here if needed

#ifdef __cplusplus
}
#endif

#endif // COMMON_H
