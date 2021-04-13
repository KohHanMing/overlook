/// @description Insert description here
// You can write your code in this editor
if (room == rm_introduction) {
	room_goto(rm_oh_no);	
} else if (room == rm_oh_no) {
	room_goto(rm_main);
} else if (room == rm_main) {
	room_goto(rm_village);
} else if (room == rm_village) {
	room_goto(rm_forest);
} else if (room == rm_forest) {
	room_goto(rm_finish);
}else if (room == rm_finish) {
	room_goto(rm_final);
} else {
	room_goto(rm_menu_1);
}