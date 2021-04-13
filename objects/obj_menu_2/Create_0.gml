/// @description Insert description here
// You can write your code in this editor
TIMER_DUR = 135;
ANIM_INTERVAL = 45;
ANIM_ALPHA_RATE_OF_CHANGE = 1 / ANIM_INTERVAL;
black_screen_alpha = 1;
timer = TIMER_DUR;
has_played_button_sound = false;
is_anim_done = false;

//Start button
START_TXT_DISPL = 140;
start_text_width = 0;
start_text_height = 0;
start_text_small_alpha = 0;
start_text_large_alpha = 0;
has_reset = false;

//Better button
FLASH_TIMER_DUR = 240;
FLASH_INTERVAL = 60;
BETTER_ALPHA_RATE_OF_CHANGE = 1 / FLASH_INTERVAL;
FLASH_START_ALPHA_RATE_OF_CHANGE = 0.5 / FLASH_INTERVAL;
BETTER_TXT_DISPL = 160;
has_flash_started = false;
is_flash_done = false;
flash_timer = 240;
better_text_width = 0;
better_text_height = 0;
better_text_small_alpha = 0;
better_text_large_alpha = 0;

//Credits button
CREDITS_TXT_DISPL = 290;
credits_text_width = 0;
credits_text_height = 0;
credits_text_small_alpha = 0;
credits_text_large_alpha = 0;

//Back button
is_back_page = false;
BACK_TXT_DISPL = 280;
back_text_width = 0;
back_text_height = 0;
back_text_small_alpha = 0;
back_text_large_alpha = 0;
