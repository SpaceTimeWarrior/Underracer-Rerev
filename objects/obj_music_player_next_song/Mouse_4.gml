if(instance_exists(obj_music_player)){
	obj_music_player.music_number++;
	obj_music_player.music_number%=19;
}