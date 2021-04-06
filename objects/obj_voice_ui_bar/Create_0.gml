//Object position init
camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);
outer_ui_width = 32;
outer_ui_height = 128;
align_offset = 8;
sprite_full_height = 88;
border_offset = 10;
total_offset_x = camera_width - outer_ui_width / 2 - border_offset;
total_offset_y = camera_height - outer_ui_height + align_offset + sprite_full_height - border_offset;

//Volume init
RED_VOLUME = 8000;
MAX_VOLUME = 8889;

image_yscale = global.volume / MAX_VOLUME;