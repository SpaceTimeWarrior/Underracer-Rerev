char=instance_create(x,y,global.char1_obj)
char.skin=global.char1_skin
if(global.char1_obj = obj_kart_custom){
	char.kart_id = charc1;
	char.initialized = true;
	char.final_sprite = custom_karts[charc1].mdlspr_down
}
char.direction+=direction
char.player+=1
char.speed+=global.start_speed
char.bot=0
