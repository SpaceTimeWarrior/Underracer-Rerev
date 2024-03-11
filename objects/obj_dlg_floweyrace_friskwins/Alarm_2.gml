sound_2play(snd_click)
global.cmpn_showraceinfo=false

if(room == rm_cmpn_boss_flowey){
	action_next_room();
}else{
	scr_freerace_flowey_souls()
	sound_stop_all()
	d3d_set_fog(false,c_black,10,global.renderdistance)
	d3d_end()
	action_another_room(rm_globalstart_escbutton);
	global.unlock_asriel=true 
	global.achieve_floweysouls=-1 
	hud=instance_create(x,y,obj_hud_achievement)
	hud.sprite_achievement=spr_unlock_asriel
	instance_destroy();
}
