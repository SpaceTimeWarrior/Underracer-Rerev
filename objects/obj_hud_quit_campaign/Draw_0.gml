d3d_set_fog(false,c_white,-200,100)
if activate=true{
d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,480,0)
d3d_set_hidden(false);
draw_sprite_ext(spr_hud_quit,-1,320,240,1,1,0,c_white,1)
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}

