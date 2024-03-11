if global.players<4 and global.bot_trigger=true{
listsize=ds_list_size(botchar)-1

char_pick=ds_list_find_value(botchar,irandom(listsize));

char=instance_create(x,y,char_pick);
char.direction+=direction
char.bot+=1
char.player+=4
list=false
}
if global.players=3{
char=instance_create(x,y,global.char4_obj)
char.skin=global.char4_skin
if(global.char4_obj = obj_kart_custom){
	char.kart_id = charc4;
	char.initialized = true;
	char.final_sprite = custom_karts[charc4].mdlspr_down
}
char.direction+=direction
char.player+=1
alarm[2]=1
}

