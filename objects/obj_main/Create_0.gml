/// @description Insert description here
// You can write your code in this editor
global.volume = 0;
global.speed = 0;

rect_colour = c_white;
rect_height = global.speed * 10;
rect_alpha = 1;

if (room != rm_finish) {
	text_alpha = 1;
} else {
	text_alpha = 0;	
}

startTimer = false;
timer = 120;