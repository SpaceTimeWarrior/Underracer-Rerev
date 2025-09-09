///@function	copy_sprite_to_file(spr,file_name,[del])
///@param	{real}	spr	sprite index to copy
///@param	{string]	file_name	export filename/location
///@param	{boolean}	del	weather to delete the copied sprite
///@description copies a sprite from a index then saves it as a strip and if del = true delete it
function copy_sprite_to_file(spr,file_name,del=true){
var spri = sprite_duplicate(spr);
sprite_save_strip(spri, file_name);
if(del==true){
	sprite_delete(spri);
	return -1;
}else{
	return spri;	
}
}