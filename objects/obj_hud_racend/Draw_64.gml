var tc = dx+12
d3d_set_fog(false,c_white,-200,100)
if global.players=1{
if activate=true{
d3d_set_lighting(0);
d3d_set_hidden(false);
draw_set_font(fnt_hud);
draw_sprite_ext(spr_hud_racend,-1,320,240,2,2,0,c_white,1)
draw_sprite_ext(spr_hud_positions,-1,dx,dy-12,2,2,0,c_white,1)
draw_text(tc,dy   ,string_hash_to_newline("Position 1: "+string(global.position_1_name)))
draw_text(tc,dy+16,string_hash_to_newline("Position 2: "+string(global.position_2_name)))
draw_text(tc,dy+32,string_hash_to_newline("Position 3: "+string(global.position_3_name)))
draw_text(tc,dy+48,string_hash_to_newline("Position 4: "+string(global.position_4_name)))
draw_text(tc,dy+64,string_hash_to_newline("Position 5: "+string(global.position_5_name)))
draw_text(tc,dy+80,string_hash_to_newline("Position 6: "+string(global.position_6_name)))
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}}

if global.players=2{
if activate=true{
d3d_set_lighting(0);
d3d_set_hidden(false);
draw_set_font(fnt_hud);
draw_sprite_ext(spr_hud_racend,-1,320,240,2,2,0,c_white,1)
draw_sprite_ext(spr_hud_positions,-1,dx,dy-12,2,2,0,c_white,1)
draw_text(tc,dy   ,string_hash_to_newline("Position 1: "+string(global.position_1_name)))
draw_text(tc,dy+16,string_hash_to_newline("Position 2: "+string(global.position_2_name)))
draw_text(tc,dy+32,string_hash_to_newline("Position 3: "+string(global.position_3_name)))
draw_text(tc,dy+48,string_hash_to_newline("Position 4: "+string(global.position_4_name)))
draw_text(tc,dy+64,string_hash_to_newline("Position 5: "+string(global.position_5_name)))
draw_text(tc,dy+80,string_hash_to_newline("Position 6: "+string(global.position_6_name)))
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}}

