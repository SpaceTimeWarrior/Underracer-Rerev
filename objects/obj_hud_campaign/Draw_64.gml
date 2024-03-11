draw_set_color(c_white)
draw_set_font(fnt_hud);
d3d_set_fog(false,c_white,-200,100)
draw_set_color(c_white);
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
time_data[0][1]=fnt_hud;
time_data[1][1]=fnt_hud;
time_data[2][1]=fnt_hud;
time_data[3][1]=fnt_hud;
time_data[4][1]=fnt_hud;
time_data[5][1]=fnt_hud;
var width=get_largest_string_from_array(time_data)
draw_sprite_stretched_ext(spr_hud_box,-1,0,0,16+width+16,110,c_white,1);
draw_text(0,0,string_hash_to_newline(time_data[0][0]));
draw_text(0,0+16,string_hash_to_newline(time_data[1][0]));

draw_text(12,6+32,string_hash_to_newline(time_data[2][0]));
draw_text(12,6+48,string_hash_to_newline(time_data[3][0]));
draw_text(12,6+64,string_hash_to_newline(time_data[4][0]));
draw_text(12,6+80,string_hash_to_newline(time_data[5][0]));
//HUD Powerup Box
draw_sprite_stretched_ext(spr_hud_box,-1,496,0,144,48,c_white,1)
draw_sprite_ext(sprite_powerup,-1,496+8,0+8,1,1,0,c_white,1)
draw_text(496+42,0+8,string_hash_to_newline(string(target.powerup)))
//HUD gold Box
draw_sprite_stretched_ext(spr_hud_box,-1,496,48,144,48,c_white,1)
draw_set_color(c_yellow)
draw_text(496+8,48+8,string_hash_to_newline("Gold : "+string(global.gold)))
d3d_set_fog(false,c_white,-200,100)
draw_set_color(c_white)
