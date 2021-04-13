/// @description Insert description here
// You can write your code in this editor
global.too_loud_counter = global.prev_counter;
if (global.is_good_ending_unlocked) {
	if (room == rm_main) {
		room_goto(rm_main);
	} else if (room == rm_village) {
		room_goto(rm_village);
	} else if (room == rm_forest) {
		room_goto(rm_forest);
	} else {
	}
}