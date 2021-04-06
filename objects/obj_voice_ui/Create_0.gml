/// @description Insert description here
// You can write your code in this editor
camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);
border_offset = 10;
total_offset_x = camera_width - sprite_width - border_offset;
total_offset_y = camera_height - sprite_height - border_offset;