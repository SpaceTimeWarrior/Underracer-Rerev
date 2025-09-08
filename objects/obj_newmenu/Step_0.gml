if image_index<0{image_index=4}
if image_index>4{image_index=0}

//Keyboard
if clickd=false{
if keyboard_check_pressed(global.control_pl1move_kb) or keyboard_check_pressed(vk_up) or gamepad_check_button_pressed(p1gp,global.control_pl1move_jk) or gamepad_check_button_pressed(p1gp,global.control_pl1left_jk){
image_index-=1
sound_2play(snd_slct)
}
if keyboard_check_pressed(global.control_pl1break_kb) or keyboard_check_pressed(vk_down) or gamepad_check_button_pressed(p1gp,global.control_pl1break_jk) or gamepad_check_button_pressed(p1gp,global.control_pl1right_jk){
image_index+=1
sound_2play(snd_slct)
}
}

//mouse controls
mjx = mouse_x;
mjy = mouse_y;
show_debug_message("x"+string(mjx)+" y"+string(mjy))
if(mjx<=300){
	if(mjy>=65&&mjy<95){
		image_index = 0;
	}else if(mjy>=140&&mjy<170){
		image_index = 1;
	}else if(mjy>=220&&mjy<250){
		image_index = 2;
	}else if(mjy>=295&&mjy<320){
		image_index = 3;
	}else if(mjy>=370&&mjy<410){
		image_index = 4;
	}
}


if keyboard_check_pressed(global.control_pl1use_kb) or keyboard_check_pressed(vk_enter) or gamepad_check_button_pressed(p1gp,global.control_pl1use_jk) or mouse_check_button(mb_left){

if image_index=0{
if clickd=false{
clickd=true
alarm[0]=15
sound_2play(snd_click)
}}

if image_index=1{
if clickd=false{
clickd=true
alarm[1]=15
sound_2play(snd_click)
}}

if image_index=2{
if clickd=false{
clickd=true
alarm[2]=15
sound_2play(snd_click)
}}

if image_index=3{
if clickd=false{
clickd=true
alarm[3]=15
sound_2play(snd_click)
}}

if image_index=4{
if clickd=false{
clickd=true
alarm[4]=15
sound_2play(snd_click)
}}}

