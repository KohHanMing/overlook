/// @description Insert description here
// You can write your code in this editor
global.speed = global.volume / 1500;

if (startTimer == true) {
	if (timer > 0) {
		timer -= 1	
	} else {
		room_goto(rm_final)
	}
}