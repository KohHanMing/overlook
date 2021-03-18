/// @description Insert description here
// You can write your code in this editor
record = keyboard_check(vk_alt);
play = keyboard_check_pressed(vk_shift);

if (play && (queue_len > 0))
{
if (!recording && !playing)
    {
    // No sound playing, no sound being recorded, so play the queue
	var sound_to_play = audio_queue;
	var gain = audio_sound_get_gain(sound_to_play);
    audio_play_sound(sound_to_play, 10, false);
	gain_value = gain;
    playing = true;
    }
}
else
{
if (record && !recording && !playing)
    {
    if (queue_len <= 0)
        {
        // Free the current audio queue, reset the audio buffer and create a new queue
        audio_free_play_queue(audio_queue);
        buffer_delete(audio_buff);
        audio_queue = audio_create_play_queue(format, rate, channels);
        audio_buff = buffer_create(256, buffer_grow, 1);
        // Store the channel ID of the channel we start recording on
        audio_recorder_channel = audio_start_recording(audio_recorder);
		gain_value = 0;
        recording = true;
        playing = false;
        queue_len = 0;
        }
    }
}