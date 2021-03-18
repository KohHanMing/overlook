/// @description Insert description here
// You can write your code in this editor
var s = info + "##Recording: " + string(recording) + "##<Alt> to record.#<Shift> to play back.";
draw_text(10, 10, s);
draw_text(10, 180, "Queue Length: " + string(queue_len));
draw_text(10, 200, "Buffer size: " + string(buffer_get_size(audio_buff)));
draw_text(10, 220, "volume: " + string(gain_value));