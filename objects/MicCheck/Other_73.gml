/// @description Insert description here
// You can write your code in this editor
var channel = async_load[? "channel_index"];              // Get the channel ID that triggered this event
if (audio_recorder_channel == channel)                    // Check the channel and device channel ID are the same
{
var t_buff =  async_load[? "buffer_id"];                  // Get the index into the temporary buffer with the audio
var length = async_load[? "data_len"];                    // Get the length of the data returned
buffer_seek(audio_buff, buffer_seek_end, 0);              // Move to the end of the audio buffer
var pos = buffer_tell(audio_buff);                        // Get the position of the end of the audio buffer
buffer_copy(t_buff, 0, length, audio_buff, pos);          // Copy the temp buffer to the audio buffer at the correct place
audio_queue_sound(audio_queue, audio_buff, pos, length);  // Now add this new audio chunk onto the audio queue
++queue_len;                                              // Increase the queue length variable
if (!record)
    {
    // If the <ALT> key is no longer held down, stop recording
    audio_stop_recording(audio_recorder_channel);
    recording = false;
    }
}