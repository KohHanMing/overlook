/// @description Insert description here
// You can write your code in this editor


if(room != rm_finish) {
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
	if (place_meeting(x + speed, y, obj_moving_platform)) { //right collision
		x -= speed;
		speed = 0;
	} else if (place_meeting(x, y - speed, obj_moving_platform)) { //top collision
		y += speed;
		speed = 0;
	} else if (place_meeting(x - speed, y, obj_moving_platform)) { //left collision
		x += speed;
		speed = 0;
	} else if (place_meeting(x, y + speed, obj_moving_platform)) { //bottom collision
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
//End of Sabrina extra code
}

if (room == rm_finish) {
	if (x > xstart + 200 && !hasDrawnText1) {
		instance_create_layer(0, 0, "Instances", obj_finish_text_1);
		hasDrawnText1 = true;
	} else if (x > xstart + 400 && !hasDrawnText2) {
		instance_create_layer(0, 0, "Instances", obj_finish_text_2);
		hasDrawnText2 = true;
	} else if (x > xstart + 700 && !hasDrawnText3) {
		instance_create_layer(0, 0, "Instances", obj_finish_text_3);
		hasDrawnText3 = true;
	}
}
