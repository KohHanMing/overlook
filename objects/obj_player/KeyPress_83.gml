/// @description Insert description here
// You can write your code in this editor
if(room != rm_finish) {
	sprite_index = spr_player_down;
	direction = 270;
	speed -= SPEED_REDUCE_ON_CHANGE_DIR;
}