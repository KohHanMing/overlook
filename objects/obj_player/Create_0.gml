/// @description Insert description here
// You can write your code in this editor
SPEED_REDUCE_ON_CHANGE_DIR = 1;
MAX_SPEED = 6;
//WALL_COLL_DETECT_RANGE = 6;
//WALL_COLL_DISPLACEMENT = 3;

//Finish room
has_stopped = false;
is_jump = false;
deceleration = 0;


image_index = 0;
debug = false;

if (room != rm_introduction && room != rm_finish) {
	instance_create_layer(x, y, "FOV", obj_fov);
}

if (room == rm_finish) {
	speed = 1.5;
	image_xscale = 1.6;
	image_yscale = 1.6;
} else {
	speed = 0;	
}