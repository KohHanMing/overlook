//Fade in timer
ANIM_TIMER_DUR = 135;
ANIM_INTERVAL = 45;
ANIM_ALPHA_RATE_OF_CHANGE = 1 / ANIM_INTERVAL;
anim_timer = ANIM_TIMER_DUR;
is_anim_done = false;
black_screen_alpha = 1;

//Prompt const
PROMPT_TIMER_DUR = 225;
PROMPT_INTERVAL = 45;
PROMPT_ALPHA_RATE_OF_CHANGE = 1 / PROMPT_INTERVAL;

//first player prompt
prompt_one_timer = PROMPT_TIMER_DUR;
is_prompt_one_done = false;
prompt_one_alpha = 0;

//Wake const
WAKE_TIMER_DUR = 525;
WAKE_INTERVAL = 75;
WAKE_ALPHA_RATE_OF_CHANGE = 1 / WAKE_INTERVAL;

//Wake up and fall back asleep
wake_timer = WAKE_TIMER_DUR;
has_wake_started = false;
is_wake_done = false;
wake_text_one_alpha = 0;
wake_text_two_alpha = 0;

//second player prompt
prompt_two_timer = PROMPT_TIMER_DUR;
is_prompt_two_done = false;
prompt_two_alpha = 0;


//Finally awake
is_player_enabled = false;
awake_timer = WAKE_TIMER_DUR;
has_awake_started = false;
is_awake_done = false;
text_x = 405;
text_y = 345;
awake_text_one_alpha = 0;
awake_text_two_alpha = 0;

//Other inits
with (obj_player) {
	image_alpha = 0;	
}

with (obj_main) {
	text_alpha = 0;
	rect_alpha = 0;
}