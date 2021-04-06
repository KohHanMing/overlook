if (!is_anim_done) {
	if (timer >= TIMER_DUR - ANIM_INTERVAL) {
		timer -= 1;	
		text_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
	} else if (timer >= TIMER_DUR - (2 * ANIM_INTERVAL) && timer < TIMER_DUR - ANIM_INTERVAL) {
		timer -= 1;
		text_alpha = 1;
	} else if (timer >= TIMER_DUR - (3 * ANIM_INTERVAL) && timer < TIMER_DUR - (2 * ANIM_INTERVAL)) {
		timer -= 1;
		text_alpha -= ANIM_ALPHA_RATE_OF_CHANGE;
	} else if (timer >= TIMER_DUR - (4 * ANIM_INTERVAL) && timer < TIMER_DUR - (3 * ANIM_INTERVAL)) {
		timer -= 1;
		help_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
	} else {
		text_alpha = 0;
		help_alpha = 1;
		is_anim_done = true;		
	}
}
