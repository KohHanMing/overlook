/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(black_screen_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 800, 800, false);

draw_set_alpha(1);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontCustomLarge);

//Start button
start_text_width = string_width("Start Game");
start_text_height = string_height("Start Game");

draw_set_alpha(start_text_small_alpha);
draw_text_transformed(room_width/2, room_height/2 + START_TXT_DISPL, string("Start Game"), 0.6, 0.6, 0);

draw_set_alpha(start_text_large_alpha);
draw_text_transformed(room_width/2, room_height/2 + START_TXT_DISPL, string("Start Game"), 0.8, 0.8, 0);

//Credits button
credits_text_width = string_width("Credits");
credits_text_height = string_height("Credits");

draw_set_alpha(credits_text_small_alpha);
draw_text_transformed(room_width/2, room_height/2 + CREDITS_TXT_DISPL, string("Credits"), 0.6, 0.6, 0);

draw_set_alpha(credits_text_large_alpha);
draw_text_transformed(room_width/2, room_height/2 + CREDITS_TXT_DISPL, string("Credits"), 0.8, 0.8, 0);

//Back button
back_text_width = string_width("Back");
back_text_height = string_height("Back");

draw_set_alpha(back_text_small_alpha);
draw_text_transformed(room_width/6, room_height/2 + BACK_TXT_DISPL, string("Back"), 0.6, 0.6, 0);

draw_set_alpha(back_text_large_alpha);
draw_text_transformed(room_width/6, room_height/2 + BACK_TXT_DISPL, string("Back"), 0.8, 0.8, 0);


//Reset formatting
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FontSmall);
draw_set_alpha(1);