/// @description Insert description here
// You can write your code in this editor
SPEED_REDUCE_ON_CHANGE_DIR = 1;
MAX_SPEED = 6;
//WALL_COLL_DETECT_RANGE = 6;
//WALL_COLL_DISPLACEMENT = 3;
image_speed = 0;
image_index = 0;
debug = false;


//Settings for final room
hasDrawnText1 = false;
hasDrawnText2 = false;
hasDrawnText3 = false;


if (room != rm_introduction) {
	instance_create_layer(x, y, "FOV", obj_fov);
}