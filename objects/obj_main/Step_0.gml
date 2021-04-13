 /// @description Insert description here
// You can write your code in this editor


if (global.volume > MAX_VOLUME) { //9000
	global.speed = 9;	//6.66
} else {
	global.speed = global.volume / 1000; //1500
}

if (startTimer == true) {
	if (timer > 0) {
		timer -= 1	
	} else {
		room_goto(rm_final)
	}
}

