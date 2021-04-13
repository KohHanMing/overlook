/// @description Insert description here
// You can write your code in this editor


if(room != rm_finish && room != rm_finish_good) {
	speed = global.speed
	if (place_meeting(x + speed, y, obj_wall)) { //right collision
		x -= speed;
		speed = 0;
	} else if (place_meeting(x, y - speed, obj_wall)) { //top collision
		y += speed;
		speed = 0;
	} else if (place_meeting(x - speed, y, obj_wall)) { //left collision
		x += speed;
		speed = 0;
	} else if (place_meeting(x, y + speed, obj_wall)) { //bottom collision
		y -= speed;
		speed = 0;	
	} else if (debug == true) {
		if (keyboard_check(vk_space) && speed < MAX_SPEED) {
			speed += 0.1;	
		} else if (speed > 0) {
			speed -= 0.1;
		} else {
			speed = 0;
		}
	} else {

	}

	//Sabrina added this for the moving platform:
	if (place_meeting(x + 8 + speed, y, obj_moving_platform)) { //right collision
		x -= obj_moving_platform.movespeed;
		if (sprite_index == spr_player_right) {
			speed = 0;
		}
	} else if (place_meeting(x, y - 8 - speed, obj_moving_platform)) { //top collision
		y += obj_moving_platform.movespeed;;
		if (sprite_index == spr_player_up) {
			speed = 0;
		}
	} else if (place_meeting(x - 8 - speed, y, obj_moving_platform)) { //left collision
		x += obj_moving_platform.movespeed;;
		if (sprite_index == spr_player_left) {
			speed = 0;
		}
	} else if (place_meeting(x, y + 8 + speed, obj_moving_platform)) { //bottom collision
		y -= obj_moving_platform.movespeed;;
		if (sprite_index == spr_player_down) {
			speed = 0;
		}	
	} else if (debug == true) {
		if (keyboard_check(vk_space) && speed < MAX_SPEED) {
			speed += 0.1;	
		} else if (speed > 0) {
			speed -= 0.1;
		} else {
			speed = 0;
		}
	} else {
		
	}
//End of Sabrina extra code
}

if (room == rm_finish || room == rm_finish_good) {
	if (!has_stopped) {
		move_towards_point(1240, 450, 2);
	}
	
	if (x > 1235 && !has_stopped) {
		has_stopped = true;
		speed = 0;
		if (room == rm_finish) {
			with (obj_voice_ui) {
				is_break = true;	
			}
		} else {
			with (obj_finish_good) {
				is_fade = true;	
			}	
		}
	}
	
	if (is_jump) {
		hspeed = 2;
		vspeed = -5 + deceleration;
		deceleration += 0.20
	}
}
