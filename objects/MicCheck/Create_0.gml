/// @description Insert description here
// You can write your code in this editor

game_set_speed(60, gamespeed_fps);


var count = audio_get_recorder_count();
switch(count)
{
case 0:
    show_message("You have no recording devices!");
    game_end();
    break;
case 1:
    audio_recorder = 0;
    break;
default:
    audio_recorder = get_integer("You have " + string(count) + " recording devices. Enter index (0-" + string(count - 1) + "):", 0);
    break;
}

var map = audio_get_recorder_info(audio_recorder);             // Get information about the recording device
var device = string(audio_recorder);                           // The channel ID value for the device
var name = ":#Name: " + map[? "name"];                         // The device name as returned by the OS
var str_rate = "#Sample rate: " + string(map[? "sample_rate"]);// The sample rate that the device uses

info = "##Using recorder device " + device + name + str_rate;  // Information string to display to the user
playing = false;                                               // Control variable for playing
recording = false;                                             // Control variable for recording
audio_recorder_channel = -1;                                   // Control variable which will hold the recording channel ID

gain_value = 0;

audio_buff = buffer_create(256, buffer_grow, 1);                // We create a "grow" type buffer to hold the recorded audio
format = map[? "data_format"];                                  // We get the device format for creating the queue...
rate = map[? "sample_rate"];                                    // ...and thee sample rate
channels = map[? "channels"];                                   // ...and the number of channels
audio_queue = audio_create_play_queue(format, rate, channels);  // Here we create the audio queue
queue_len = 0;                                                  // Control variable for getting the queue "size"
ds_map_destroy(map);                                            // Destroy the map with the device info

