/// @description Insert description here
// You can write your code in this editor


draw_text_colour(10, 100, "Global volume: " + string(global.volume), c_white, c_white, c_white, c_white, text_alpha);
draw_text_colour(10, 120, "Global speed: " + string(global.speed), c_white, c_white, c_white, c_white, text_alpha);
draw_text_colour(10, 140, "Too loud counter: " + string(too_loud_counter), c_white, c_white, c_white, c_white, text_alpha);

/*
draw_set_color(rect_colour);
draw_set_alpha(rect_alpha);
draw_rectangle(260, rect_height, 290, 300, false);
draw_rectangle(260, 100, 290, 300, true);

draw_set_alpha(1);
draw_set_colour(c_white);
*/