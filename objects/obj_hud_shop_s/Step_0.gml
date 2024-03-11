if destroy=true{instance_destroy()}

if image_index>3{image_index=0}
if image_index<0{image_index=3}



//Keyboard
if clickd=false{
if keyboard_check_pressed(global.control_pl1move_kb) or keyboard_check_pressed(vk_up) or gamepad_check_button_pressed(p1gp,global.control_pl1move_jk){
image_index-=1
sound_2play(snd_slct)
}
if keyboard_check_pressed(global.control_pl1break_kb) or keyboard_check_pressed(vk_down) or gamepad_check_button_pressed(p1gp,global.control_pl1break_jk){
image_index+=1
sound_2play(snd_slct)
}
}

if keyboard_check_pressed(global.control_pl1use_kb) or keyboard_check_pressed(vk_enter) or gamepad_check_button_pressed(p1gp,global.control_pl1use_jk){

if image_index=0{
	if(global.gold < 200||campaign_engine_s!=0){
		sound_2play(snd_error);
	}else{
if clickd=false{
global.gold-=200;
campaign_engine_s=0.25;
clickd=true
alarm[0]=35
sound_2play(snd_click)
final_sprite=spr_hud_item_sold
}}}

if image_index=1{
	if(global.gold < 175||campaign_transm_s!=0){
		sound_2play(snd_error);
	}else{
if clickd=false{
global.gold-=175;
campaign_transm_s=0.25;
clickd=true
alarm[0]=35
sound_2play(snd_click)
final_sprite=spr_hud_item_sold
}}}
if image_index=2{
	if(global.gold < 100||campaign_tires_s!=0){
		sound_2play(snd_error);
	}else{
if clickd=false{
global.gold-=100;
campaign_tires_s=0.25;
clickd=true
alarm[0]=35
sound_2play(snd_click)
final_sprite=spr_hud_item_sold
}}}

if image_index=3{
if clickd=false{
clickd=true
alarm[0]=1
sound_2play(snd_click)
}}


}

