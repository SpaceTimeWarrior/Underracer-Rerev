d3d_set_fog(false,c_white,-200,100)
//d3d_set_lighting(0);
//d3d_set_hidden(false);
draw_sprite_ext(final_sprite,-1,200,180,1.5,1.25,0,c_white,1)
draw_set_color(c_white);
draw_text(320-48,240-32,string_hash_to_newline(string(global.roomname)+" shop"));
draw_set_color(c_yellow);
draw_text(320-48,240-16,string_hash_to_newline("Gold: "+string(global.gold)))
if(final_sprite!=spr_hud_item_sold){
	if(image_index == 0){
		draw_set_color(c_yellow);
		if(global.gold < 200||campaign_engine_s!=0){
			draw_set_color(c_red);
		}
	}else{
		draw_set_color(c_white);
	}
	if(campaign_engine_s == 0){
	draw_text(320-48,240,string_hash_to_newline("Engine upgrade: 200G"))
	}else{
		draw_text(320-48,240,string_hash_to_newline("sold out"));
	}
	if(image_index == 1){
		draw_set_color(c_yellow);
		if(global.gold < 175||campaign_transm_s!=0){
			draw_set_color(c_red);
		}
	}else{
		draw_set_color(c_white);
	}
	if(campaign_transm_s == 0){
	draw_text(320-48,240+16,string_hash_to_newline("transmission upgrade: 175G"))
	}else{
		draw_text(320-48,240+16,string_hash_to_newline("sold out"));
	}
	if(image_index == 2){
		draw_set_color(c_yellow);
		if(global.gold < 100||campaign_tires_s!=0){
			draw_set_color(c_red);
		}
	}else{
		draw_set_color(c_white);
	}
	if(campaign_tires_s == 0){
	draw_text(320-48,240+32,string_hash_to_newline("tire upgrade: 100G"))
	}else{
		draw_text(320-48,240+32,string_hash_to_newline("sold out"));
	}
	if(image_index == 3){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	draw_text(320-48,240+48,string_hash_to_newline("exit shop"))
}
//show_debug_message("save_menu");
//show_debug_message(string(global.roomname));
//show_debug_message("Gold: "+string(global.gold));
draw_set_alpha(1);
//d3d_set_hidden(true);
//d3d_set_lighting(global.lighting);

