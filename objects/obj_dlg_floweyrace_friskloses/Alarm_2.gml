sound_2play(snd_click)
global.cmpn_showraceinfo=false

if(room == rm_cmpn_boss_flowey){
	action_next_room();
}else{
	sound_stop_all()
	d3d_set_fog(false,c_black,10,global.renderdistance)
	d3d_end()
	action_another_room(rm_globalstart_escbutton);
	instance_destroy();
}
