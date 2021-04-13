global.prev_counter = global.too_loud_counter;
if (room == rm_introduction) {
	room_goto(rm_oh_no);	
} else if (room == rm_oh_no) {
	room_goto(rm_main);
} else if (room == rm_main) {
	room_goto(rm_village);
} else if (room == rm_village) {
	room_goto(rm_forest);
} else if (room == rm_forest) {
	if (global.is_good_ending_unlocked) {
		if (global.too_loud_counter <= 300) {
			room_goto(rm_finish_good);
		} else {
			room_goto(rm_finish);
		}
	} else {
		room_goto(rm_finish);
	}
}