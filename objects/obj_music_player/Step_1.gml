
if(music_number!=last_music_number){
	last_music_number = music_number;
	audio_stop_all()
	switch(music_number){
		case 0:
			music_name = "intro";
			sound_2loop(global.snd_intro);
			break;
		case 1:
			music_name = "menu";
			sound_2loop(global.snd_menu);
			break;
		case 2:
			music_name = "flowey";
			sound_2loop(global.snd_flowey);
			break;
		case 3:
			music_name = "ruins";
			sound_2loop(global.snd_ruins);
			break;
		case 4:
			music_name = "blook";
			sound_2loop(global.snd_blook);
			break;
		case 5:
			music_name = "toriel";
			sound_2loop(global.snd_toriel);
			break;
		case 6:
			music_name = "snowdin";
			sound_2loop(global.snd_snowdin);
			break;
		case 7:
			music_name = "snowdog";
			sound_2loop(global.snd_snowdog);
			break;
		case 8:
			music_name = "waterfall";
			sound_2loop(global.snd_waterfall);
			break;
		case 9:
			music_name = "core";
			sound_2loop(global.snd_core);
			break;
		case 10:
			music_name = "victory";
			sound_2loop(global.snd_victory);
			break;
		case 11:
			music_name = "sans";
			sound_2loop(global.snd_sans);
			break;
		case 12:
			music_name = "papyrus";
			sound_2loop(global.snd_papyrus);
			break;
		case 13:
			music_name = "snowdincircuit";
			sound_2loop(global.snd_snowdincircuit);
			break;
		case 14:
			music_name = "choose your driver";
			sound_2loop(snd_choose_your_driver);
			break;
		case 15:
			music_name = "mad mad racing";
			sound_2loop(snd_mad_mad_racing);
			break;
		case 16:
			music_name = "marrowmania";
			sound_2loop(snd_marrowmania);
			break;
		case 17:
			music_name = "megalokart";
			sound_2loop(snd_megalokart);
			break;
		case 18:
			music_name = "pedal to the metal";
			sound_2loop(snd_pedal_to_the_metal);
			break;
	}
}