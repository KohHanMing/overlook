/// @description Insert description here
// You can write your code in this editor
if (timer >= TIMER_DUR - ANIM_INTERVAL) {
	timer -= 1;	
} else if (timer >= TIMER_DUR - (2 * ANIM_INTERVAL) && timer < TIMER_DUR - ANIM_INTERVAL) {
	timer -= 1;
	splash_alpha += 0.0222;
} else if (timer >= TIMER_DUR - (3 * ANIM_INTERVAL) && timer < TIMER_DUR - (2 * ANIM_INTERVAL)) {
	timer -= 1;
	start_text_small_alpha += 0.0222;
} else {

	if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - start_text_width/2, room_height/2 + START_TXT_DISPL - start_text_height/2, room_width/2 + start_text_width/2, room_height/2 + START_TXT_DISPL + start_text_height/2)) {
		start_text_small_alpha = 0;
		start_text_large_alpha = 1;
		if (mouse_check_button_pressed(mb_left)) {
			room_goto(rm_main);	
		}
	} else {
		start_text_small_alpha = 1;
		start_text_large_alpha = 0;
	}
}