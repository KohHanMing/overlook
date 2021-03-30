 /// @description Insert description here
// You can write your code in this editor


if (global.volume > 9000) {
	global.speed = 6.66;	
} else {
	global.speed = global.volume / 1500;
}

rect_height = 295 - global.volume * 0.0217;
if (rect_height < 100) {
	rect_colour = c_red;	
} else {
	rect_colour = c_white;
}

if (startTimer == true) {
	if (timer > 0) {
		timer -= 1	
	} else {
		room_goto(rm_final)
	}
}

