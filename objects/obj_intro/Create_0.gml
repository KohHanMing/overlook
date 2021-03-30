//Fade in timer
ANIM_TIMER_DUR = 135;
ANIM_INTERVAL = 45;
anim_timer = ANIM_TIMER_DUR;
is_anim_done = false;

//Player prompt
PROMPT_TIMER_DUR = 225;
PROMPT_INTERVAL = 45;
prompt_timer = PROMPT_TIMER_DUR;
is_prompt_done = false;
prompt_alpha = 0;

black_screen_alpha = 1;
is_player_enabled = false;

with (obj_player) {
	image_alpha = 0;	
}

with (obj_main) {
	text_alpha = 0;
	rect_alpha = 0;
}