/// @description Insert description here
// You can write your code in this editor
global.volume = 0;
global.speed = 0;

if (room != rm_finish) {
	draw_alpha = 1;
} else {
	draw_alpha = 0;	
}

startTimer = false;
timer = 120;