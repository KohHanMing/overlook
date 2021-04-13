 /// @description Insert description here
// You can write your code in this editor
if (!is_anim_done) {
	if (timer >= TIMER_DUR - ANIM_INTERVAL) {
	timer -= 1;	
	} else if (timer >= TIMER_DUR - (2 * ANIM_INTERVAL) && timer < TIMER_DUR - ANIM_INTERVAL) {
		timer -= 1;
		black_screen_alpha -= ANIM_ALPHA_RATE_OF_CHANGE;
	} else if (timer >= TIMER_DUR - (3 * ANIM_INTERVAL) && timer < TIMER_DUR - (2 * ANIM_INTERVAL)) {
		timer -= 1;
		start_text_small_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
		credits_text_small_alpha += ANIM_ALPHA_RATE_OF_CHANGE;
	} else {
		start_text_small_alpha = 1;
		credits_text_small_alpha = 1;
		black_screen_alpha = 0;
		is_anim_done = true;
	}
}

if (is_anim_done && !has_flash_started) {
	has_flash_started = true;	
}

if (has_flash_started && !is_flash_done) {
	if (flash_timer >= FLASH_TIMER_DUR - FLASH_INTERVAL) {
		//pause
		flash_timer -= 1;
	} else if (flash_timer >= FLASH_TIMER_DUR - (2 * FLASH_INTERVAL) && flash_timer < FLASH_TIMER_DUR - FLASH_INTERVAL) {
		//flash
		flash_timer -= 1;
		if (start_text_small_alpha == 1) {
			start_text_small_alpha = 0.2
		} else {
			start_text_small_alpha = 1;
		}
	} else if (flash_timer >= FLASH_TIMER_DUR - (3 * FLASH_INTERVAL) && flash_timer < FLASH_TIMER_DUR - (2 * FLASH_INTERVAL)) {
		//blend with bg
		if (!has_reset) {
			has_reset = true;
			start_text_small_alpha = 1;
			repeat (25) {
				var debris = instance_create_layer(irandom_range((room_width/2 - start_text_width * 0.3), (room_width/2 + start_text_width * 0.3)), (room_height/2 + START_TXT_DISPL - start_text_height * 0.3), "Instances", obj_debris);	
				debris.direction = 90;
			}
			repeat (25) {
				var debris = instance_create_layer(irandom_range((room_width/2 - start_text_width * 0.3), (room_width/2 + start_text_width * 0.3)), (room_height/2 + START_TXT_DISPL + start_text_height * 0.3), "Instances", obj_debris);	
				debris.direction = 270;
			}
		}
		flash_timer -= 1;
		start_text_small_alpha -= FLASH_START_ALPHA_RATE_OF_CHANGE;
	} else if (flash_timer >= FLASH_TIMER_DUR - (4 * FLASH_INTERVAL) && flash_timer < FLASH_TIMER_DUR - (3 * FLASH_INTERVAL)) {
		//text fade in
		flash_timer -= 1;
		better_text_small_alpha += BETTER_ALPHA_RATE_OF_CHANGE;
	} else {
		better_text_small_alpha = 1;
		start_text_small_alpha = 0.2;
		is_flash_done = true;
	}
}

if (is_flash_done) {
	if (!is_back_page) {
		back_text_small_alpha = 0;
		back_text_large_alpha = 0;
		start_text_small_alpha = 0.2;
		with (obj_credits) {
			image_alpha = 0;	
		}
		//Hover over start button
		if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - better_text_width/2, room_height/2 + BETTER_TXT_DISPL - better_text_height/2, room_width/2 + better_text_width/2, room_height/2 + BETTER_TXT_DISPL + better_text_height/2)) {
			better_text_small_alpha = 0;
			better_text_large_alpha = 1;
			credits_text_small_alpha = 1;
			credits_text_large_alpha = 0;
		
			if (!has_played_button_sound) {
				audio_play_sound(snd_button, 1, false);
				has_played_button_sound = true;
			}
			if (mouse_check_button_pressed(mb_left)) {
				room_goto(rm_trigger_warning);	
			}
		} else if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - credits_text_width/2, room_height/2 + CREDITS_TXT_DISPL - credits_text_height/2, room_width/2 + credits_text_width/2, room_height/2 + CREDITS_TXT_DISPL + credits_text_height/2)) {
			//Hover over credits button
			better_text_small_alpha = 1;
			better_text_large_alpha = 0;
			credits_text_small_alpha = 0;
			credits_text_large_alpha = 1;
		
			if (!has_played_button_sound) {
				audio_play_sound(snd_button, 1, false);
				has_played_button_sound = true;
			}
			if (mouse_check_button_pressed(mb_left)) {
				is_back_page = true;	
			}
		} else {
			better_text_small_alpha = 1;
			better_text_large_alpha = 0;
			credits_text_small_alpha = 1;
			credits_text_large_alpha = 0;
			start_text_small_alpha = 0.2;
			has_played_button_sound = false;	
		}
	} else {
		with (obj_credits) {
			image_alpha = 1;	
		}
		better_text_small_alpha = 0;
		better_text_large_alpha = 0;
		credits_text_small_alpha = 0;
		credits_text_large_alpha = 0;
		start_text_small_alpha = 0;
		start_text_large_alpha = 0;
		if (point_in_rectangle(mouse_x, mouse_y, room_width/6 - back_text_width/2, room_height/2 + BACK_TXT_DISPL - back_text_height/2, room_width/6 + back_text_width/2, room_height/2 + BACK_TXT_DISPL + back_text_height/2)) {
			//Hover over back button
			back_text_small_alpha = 0;
			back_text_large_alpha = 1;
		
			if (!has_played_button_sound) {
				audio_play_sound(snd_button, 1, false);
				has_played_button_sound = true;
			}
			if (mouse_check_button_pressed(mb_left)) {
				is_back_page = false;	
			}
		} else {
			back_text_small_alpha = 1;
			back_text_large_alpha = 0;
			has_played_button_sound = false;	
		}
	}	
	
}