draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontCustomMedium);
text_width = string_width(string_to_display_1);
text_height = string_height(string_to_display_1);

draw_set_alpha(string_alpha);
draw_text_transformed(room_width/2, room_height/2 - 200, string(string_to_display_1), 0.6, 0.6, 0);
draw_text_transformed(room_width/2, room_height/2 - 200 + text_height, string(string_to_display_2), 0.6, 0.6, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(FontSmall);
draw_set_alpha(1);