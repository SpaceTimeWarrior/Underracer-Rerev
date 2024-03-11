if(instance_exists(obj_kart_toriel)){
	x = obj_kart_toriel.x;
	y = obj_kart_toriel.y;
}
if distance_to_object(obj_kart_frisk)<20{
instance_create(x,y,obj_dlg_torielpreintro)
instance_destroy()
}

