//this is a scrapped idea with limited functionality
if other.player=1{
global.cmpn_posx=obj_kart_frisk.x
global.cmpn_posy=obj_kart_frisk.y
global.cmpn_dir=obj_kart_frisk.direction
characterval++;
characterval%=2;
instance_destroy(other)
if(global.char1_obj==obj_kart_frisk){
if(asriel_unlk){
		global.char1_obj = obj_kart_asriel_c
	}else{
		global.char1_obj = obj_kart_flowey_c
	}
}if(global.char1_obj == obj_kart_asriel_c||obj_kart_flowey_c){
	global.char1_obj = obj_kart_frisk;
}
var rr = instance_create(global.cmpn_posx,global.cmpn_posy,global.char1_obj);
rr.direction = global.cmpn_dir
action_another_room(room);
}

