text_x = obj_player.x - 240;
text_y = obj_player.y - 64;

if (obj_player.x > obj_player.xstart + 200) {
	is_text_one_start = true;
} 

if (obj_player.x > obj_player.xstart + 400) {
	is_text_two_start = true;
} 

if (obj_player.x > obj_player.xstart + 700) {
	is_text_three_start = true;
}

if (is_text_one_start) {
	if (text_one_timer > 0) {
		text_one_alpha += 0.01
		text_one_timer -= 1;
	} else {
		text_one_alpha = 1;
	}	
}

if (is_text_two_start) {
	if (text_two_timer > 0) {
		text_two_alpha += 0.01
		text_two_timer -= 1;
	} else {
		text_two_alpha = 1;
	}	
}

if (is_text_three_start) {
	if (text_three_timer > 0) {
		text_three_alpha += 0.01
		text_three_timer -= 1;
	} else {
		text_three_alpha = 1;
	}	
}