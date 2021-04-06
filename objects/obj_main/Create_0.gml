/// @description Insert description here
// You can write your code in this editor
MAX_VOLUME = 8000;
RECT_HEIGHT_TO_VOLUME_RATIO = 195 / MAX_VOLUME;

global.volume = 0;
global.speed = 0;

//Volume rect
rect_colour = c_white;
rect_height = global.speed * 10;
rect_alpha = 1;


//Too Loud counter
too_loud_counter = 0;

if (room != rm_finish) {
	text_alpha = 1;
} else {
	text_alpha = 0;	
}

startTimer = false;
timer = 120;

instance_create_layer(0, 0, "UI", obj_voice_ui);
instance_create_layer(0, 0, "UI", obj_voice_ui_bar);
