/// @description Insert description here
// You can write your code in this editor
var xcoord = camera_get_view_x(view_camera[0]) + total_offset_x;
var ycoord = camera_get_view_y(view_camera[0]) + total_offset_y;

if (!is_break) {
	x = xcoord;
	y = ycoord;
} else {
	with(obj_voice_ui_bar) {
		is_break = true	
	}
	
	if (timer > 90) {
		timer -= 1;
	} else if (timer > 0 && timer <= 90) {
		move_towards_point(xcoord - 25, ycoord - 100, 10);	
		timer -= 1;
	} else {
		sprite_index = spr_voice_ui_broken;
		x = xcoord - 25;
		y = ycoord - 100;
		if (!has_debris) {
			repeat (50) {
				instance_create_layer(x + sprite_width / 2, y + 40, "Instances", obj_debris_voice);	
			}
			has_debris = true;
		}
		is_start_delay = true;
	}
	
	if (is_start_delay) {
		if (delay > 0) {
			delay -= 1;	
		} else {
			with (obj_player) {
				is_jump = true;	
			}
		}
	}
}