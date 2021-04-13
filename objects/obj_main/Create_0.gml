/// @description Insert description here
// You can write your code in this editor
MAX_VOLUME = 8000;

global.speed = 0;

//Volume rect
rect_alpha = 1;

if (global.is_good_ending_unlocked && (room == rm_main || room == rm_village || room == rm_forest)) {
	restart_alpha = 1;
} else {
	restart_alpha = 0;	
}

startTimer = false;
timer = 120;

instance_create_layer(0, 0, "UI", obj_voice_ui);
instance_create_layer(0, 0, "UI", obj_voice_ui_bar);
