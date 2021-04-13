/// @description Insert description here
// You can write your code in this editor
draw_set_font(FontSpeech);

draw_set_alpha(text_one_alpha);
draw_text_transformed(text_x, text_y - 60, text_one_string, 1.6, 1.6, 0);

draw_set_alpha(text_two_alpha);
draw_text_transformed(text_x, text_y - 30, text_two_string, 1.6, 1.6, 0);

draw_set_alpha(text_three_alpha);
draw_text_transformed(text_x, text_y, text_three_string, 1.6, 1.6, 0);

draw_set_alpha(1);
draw_set_font(FontSmall);