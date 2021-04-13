/// @description Insert description here
// You can write your code in this editor
var xcoord = camera_get_view_x(view_camera[0]) + total_offset_x;
var ycoord = camera_get_view_y(view_camera[0]) + total_offset_y;
if (!is_break) {
	x = xcoord;
	y = ycoord;

	if (room != rm_finish) {
		if (global.volume < RED_VOLUME) {
			image_yscale = global.volume / MAX_VOLUME;
			sprite_index = spr_voice_ui_bar_white;
		} else if (global.volume >= 8000 && global.volume < MAX_VOLUME) {
			image_yscale = global.volume / MAX_VOLUME;
			sprite_index = spr_voice_ui_bar_red;
		} else {
			image_yscale = 1;
			sprite_index = spr_voice_ui_bar_red;
		}
	} else {
	
	}	
} else {
	if (timer > 90) {
		timer -= 1;
	} else if (timer > 0 && timer <= 90) {
		move_towards_point(xcoord - 25, ycoord - 100, 10);	
		timer -= 1;
	} else {
		image_alpha = 0;
		x = xcoord - 25;
		y = ycoord - 100;
	}
}