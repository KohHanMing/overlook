//Volume init
RED_VOLUME = 8000;
MAX_VOLUME = 8889;

if (room != rm_finish && room != rm_finish_good) {
	image_yscale = global.volume / MAX_VOLUME;
	outer_ui_width = 32;
	outer_ui_height = 128;
	align_offset = 8;
	sprite_full_height = 88;
	border_offset = 10;
} else {
	image_yscale = 1.6;	
	image_xscale = 1.6;
	sprite_index = spr_voice_ui_bar_red;
	outer_ui_width = 51;
	outer_ui_height = 205;
	align_offset = 13;
	sprite_full_height = 141;
	border_offset = 16;
	
}

//Object position init
camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);
total_offset_x = camera_width - outer_ui_width / 2 - border_offset;
total_offset_y = camera_height - outer_ui_height + align_offset + sprite_full_height - border_offset;

//Finish room
is_break = false;
timer = 120;
