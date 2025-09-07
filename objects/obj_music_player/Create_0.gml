music_number = 0;
last_music_number = music_number;
music_name = "intro";
audio_stop_all()
sound_2loop(global.snd_intro);
while(false){
global.snd_intro=sound_add(sndpath+"intro.mp3",1,1)
	global.snd_menu=sound_add(sndpath+"menu.mp3",1,1)
	global.snd_flowey=sound_add(sndpath+"flowey.mp3",1,1)
	global.snd_ruins=sound_add(sndpath+"ruins.mp3",1,1)
	global.snd_blook=sound_add(sndpath+"blook.mp3",1,1)
	global.snd_toriel=sound_add(sndpath+"toriel.mp3",1,1)
	global.snd_snowdin=sound_add(sndpath+"snowdin.mp3",1,1)
	global.snd_snowdog=sound_add(sndpath+"snowdog.mp3",1,1)
	global.snd_waterfall=sound_add(sndpath+"waterfall.mp3",1,1)
	global.snd_core=sound_add(sndpath+"core.mp3",1,1)
	global.snd_victory=sound_add(sndpath+"victory.mp3",1,1)
	global.snd_sans=sound_add(sndpath+"sans.mp3",1,1)
	global.snd_papyrus=sound_add(sndpath+"papyrus.mp3",1,1)
	global.snd_snowdincircuit=sound_add(sndpath+"snowdincircuit.mp3",1,1)
}