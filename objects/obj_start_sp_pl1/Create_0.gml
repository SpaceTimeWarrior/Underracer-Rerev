//Start Point Object for Singleplayer Mode
//Here, the bots and the players will be spawned by the game, in the point where the object is in the room.
char=instance_create(x,y,global.char1_obj)
char.skin=global.char1_skin
if(global.char1_obj = obj_kart_custom){
	char.kart_id = charc1;
	char.initialized = true;
	char.final_sprite = custom_karts[charc1].mdlspr_down
}
if (char.char =="Chara"||char.char == "Asriel"){
	var lay_id = layer_get_id("Effect_1");
	layer_set_visible(lay_id,true)
}
char.direction+=direction
char.player+=1
char.speed+=global.start_speed

action_kill_object();
