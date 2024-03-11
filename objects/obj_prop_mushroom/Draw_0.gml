scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_wfall_mushroom);
d3d_draw_wall(x-16*camsin,y-16*camcos,32,x+16*camsin,y+16*camcos,0,tex,1,1);

