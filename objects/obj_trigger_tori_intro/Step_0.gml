if distance_to_object(obj_kart_toriel)<50{
disarm = false
obj_kart_toriel.direction=180;
obj_kart_toriel.botpath=path_add()
mp_potential_path_object(obj_kart_toriel.botpath,387,209,(5*obj_kart_toriel.speed)/8,2,obj_collidable);
path_start(obj_kart_toriel.botpath, obj_kart_toriel.botspd ,path_action_continue,true);
with(obj_pellet_cutscene){
	instance_create(x,y,obj_grassfx)
	instance_destroy()
}
with(obj_trigger_floweypellets_intro){
	instance_destroy()
}
with(obj_kart_flowey){
	z-=10
	instance_destroy()
}
instance_create(x,y,obj_dlg_tori_intro)
instance_destroy()
}else{
	if(instance_exists(obj_kart_toriel)){
	obj_kart_toriel.y-=8.333
	}
}

