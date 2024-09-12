if(disarm){
	with(obj_kart_toriel){
		instance_destroy()
	}
	instance_create(320,obj_kart_flowey.y+50,obj_kart_toriel)
	obj_kart_toriel.direction=90
}