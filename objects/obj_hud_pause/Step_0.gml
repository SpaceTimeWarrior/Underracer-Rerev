if instance_exists(obj_kart_frisk){
x=obj_kart_frisk.x
y=obj_kart_frisk.y
}
if(keyboard_check(vk_alt)&&keyboard_check(vk_f4)){
	sound_stop_all()
	d3d_set_fog(false,c_black,10,global.renderdistance)
	d3d_end()
	action_another_room(rm_globalstart_escbutton);
	instance_destroy();
}
