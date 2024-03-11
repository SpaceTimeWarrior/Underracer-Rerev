scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_newhome_throne);
d3d_draw_wall(x-18*camsin,y-18*camcos,30,x+18*camsin,y+18*camcos,0,tex,1,1);

