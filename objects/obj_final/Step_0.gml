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
	} else if (timer >= TIMER_DUR - (5 * ANIM_INTERVAL) && timer < TIMER_DUR - (4 * ANIM_INTERVAL)) {
		timer -= 1;
		help_alpha = 1;
	} else if (timer >= TIMER_DUR - (6 * ANIM_INTERVAL) && timer < TIMER_DUR - (5 * ANIM_INTERVAL)) {
		timer -= 1;
		back_text_small_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
	} else {
		text_alpha = 0;
		help_alpha = 1;
		is_anim_done = true;	
	}
}

if (is_anim_done) {
	if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - back_text_width/2, room_height/2 + BACK_TXT_DISPL - back_text_height/2, room_width/2 + back_text_width/2, room_height/2 + BACK_TXT_DISPL + back_text_height/2)) {
		//Hover over back button
		back_text_small_alpha = 0;
		back_text_large_alpha = 1;
		
		if (mouse_check_button_pressed(mb_left)) {
			room_goto(rm_menu_2);
			global.is_good_ending_unlocked = true;
			global.too_loud_counter = 0;
		}
	} else {
		back_text_small_alpha = 1;
		back_text_large_alpha = 0;	
	}
}
