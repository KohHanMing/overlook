/// @description Insert description here
// You can write your code in this editor
x = camera_get_view_x(view_camera[0]) + total_offset_x;
y = camera_get_view_y(view_camera[0]) + total_offset_y;

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