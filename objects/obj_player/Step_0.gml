/// @description Insert description here
// You can write your code in this editor
speed = global.speed

if (place_meeting(x + WALL_COLL_DETECT_RANGE, y, obj_wall)) { //right collision
		speed = 0;
		x -= WALL_COLL_DISPLACEMENT;
	} else if (place_meeting(x, y - WALL_COLL_DETECT_RANGE, obj_wall)) { //top collision
		speed = 0;
		y += WALL_COLL_DISPLACEMENT;
	} else if (place_meeting(x - WALL_COLL_DETECT_RANGE, y, obj_wall)) { //left collision
		speed = 0;
		x += WALL_COLL_DISPLACEMENT;
	} else if (place_meeting(x, y + WALL_COLL_DETECT_RANGE, obj_wall)) { //bottom collision
		speed = 0;
		y -= WALL_COLL_DISPLACEMENT;
	} else {
		if (keyboard_check(vk_space) && speed < MAX_SPEED) {
			speed += 0.1;	
		} else if (speed > 0) {
			speed -= 0.1;
		} else {
			speed = 0;
		}
}