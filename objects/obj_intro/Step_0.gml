/// @description Insert description here
// You can write your code in this editor
//Fade in
if (anim_timer >= ANIM_TIMER_DUR - ANIM_INTERVAL) {
	anim_timer -= 1;	
} else if (anim_timer >= ANIM_TIMER_DUR - (2 * ANIM_INTERVAL) && anim_timer < ANIM_TIMER_DUR - ANIM_INTERVAL) {
	anim_timer -= 1;
	black_screen_alpha -= 0.0222;
} else if (anim_timer >= ANIM_TIMER_DUR - (3 * ANIM_INTERVAL) && anim_timer < ANIM_TIMER_DUR - (2 * ANIM_INTERVAL)) {
	anim_timer -= 1;
	with (obj_main) {
		text_alpha += 0.0222;
		rect_alpha += 0.0222;
	}
} else {
	if (!is_anim_done) {
		is_anim_done = true;	
	}
	black_screen_alpha = 0;
	with (obj_main) {
		text_alpha = 1;
		rect_alpha = 1;
	}
}

//Show player prompt after 3 sec
if (!is_prompt_done) {
	if (prompt_timer >= PROMPT_INTERVAL) {
		prompt_timer -= 1;	
	} else if (prompt_timer >= 0 && prompt_timer < PROMPT_INTERVAL) {
		prompt_timer -= 1;
		prompt_alpha += 0.0222;
	} else {
		if (!is_prompt_done) {
			is_prompt_done = true;	
		}
	}
}

//Enable movement
if (global.volume > 3000 && !is_player_enabled) {
		is_player_enabled = true;
		is_prompt_done = true;
		prompt_alpha = 0;
		instance_create_layer(obj_player_disabled.x, obj_player_disabled.y, "Instances", obj_player);
		with (obj_player_disabled) {
			instance_destroy();
		}
		with (obj_sleeping_effect) {
			instance_destroy();
		}
	}