 /// @description Insert description here
// You can write your code in this editor
if (timer >= TIMER_DUR - ANIM_INTERVAL) {
	timer -= 1;	
} else if (timer >= TIMER_DUR - (2 * ANIM_INTERVAL) && timer < TIMER_DUR - ANIM_INTERVAL) {
	timer -= 1;
	black_screen_alpha -= ANIM_ALPHA_RATE_OF_CHANGE;
} else if (timer >= TIMER_DUR - (3 * ANIM_INTERVAL) && timer < TIMER_DUR - (2 * ANIM_INTERVAL)) {
	timer -= 1;
	start_text_small_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
} else {
	black_screen_alpha = 0;
	if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - start_text_width/2, room_height/2 + START_TXT_DISPL - start_text_height/2, room_width/2 + start_text_width/2, room_height/2 + START_TXT_DISPL + start_text_height/2)) {
		start_text_small_alpha = 0;
		start_text_large_alpha = 1;
		
		if (!has_played_button_sound) {
			audio_play_sound(snd_button, 1, false);
			has_played_button_sound = true;
		}
		if (mouse_check_button_pressed(mb_left)) {
			room_goto(rm_trigger_warning);	
		}
	} else {
		start_text_small_alpha = 1;
		start_text_large_alpha = 0;
		has_played_button_sound = false;
		
	}
}