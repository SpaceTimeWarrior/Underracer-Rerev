d3d_set_fog(false,c_white,-200,100)
//d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,480,0)
//d3d_set_hidden(false);
draw_sprite_ext(final_sprite,-1,320,240,1,1,0,c_white,1)
draw_text(320-48,240-32,string_hash_to_newline(string(global.roomname)))
draw_text(320-48,240-16,string_hash_to_newline("Gold: "+string(global.gold)))
show_debug_message("save_menu");
show_debug_message(string(global.roomname));
show_debug_message("Gold: "+string(global.gold));
draw_set_alpha(1);
//d3d_set_hidden(true);
//d3d_set_lighting(global.lighting);

