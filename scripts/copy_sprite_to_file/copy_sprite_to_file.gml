// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function copy_sprite_to_file(spr,file_name){
var spri = sprite_duplicate(spr);
sprite_save_strip(spri, file_name);
sprite_delete(spri);
}