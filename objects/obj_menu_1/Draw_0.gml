/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontLarge);
draw_set_alpha(splash_alpha);

draw_text_transformed(room_width/2, 200, string("Overlook"), 1, 1, 0);

draw_set_font(FontMedium);
start_text_width = string_width("Start");
start_text_height = string_height("Start");

draw_set_alpha(start_text_small_alpha);
draw_text_transformed(room_width/2, room_height/2 + START_TXT_DISPL, string("Start"), 0.6, 0.6, 0);

draw_set_alpha(start_text_large_alpha);
draw_text_transformed(room_width/2, room_height/2 + START_TXT_DISPL, string("Start"), 1, 1, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FontSmall);
draw_set_alpha(1);