/// @description Insert description here
// You can write your code in this editor
if(room != rm_finish && room != rm_finish_good) {
	sprite_index = spr_player_left;
	direction = 180;
	speed -= SPEED_REDUCE_ON_CHANGE_DIR;
}