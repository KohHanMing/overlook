draw_set_font(FontSpeech);
//Wake up text
draw_text_colour(405, 345, "Huh?", c_white, c_white, c_white, c_white, wake_text_one_alpha);
draw_text_colour(405, 345, "Must be my imagination...", c_white, c_white, c_white, c_white, wake_text_two_alpha);

//Finally awake
draw_text_colour(text_x, text_y, "It's those sounds again.", c_white, c_white, c_white, c_white, awake_text_one_alpha);
draw_text_colour(text_x, text_y, "They're so loud!", c_white, c_white, c_white, c_white, awake_text_two_alpha);
wasd_text_width = string_width("Press W, A, S or D to face a direction");
draw_text_colour(wasd_text_x - (wasd_text_width / 2), wasd_text_y, "Press W, A, S or D to face a direction", c_white, c_white, c_white, c_white, wasd_text_alpha);
draw_text_colour(640, 420, "Exit ->", c_white, c_white, c_white, c_white, exit_text_alpha);

draw_set_font(-1)