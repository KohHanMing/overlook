/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(black_screen_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 800, 800, false);

draw_set_alpha(1);
draw_set_color(c_white);

//First player prompt
draw_text_colour(300, 250, "Make a noise", c_white, c_white, c_white, c_white, prompt_one_alpha);

//Wake up text
draw_text_colour(405, 345, "Huh?", c_white, c_white, c_white, c_white, wake_text_one_alpha);

//Second player prompt
//draw_text_colour(300, 250, "Louder", c_white, c_white, c_white, c_white, prompt_two_alpha);