//Fade in

if (!is_anim_done) {
	if (anim_timer >= ANIM_TIMER_DUR - ANIM_INTERVAL) {
		anim_timer -= 1;	
	} else if (anim_timer >= ANIM_TIMER_DUR - (2 * ANIM_INTERVAL) && anim_timer < ANIM_TIMER_DUR - ANIM_INTERVAL) {
		anim_timer -= 1;
		black_screen_alpha -= ANIM_ALPHA_RATE_OF_CHANGE;
	} else if (anim_timer >= ANIM_TIMER_DUR - (3 * ANIM_INTERVAL) && anim_timer < ANIM_TIMER_DUR - (2 * ANIM_INTERVAL)) {
		anim_timer -= 1;
		with (obj_main) {
			text_alpha += obj_intro.ANIM_ALPHA_RATE_OF_CHANGE;
			rect_alpha += obj_intro.ANIM_ALPHA_RATE_OF_CHANGE;
		}
	} else {
		is_anim_done = true;
		black_screen_alpha = 0;
		with (obj_main) {
			text_alpha = 1;
			rect_alpha = 1;
		}
	}
}

//Show player prompt after 3 sec
if (!is_prompt_one_done && is_anim_done) {
	if (prompt_one_timer >= PROMPT_INTERVAL) {
		prompt_one_timer -= 1;	
	} else if (prompt_one_timer >= 0 && prompt_one_timer < PROMPT_INTERVAL) {
		prompt_one_timer -= 1;
		prompt_one_alpha += PROMPT_ALPHA_RATE_OF_CHANGE;
	} else {
		is_prompt_one_done = true;
	}
}

//Wake up and fall back asleep.
//Start wake up cutscene
if (global.volume > 3000 && !has_wake_started) {
	is_prompt_one_done = true;
	prompt_one_alpha = 0;
	has_wake_started = true;
	with (obj_sleeping_effect) {
		image_alpha = 0;
	}
}

//Waking up
if (has_wake_started && !is_wake_done) {
	if (wake_timer >= WAKE_TIMER_DUR - WAKE_INTERVAL) {
		with (obj_main) {
			text_alpha -= obj_intro.WAKE_ALPHA_RATE_OF_CHANGE;
			rect_alpha -= obj_intro.WAKE_ALPHA_RATE_OF_CHANGE;;
		}
		wake_timer -= 1;
		wake_text_one_alpha += WAKE_ALPHA_RATE_OF_CHANGE;
	} else if (wake_timer >= WAKE_TIMER_DUR - (2 * WAKE_INTERVAL) && wake_timer < WAKE_TIMER_DUR - WAKE_INTERVAL) {
		wake_timer -= 1;
		wake_text_one_alpha = 1;
	} else if (wake_timer >= WAKE_TIMER_DUR - (3 * WAKE_INTERVAL) && wake_timer < WAKE_TIMER_DUR - (2 * WAKE_INTERVAL)) {
		wake_timer -= 1;
		wake_text_one_alpha -= WAKE_ALPHA_RATE_OF_CHANGE;
	} else if (wake_timer >= WAKE_TIMER_DUR - (4 * WAKE_INTERVAL) && wake_timer < WAKE_TIMER_DUR - (3 * WAKE_INTERVAL)) {
		wake_timer -= 1;
		with (obj_sleeping_effect) {
			image_alpha += obj_intro.WAKE_ALPHA_RATE_OF_CHANGE;
		}
		with (obj_main) {
			text_alpha += obj_intro.WAKE_ALPHA_RATE_OF_CHANGE;
			rect_alpha += obj_intro.WAKE_ALPHA_RATE_OF_CHANGE;
		}
	} else {
		if (!is_wake_done) {
			is_wake_done = true;
		}
		wake_text_one_alpha = 0;
		with (obj_main) {
			text_alpha = 1;
			rect_alpha = 1;
		}
	}
}


//Enable movement
if (global.volume > 8000 && !is_player_enabled && is_wake_done) {
	is_player_enabled = true;
	//is_prompt_one_done = true;
	//prompt_one_alpha = 0;
	instance_create_layer(obj_player_disabled.x, obj_player_disabled.y, "Instances", obj_player);
	with (obj_player_disabled) {
		instance_destroy();
	}
	with (obj_sleeping_effect) {
		instance_destroy();
	}
}