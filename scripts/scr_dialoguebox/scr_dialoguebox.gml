function scr_dialoguebox_draw() {
	{
	d3d_set_lighting(0)
	d3d_set_projection_ortho(0,0,640,480,0);
	d3d_set_hidden(false);
	draw_set_color(c_white);
	d3d_set_fog(false,c_white,-200,100)
	draw_sprite_ext(spr_hud_dialoguebox,-1,0,320,2,2,image_angle,c_white,image_alpha)
	draw_sprite_ext(spriteface,-1,65,400,2,2,image_angle,c_white,image_alpha)
	draw_set_alpha(1);
	d3d_set_hidden(true);
	d3d_set_lighting(global.lighting)
	}



}
function scr_dialoguebox_step() {
	try{
	if instance_exists(dlg){
	if dlg.stringpos >= string_length(dlg.originalstring){image_speed=0 image_index=0}
	if dlg.stringpos < string_length(dlg.originalstring){image_speed=0.25}
	}

	if gamepad_exists(1){
	if gamepad_check_button_pressed(p1gp,global.control_pl1use_jk){
	if instance_exists(dlg){
	if dlg.stringpos >= string_length(dlg.originalstring){
	alarm[0]=1
	dlg.destroy=true
	dialogue+=1
	}}
	}
	if gamepad_check_button_pressed(p1gp,global.control_pl1special_jk){dlg.stringpos = string_length(dlg.originalstring)}
	}

	if keyboard_check_pressed(global.control_pl1use_kb){
	if instance_exists(dlg){
	if dlg.stringpos >= string_length(dlg.originalstring){
	alarm[0]=1
	dlg.destroy=true
	dialogue+=1
	}}
	}
	if keyboard_check_pressed(global.control_pl1special_kb){dlg.stringpos = string_length(dlg.originalstring)}
	}catch(_e){
		dlg = -1;
	}


}
