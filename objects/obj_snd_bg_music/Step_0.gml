if (room != rm_finish && room != rm_final) {
	if (!audio_is_playing(snd_bg_music)) {
			audio_stop_all();
			audio_play_sound(snd_bg_music, 10, true);
	}
}