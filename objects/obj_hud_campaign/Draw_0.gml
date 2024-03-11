/*
if view_current=0
{
if activate=true{
d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,480,0)
d3d_set_hidden(false);
draw_set_color(c_white)
draw_set_font(fnt_hud);
draw_sprite(spr_hud_box,-1,0,0)
show_debug_message("hud_campaign");
show_debug_message(string(global.char1));
show_debug_message("Speed: "+string(target.speed));
draw_text(12,6,string_hash_to_newline(string(global.char1)))
draw_text(12,6+16,string_hash_to_newline("Speed: "+string(target.speed)))
try{
if global.cmpn_showraceinfo=false{
show_debug_message("Lap: "+string(target.lap));
draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)))}
if global.cmpn_showraceinfo=true{
show_debug_message("Lap: "+string(target.lap)+" / "+string(global.lap_limit));
draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)+" / "+string(global.lap_limit)))}
}catch(_e){
	global.cmpn_showraceinfo = false;
	if global.cmpn_showraceinfo=false{
	show_debug_message("Lap: "+string(target.lap));
	draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)))}
	if global.cmpn_showraceinfo=true{
	show_debug_message("Lap: "+string(target.lap)+" / "+string(global.lap_limit));
	draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)+" / "+string(global.lap_limit)))}
}
draw_text(12,6+48,string_hash_to_newline("Player : "+string(target.player)))
draw_text(12,6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
draw_text(12,6+80,string_hash_to_newline("Attack : "+string(target.ability)))
show_debug_message("Player : "+string(target.player));
show_debug_message("Magic : "+string(round(target.ability_timer))+" %");
show_debug_message("Attack : "+string(target.ability));
//HUD Powerup Box
draw_sprite_ext(spr_hud_powerup,-1,496,0,1,1,0,c_white,1)
draw_sprite_ext(sprite_powerup,-1,496+8,0+8,1,1,0,c_white,1)
draw_text(496+42,0+8,string_hash_to_newline(string(target.powerup)))
show_debug_message("powerup:"+string(target.powerup))
draw_sprite_ext(spr_hud_powerup,-1,496,48,1,1,0,c_white,1)
draw_set_color(c_yellow)
draw_text(496+8,48+8,string_hash_to_newline("Gold : "+string(global.gold)))
show_debug_message("Gold : "+string(global.gold));
draw_set_color(c_white)
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}
}*/
//event_perform(ev_gui,0);
