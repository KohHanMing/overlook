 /// @description Insert description here
// You can write your code in this editor


if (global.volume > MAX_VOLUME) { //9000
	global.speed = 9;	//6.66
} else {
	global.speed = global.volume / 1000; //1500
}

var new_height = 295 - global.volume * RECT_HEIGHT_TO_VOLUME_RATIO; //0.0217
if (new_height < 100) {
	rect_colour = c_red;	
	rect_height = 100;
	too_loud_counter++;
} else {
	rect_colour = c_white;
	rect_height = new_height;
}

if (startTimer == true) {
	if (timer > 0) {
		timer -= 1	
	} else {
		room_goto(rm_final)
	}
}

