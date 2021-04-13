/// @description Insert description here
// You can write your code in this editor
if (room != rm_menu_1 && room != rm_menu_2 && room != rm_oh_no && room != rm_trigger_warning && global.volume > 8000) {
	//rect_colour = c_red;	
	//rect_height = 100;
	global.too_loud_counter++;
}