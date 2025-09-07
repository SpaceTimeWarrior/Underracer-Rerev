if(instance_exists(obj_music_player)){
	obj_music_player.music_number--;
	if(obj_music_player.music_number<0){
		obj_music_player.music_number = 18;
	}
}