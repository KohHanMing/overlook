/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_colour(room_width/2, room_height/2, "Now I won't hear them anymore.", c_white, c_white, c_white, c_white, text_alpha);

draw_set_font(FontCustomMedium);
text_width = string_width(help_string_to_display_1);
text_height = string_height(help_string_to_display_1);

draw_set_alpha(help_alpha);
draw_text_transformed(room_width/2, room_height/2 - text_height, string(help_string_to_display_1), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2, string(help_string_to_display_2), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2 + text_height, string(help_string_to_display_3), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2 + (text_height * 3), string(endings_string), 0.5, 0.5, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FontSmall);
draw_set_alpha(1);