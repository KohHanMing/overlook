if (room == rm_village) {
	if (!audio_is_playing(snd_bg_music_distort)) {
			audio_stop_all();
			audio_play_sound(snd_bg_music_distort, 10, true);
	}
} else if (room == rm_forest) {
	if (!audio_is_playing(snd_bg_music_v_distort)) {
			audio_stop_all();
			audio_play_sound(snd_bg_music_v_distort, 10, true);
	}
} else if (room != rm_finish && room != rm_final) {
	if (!audio_is_playing(snd_bg_music_normal)) {
			audio_stop_all();
			audio_play_sound(snd_bg_music_normal, 10, true);
	}
}