if (!audio_is_playing(snd_wind)) {
		audio_stop_all();
		audio_play_sound(snd_wind, 10, true);
}