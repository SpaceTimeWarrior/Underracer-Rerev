function find_nearest_floor(inst = id){
	var nearflor;
	nearflor=instance_nearest(inst.x,inst.y,obj_floor_draw_basic)
	if(nearflor!=noone){
		inst.x=nearflor.x+16
		inst.y=nearflor.y+16
	}
	return nearflor;
}