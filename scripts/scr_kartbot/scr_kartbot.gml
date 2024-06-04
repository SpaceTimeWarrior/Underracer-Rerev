function scr_kartbot() {
	if global.bot_trigger=false{instance_destroy()}

	if global.racestart=true{bot_racestart=true}
	if global.racestart=false{bot_racestart=false}

	if bot_pathstart=false{speed+=kart_accel}

	if bot_racestart=true and bot_pathstart=true{
	path_start(botpath,botspd,path_action_continue,true)
	speed=0
	bot_action="Move"
	bot_pathstart=2
	}

	if stun=false{
	path_speed+=kart_accel
	if path_speed>kart_maxspd{path_speed=kart_maxspd}
	if path_speed<-kart_maxspd/4{path_speed=-kart_maxspd/4}
	}
	if stun=true{path_speed-=friction}

	/*
	if speed<1 and bot_action!="Reverse"{bot_action="Reverse"}
	if bot_action="Move"{speed+=kart_accel}
	if bot_action="Reverse"{speed-=kart_accel}
	if bot_action="Reverse" and speed<-1{bot_action="Move"}
	*/

	if powerup!="None"{powerup_trigger=true}

	var nearkart,nearwall;
	nearkart=instance_nearest(x,y,obj_kart_basic)
	nearwall=instance_nearest(x,y,obj_col_basic)



}
function scr_kartbot2(char = 0) {
	/*if(!variable_local_exists(first_path)){
		first_path = botpath;
	}*/
	var pp = instance_number(obj_path_checkpoint)+1
	var inst;
	if(bot_path_pat%pp==0||bot_path_pat == 0){
	var inst = instance_nearest(x,y,obj_lapend);
	}else{
		for(var t = 0; t<instance_number(obj_path_checkpoint);t++){
			inst = instance_find(obj_path_checkpoint,t);
			if(inst.pat = bot_path_pat-1&& bot == true){
				/*if(fallen > 10){
					x = inst.x;
					y = inst.y;
					direction = inst.direction;
					fallen = 0;
				}*/
			}
			if(inst.pat = bot_path_pat){
				
				break;
			}
		}
	}
	speed = path_speed;
	if(speed = 0){
		find_nearest_floor(self)
		speed = 1;
	}
	//if(kart_counter%ceil(gspd/3)==0){
	
	mp_potential_path_object(id.botpath,inst.x,inst.y,(5*speed)/8,2,obj_collidable);
	path_start(id.botpath,id.botspd,path_action_continue,true);
	//bot_path_pat_last = bot_path_pat;
	if(abs(direction_last-direction)>45){
		speed/=2;
		if(speed == 0){
			speed = 1;
		}
		path_speed/=2;
		if(path_speed == 0){
			path_speed = 1;
		}
	}
	path_speed = speed;
	if(speed = 0){
		find_nearest_floor(self)
		speed = 1;
	}
//	}
//	kart_counter++;
	scr_kartbot();
}
