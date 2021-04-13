/// @description Insert description here
// You can write your code in this editor
if (room != rm_finish && room != rm_finish_good) {
	image_xscale = 1;
	image_yscale = 1;
	border_offset = 10;
} else {
	image_xscale = 1.6;
	image_yscale = 1.6;
	border_offset = 16;
}

camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);

total_offset_x = camera_width - sprite_width - border_offset;
total_offset_y = camera_height - sprite_height - border_offset;

is_break = false;
timer = 120;
has_debris = false;

is_start_delay = false;
delay = 60;