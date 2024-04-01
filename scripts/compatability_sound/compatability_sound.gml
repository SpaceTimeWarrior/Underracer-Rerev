function sound_isplaying(sindex) {
	return audio_is_playing( sindex );
}
function sound_loop(sindex) {
	// ------------------------------------------------------------
	/// @description Loops the indicated sound
	/// @param index The index of the sound to loop
	audio_play_sound( sindex, 10, true );
}
function sound_play(sindex) {
	// ------------------------------------------------------------
	/// @description Plays the indicated sound once.
	/// @param index The index of the sound to play
	audio_play_sound( sindex, 10, false );
}
function sound_stop(sindex) {
	// ------------------------------------------------------------
	/// @description Stops a given sound.
	/// @param index The index of the sound to stop
	audio_stop_sound( sindex );
}
function sound_stop_all() {
	// ------------------------------------------------------------
	/// @description Stops a given sound.
	audio_stop_all();
}
function sound_volume(sindex, vol) {
	audio_sound_gain( sindex, vol, 0);
}
function sound_add(file = "",bgm,preload) {
	show_debug_message("adding sound")
	var fle = get_file_details(file);
	if(fle[1] == "mp3"||fle[1] == "wav"){
		fle[1] = "ogg";
		file = fle[2]+"."+fle[1];
	}
	show_debug_message("recieved file type")
	try{
	var ible = audio_create_stream(file);
	}catch(e){
		show_debug_message(e);
		ible = -1;
	}
	if(ible !=-1){
	show_debug_message("created stream");
	}else{
		show_debug_message("failed to create stream");
	}
	return ible;
}
function get_file_details(file){
	var dot_sep = -1;
	var file_type = "";
	var file_base = "";
	for(var ibc = string_length(file)-1; ibc>0;ibc--){
		if(string_char_at(file,ibc)=="."){
			dot_sep = ibc;
			break;
		}
	}
	if(dot_sep == -1){
		file_base = file;
	}else{
		var cl = string_length(file)-(ibc+1);
		file_type = string_copy(file,ibc+1,cl+1);
		file_base = string_copy(file,0,ibc-1);
	}
	var ret = array_create(3);
	ret[0]=dot_sep;
	ret[1]=file_type;
	ret[2]=file_base;
	return ret;
}
