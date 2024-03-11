
if other.player=1{
	if(sndnunlk){
if !instance_exists(obj_hud_shop_s){
global.cmpn_posx=obj_kart_frisk.x
global.cmpn_posy=obj_kart_frisk.y
global.cmpn_dir=obj_kart_frisk.direction
global.dialogue=true
instance_create(x,y,obj_hud_shop_r)
}
}else{
	instance_create_depth(x,y,depth,obj_dlg_shop_ruins);
}
}

