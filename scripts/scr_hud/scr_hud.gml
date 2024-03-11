function scr_drawhud(player=1) {
	if global.players=1{
	//d3d_set_lighting(0);
	//d3d_set_projection_ortho(0,0,640,480,0)
	//d3d_set_hidden(false);
	draw_set_color(c_white)
	switch(global.char1){
	case "Papyrus":
		draw_set_font(fnt_papyrus);
		break;
	case "Sans":
		draw_set_font(fnt_sans);
		break;
	case "Gaster":
		draw_set_font(fnt_wd);
		break;
	default:
	draw_set_font(fnt_hud);
	}
	var time_data = array_create(0,array_create(2,""));
	time_data[0][0]=string(global.char1);
	time_data[1][0]="Speed: "+string(target.speed)
	try{
	if global.cmpn_showraceinfo=false{
	time_data[2][0]=("Lap: "+string(target.lap))}
	if global.cmpn_showraceinfo=true{
	time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}catch(_e){
		global.cmpn_showraceinfo = false;
		if global.cmpn_showraceinfo=false{
		time_data[2][0]=("Lap: "+string(target.lap))}
		if global.cmpn_showraceinfo=true{
		time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}
	time_data[3][0]="Player : "+string(target.player);
	time_data[4][0]="Magic : "+string(round(target.ability_timer))+" %";
	time_data[5][0]="Attack : "+string(target.ability);
	time_data[0][1]=draw_get_font();
	time_data[1][1]=draw_get_font();
	time_data[2][1]=draw_get_font();
	time_data[3][1]=draw_get_font();
	time_data[4][1]=draw_get_font();
	time_data[5][1]=draw_get_font();
	var width=get_largest_string_from_array(time_data)
	draw_sprite_stretched_ext(spr_hud_box,-1,0,0,16+width+16,110,c_white,1);
	//First Text Drawn outside this script, Check object
	draw_text(12,6,string_hash_to_newline(string(global.char1)))
	draw_text(12,6+16,string_hash_to_newline("Speed: "+string(target.speed)))
	draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)+" / "+string(global.lap_limit)))
	draw_text(12,6+48,string_hash_to_newline("Player : "+string(target.player)))
	draw_text(12,6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
	draw_text(12,6+80,string_hash_to_newline("Attack : "+string(target.ability)))
	show_debug_message("race data")
	show_debug_message("Speed: "+string(target.speed));
	show_debug_message("Lap: "+string(target.lap)+" / "+string(global.lap_limit));
	show_debug_message("Player : "+string(target.player));
	show_debug_message("Magic : "+string(round(target.ability_timer))+" %");
	show_debug_message("Attack : "+string(target.ability));
	//draw_text(12,12+96,"Position: "+string(target.race_position))
	/*if showpos=true{
	draw_sprite_ext(spr_hud_positions,-1,450,0,2,2,0,c_white,1)
	draw_text(462,12   ,"Position 1: "+string(global.position_1_name))
	draw_text(462,12+16,"Position 2: "+string(global.position_2_name))
	draw_text(462,12+32,"Position 3: "+string(global.position_3_name))
	draw_text(462,12+48,"Position 4: "+string(global.position_4_name))
	draw_text(462,12+64,"Position 5: "+string(global.position_5_name))
	draw_text(462,12+80,"Position 6: "+string(global.position_6_name))
	}*/
	//HUD Powerup Box
	draw_sprite_stretched_ext(spr_hud_box,-1,0,432,144,48,c_white,1)
	draw_sprite_ext(sprite_powerup,-1,8,432+8,1,1,0,c_white,1)
	draw_text(12+42,432+16,string_hash_to_newline(string(target.powerup)))
	show_debug_message("powerup:"+ string(target.powerup));
	//HUD Timer
	draw_sprite_ext(spr_hud_timebox,-1,496,0,1,1,0,c_white,1)
	var stime;
	if(target.seconds<10){
		stime = "0"+string(target.seconds)
	}else{
		stime = string(target.seconds);
	}
	var mtime;
	if(target.minutes<10){
		mtime = "0"+string(target.minutes)
	}else{
		mtime = string(target.minutes);
	}
	var time = mtime+" : "+stime
	draw_text(496+46,12,string_hash_to_newline(time))
	show_debug_message("timer:"+time);
	draw_set_alpha(1);
	//d3d_set_hidden(true);
	//d3d_set_lighting(global.lighting);
	}

	if global.players=2{
	//d3d_set_lighting(true);
	//d3d_set_projection_ortho(0,0,640,240,0)
	//d3d_set_hidden(false);
	draw_set_color(c_red)
	draw_set_font(fnt_hud);
	var time_data = array_create(0,array_create(2,""));
	if(player ==1){
	time_data[0][0]=string(global.char1);
	time_data[1][0]="Speed: "+string(target.speed)
	try{
	if global.cmpn_showraceinfo=false{
	time_data[2][0]=("Lap: "+string(target.lap))}
	if global.cmpn_showraceinfo=true{
	time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}catch(_e){
		global.cmpn_showraceinfo = false;
		if global.cmpn_showraceinfo=false{
		time_data[2][0]=("Lap: "+string(target.lap))}
		if global.cmpn_showraceinfo=true{
		time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}
	time_data[3][0]="Player : "+string(target.player);
	time_data[4][0]="Magic : "+string(round(target.ability_timer))+" %";
	time_data[5][0]="Attack : "+string(target.ability);
	time_data[0][1]=draw_get_font();
	time_data[1][1]=draw_get_font();
	time_data[2][1]=draw_get_font();
	time_data[3][1]=draw_get_font();
	time_data[4][1]=draw_get_font();
	time_data[5][1]=draw_get_font();
	var width=get_largest_string_from_array(time_data)
	draw_sprite_stretched_ext(spr_hud_box,-1,0,0,16+width+16,110,c_white,1);
	//First Text Drawn outside this script, Check object
	draw_text(12,6,string_hash_to_newline(string(global.char1)))
	draw_text(12,6+16,string_hash_to_newline("Speed: "+string(target.speed)))
	draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)))
	draw_text(12,6+48,string_hash_to_newline("Player : "+string(target.player)))
	draw_text(12,6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
	draw_text(12,6+80,string_hash_to_newline("Attack : "+string(target.ability)))
	//show_debug_message("race data")
	//show_debug_message("Speed: "+string(target.speed));
	//show_debug_message("Lap: "+string(target.lap)+" / "+string(global.lap_limit));
	//show_debug_message("Player : "+string(target.player));
	//show_debug_message("Magic : "+string(round(target.ability_timer))+" %");
	//show_debug_message("Attack : "+string(target.ability));
	draw_text(12,12+96,"Position: "+string(target.race_position))
	/*if showpos=true{
	draw_sprite_ext(spr_hud_positions,-1,450,0,2,2,0,c_white,1)
	draw_text(462,12   ,"Position 1: "+string(global.position_1_name))
	draw_text(462,12+16,"Position 2: "+string(global.position_2_name))
	draw_text(462,12+32,"Position 3: "+string(global.position_3_name))
	draw_text(462,12+48,"Position 4: "+string(global.position_4_name))
	draw_text(462,12+64,"Position 5: "+string(global.position_5_name))
	draw_text(462,12+80,"Position 6: "+string(global.position_6_name))
	}*/
	//HUD Powerup Box
	
	
	draw_sprite_stretched_ext(spr_hud_box,-1,0,192,144,48,c_white,1)
	draw_sprite_ext(sprite_powerup,-1,8,192+8,1,1,0,c_white,1)
	draw_text(12+42,192+16,string_hash_to_newline(string(target.powerup)))
	show_debug_message("powerup:"+ string(target.powerup));
	
	//HUD Timer
	
	
	draw_sprite_ext(spr_hud_timebox,-1,496,0,1,1,0,c_white,1)
	var stime;
	if(target.seconds<10){
		stime = "0"+string(target.seconds)
	}else{
		stime = string(target.seconds);
	}
	var mtime;
	if(target.minutes<10){
		mtime = "0"+string(target.minutes)
	}else{
		mtime = string(target.minutes);
	}
	var time = mtime+" : "+stime
	draw_text(496+46,12,string_hash_to_newline(time))
	show_debug_message("timer:"+time);
	
	}else if(player = 2){
		time_data[0][0]=string(global.char2);
	time_data[1][0]="Speed: "+string(target.speed)
	try{
	if global.cmpn_showraceinfo=false{
	time_data[2][0]=("Lap: "+string(target.lap))}
	if global.cmpn_showraceinfo=true{
	time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}catch(_e){
		global.cmpn_showraceinfo = false;
		if global.cmpn_showraceinfo=false{
		time_data[2][0]=("Lap: "+string(target.lap))}
		if global.cmpn_showraceinfo=true{
		time_data[2][0]=("Lap: "+string(target.lap)+" / "+string(global.lap_limit))}
	}
	time_data[3][0]="Player : "+string(target.player);
	time_data[4][0]="Magic : "+string(round(target.ability_timer))+" %";
	time_data[5][0]="Attack : "+string(target.ability);
	time_data[0][1]=draw_get_font();
	time_data[1][1]=draw_get_font();
	time_data[2][1]=draw_get_font();
	time_data[3][1]=draw_get_font();
	time_data[4][1]=draw_get_font();
	time_data[5][1]=draw_get_font();
	var width=get_largest_string_from_array(time_data)
	var ht = display_get_gui_height()/2
	draw_sprite_stretched_ext(spr_hud_box,-1,0,ht,16+width+16,110,c_white,1);
	//First Text Drawn outside this script, Check object
	draw_text(12,ht+6,string_hash_to_newline(string(global.char2)))
	draw_text(12,ht+6+16,string_hash_to_newline("Speed: "+string(target.speed)))
	draw_text(12,ht+6+32,string_hash_to_newline("Lap: "+string(target.lap)))
	draw_text(12,ht+6+48,string_hash_to_newline("Player : "+string(target.player)))
	draw_text(12,ht+6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
	draw_text(12,ht+6+80,string_hash_to_newline("Attack : "+string(target.ability)))
	show_debug_message("race data")
	show_debug_message("Speed: "+string(target.speed));
	show_debug_message("Lap: "+string(target.lap)+" / "+string(global.lap_limit));
	show_debug_message("Player : "+string(target.player));
	show_debug_message("Magic : "+string(round(target.ability_timer))+" %");
	show_debug_message("Attack : "+string(target.ability));
	//draw_text(12,12+96,"Position: "+string(target.race_position))
	/*if showpos=true{
	draw_sprite_ext(spr_hud_positions,-1,450,0,2,2,0,c_white,1)
	draw_text(462,12   ,"Position 1: "+string(global.position_1_name))
	draw_text(462,12+16,"Position 2: "+string(global.position_2_name))
	draw_text(462,12+32,"Position 3: "+string(global.position_3_name))
	draw_text(462,12+48,"Position 4: "+string(global.position_4_name))
	draw_text(462,12+64,"Position 5: "+string(global.position_5_name))
	draw_text(462,12+80,"Position 6: "+string(global.position_6_name))
	}*/
	//HUD Powerup Box
	
	
	draw_sprite_stretched_ext(spr_hud_box,-1,0,ht+192,144,48,c_white,1)
	draw_sprite_ext(sprite_powerup,-1,8,ht+192+8,1,1,0,c_white,1)
	draw_text(12+42,ht+192+16,string_hash_to_newline(string(target.powerup)))
	show_debug_message("powerup:"+ string(target.powerup));
	
	//HUD Timer
	
	
	draw_sprite_ext(spr_hud_timebox,-1,496,ht,1,1,0,c_white,1)
	var stime;
	if(target.seconds<10){
		stime = "0"+string(target.seconds)
	}else{
		stime = string(target.seconds);
	}
	var mtime;
	if(target.minutes<10){
		mtime = "0"+string(target.minutes)
	}else{
		mtime = string(target.minutes);
	}
	var time = mtime+" : "+stime
	draw_text(496+46,ht+12,string_hash_to_newline(time))
	show_debug_message("timer:"+time);
	}
	draw_set_alpha(1);
	//d3d_set_hidden(true);
	//d3d_set_lighting(global.lighting);
	}



}
function scr_hudstep() {
	if is_string(target.powerup){
		switch(target.powerup){
		//this sets the powerup sprite
		case "None":{sprite_powerup=spr_powerup_none;break;}
		case "Spikes":{sprite_powerup=spr_powerup_spikes;break;}
		case "G. Blaster":{sprite_powerup=spr_powerup_gb;break;}
		case "Spaghetti":{sprite_powerup=spr_powerup_spaghetti;break;}
		case "Bone":{sprite_powerup=spr_powerup_bone;break;}
		case "Blue Bone":{sprite_powerup=spr_powerup_bluebone;break;}
		case "Spear":{sprite_powerup=spr_powerup_spears;break;}
		case "Jetpack":{sprite_powerup=spr_powerup_jetpack;break;}
		default:{sprite_powerup=spr_powerup_none;break;}
		}
	}
}