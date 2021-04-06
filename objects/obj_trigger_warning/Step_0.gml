if (!is_anim_done) {
	if (timer >= TIMER_DUR - ANIM_INTERVAL) {
		timer -= 1;	
		string_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
	} else if (timer >= TIMER_DUR - (2 * ANIM_INTERVAL) && timer < TIMER_DUR - ANIM_INTERVAL) {
		timer -= 1;
		string_alpha = 1;
	} else if (timer >= TIMER_DUR - (3 * ANIM_INTERVAL) && timer < TIMER_DUR - (2 * ANIM_INTERVAL)) {
		timer -= 1;
		string_alpha -= ANIM_ALPHA_RATE_OF_CHANGE;
	} else {
		string_alpha = 0;
		is_anim_done = true;		
	}
} else {
	room_goto(rm_introduction);	
}