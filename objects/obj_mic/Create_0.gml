/// @description HOW TO USE

/*

    1. Disable or enable drawing in the script below
    2. Add this object to a room and make it persistent if desired.
    3. Get microphone_volume from this object. It contains the volume.

*/

/* */
///Begin audio recording - DISABLE DRAWING HERE!!

//Disable or enable drawing of the graph
if (room != rm_finish) {
	drawing = true;
} else {
	drawing = false;	
}

microphone_volume = 0;
us_old = -1;
//Begin audio recording and create buffer and graph
if (audio_get_recorder_count() == 0) {
    //There is no microphone or recording is not supported.
    exit;
}
audio_record = audio_start_recording(0);
if (drawing)
    graph = ds_list_create();
audio_buffer = buffer_create(4800*2, buffer_fixed, 2);


/* */
/*  */
