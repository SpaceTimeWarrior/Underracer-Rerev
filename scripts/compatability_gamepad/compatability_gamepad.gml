// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamepad_check_button_pressed(id,key){
	return gamepad_button_check_pressed(id,key);
}
function gamepad_check_button(id,key){
	return gamepad_button_check(id,key);
}
function gamepad_check_button_released(id,key){
	return gamepad_button_check_released(id,key);
}
function gamepad_exists(gid){
	return gamepad_is_connected(gid);
}
function gamepad_to_string(inp){
	switch(inp){
		default:
		case 0:
		return "not bound"
		break;
		case gp_face1:
		if(gpst == 0){
			return "X";
		}else if(gpst == 1){
			return "A";
		}else{
		return "Face1";
		}
		break;
		case gp_face2:
		if(gpst == 0){
			return "Circle";
		}else if(gpst == 1){
			return "B";
		}else{
		return "Face2";
		}
		break;
		case gp_face3:
		if(gpst == 0){
			return "Square";
		}else if(gpst == 1){
			return "X";
		}else{
		return "Face3";
		}
		break;
		case gp_face4:
		if(gpst == 0){
			return "Triangle";
		}else if(gpst == 1){
			return "Y";
		}else{
		return "Face4";
		}
		break;
		case gp_padd:
		return "dpad down";
		break;
		case gp_padu:
		return "dpad up";
		break;
		case gp_padl:
		return "dpad left";
		break;
		case gp_padr:
		return "dpad right";
		break;
		case gp_select:
		if(gpst == 0){
			return "share";
		}else if(gpst == 1){
			return "select";
		}else{
		return "Select";
		}
		break;
		case gp_start:
		if(gpst == 0){
			return "Options";
		}else if(gpst == 1){
			return "Start";
		}else{
		return "Start";
		}
		break;
		case gp_shoulderl:
		if(gpst == 0){
			return "L1";
		}else if(gpst == 1){
			return "L Shoulder";
		}else{
		return "L Shoulder";
		}
		break;
		case gp_shoulderlb:
		if(gpst == 0){
			return "L2";
		}else if(gpst == 1){
			return "L trigger";
		}else{
		return "L bumper";
		}
		break;
		case gp_shoulderr:
		if(gpst == 0){
			return "R1";
		}else if(gpst == 1){
			return "R Shoulder";
		}else{
		return "R Shoulder";
		}
		break;
		case gp_shoulderrb:
		if(gpst == 0){
			return "R2";
		}else if(gpst == 1){
			return "R trigger";
		}else{
		return "R bumper";
		}
		break;
		case gp_stickl:
		if(gpst == 0){
			return "L3";
		}else if(gpst == 1){
			return "L stick";
		}else{
		return "L stick";
		}
		break;
		case gp_stickr:
		if(gpst == 0){
			return "R3";
		}else if(gpst == 1){
			return "R stick";
		}else{
		return "R stick";
		}
		break;
	}
}
function gamepad_find_button(gid,loop_number = 20000){
	if(!gamepad_exists(gid)){
		return 0;
	}
	var gin = 0
	while(gin = 0&&loop_number>0){
		if(gamepad_check_button(gid,gp_face1)){
			return gp_face1;
			break;
		}
		if(gamepad_check_button(gid,gp_face2)){
			return gp_face2;
			break;
		}
		if(gamepad_check_button(gid,gp_face3)){
			return gp_face3;
			break;
		}
		if(gamepad_check_button(gid,gp_face4)){
			return gp_face4;
			break;
		}
		if(gamepad_check_button(gid,gp_padd)){
			return gp_padd;
			break;
		}
		if(gamepad_check_button(gid,gp_padu)){
			return gp_padu;
			break;
		}
		if(gamepad_check_button(gid,gp_padl)){
			return gp_padl;
			break;
		}
		if(gamepad_check_button(gid,gp_padr)){
			return gp_padr;
			break;
		}
		if(gamepad_check_button(gid,gp_select)){
			return gp_select;
			break;
		}
		if(gamepad_check_button(gid,gp_start)){
			return gp_start;
			break;
		}
		if(gamepad_check_button(gid,gp_shoulderl)){
			return gp_shoulderl;
			break;
		}
		if(gamepad_check_button(gid,gp_shoulderlb)){
			return gp_shoulderlb;
			break;
		}
		if(gamepad_check_button(gid,gp_shoulderr)){
			return gp_shoulderr;
			break;
		}
		if(gamepad_check_button(gid,gp_shoulderrb)){
			return gp_shoulderrb;
			break;
		}
		if(gamepad_check_button(gid,gp_stickl)){
			return gp_stickl;
			break;
		}
		if(gamepad_check_button(gid,gp_stickr)){
			return gp_stickr;
			break;
		}
		loop_number--;
	}
	return 0;
}
function Gp_filtertest(element, index)
{
    return element > 0;
}
function gamepad_init(){
	var gp_num = gamepad_get_device_count();
	show_debug_message("gamepads:"+string(gp_num));
	var tti = array_create(gp_num)
	for (var i = 0; i < gp_num; i++;){
    if gamepad_is_connected(i){
			tti[i] = i+1;
	        show_debug_message("gp"+string(i)+gamepad_get_description(i));
	    }else{	
			tti[i] = 0;
	        show_debug_message("gp"+string(i)+"No Gamepad Connected");
	    }
	}
	
	globalvar gpds;
	globalvar p1gp;
	globalvar p2gp;
	p1gp = 0;
	p2gp = 0
	gpds = array_filter(tti,Gp_filtertest);
	if(array_length(gpds)>=1){
		p1gp = gpds[0]-1
		if(array_length(gpds)>=2){
			p1gp = gpds[1]-1
		}
	}
	/*ini_open("gptst.txt");//testing use only
	ini_write_string("gp","gps",string(tti));
	ini_write_real("gp","gp1",p1gp);
	ini_write_string("gp","gp1d",gamepad_get_description(p1gp))
	ini_write_real("gp","gp2",p2gp);
	ini_write_string("gp","gp2d",gamepad_get_description(p2gp))
	ini_close();*/
}
