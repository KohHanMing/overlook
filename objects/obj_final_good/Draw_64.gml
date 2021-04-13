/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontCustomMedium);
draw_set_alpha(text_alpha);
draw_text_transformed(room_width/2, room_height/2 - 100, "Let's take things slowly, I'll be okay someday <3", 0.6, 0.6, 0);

text_width = string_width(help_string_to_display_1);
text_height = string_height(help_string_to_display_1);

draw_set_alpha(help_alpha);
draw_text_transformed(room_width/2, room_height/2 - text_height, string(help_string_to_display_1), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2, string(help_string_to_display_2), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2 + text_height, string(help_string_to_display_3), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2 + (text_height * 3), string(endings_string), 0.5, 0.5, 0);

draw_set_font(FontCustomLarge);
back_text_width = string_width("Back to Menu");
back_text_height = string_height("Back to Menu");

draw_set_alpha(back_text_small_alpha);
draw_text_transformed(room_width/2, room_height/2 + BACK_TXT_DISPL, string("Back to Menu"), 0.6, 0.6, 0);

draw_set_alpha(back_text_large_alpha);
draw_text_transformed(room_width/2, room_height/2 + BACK_TXT_DISPL, string("Back to Menu"), 0.8, 0.8, 0);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FontSmall);
draw_set_alpha(1);