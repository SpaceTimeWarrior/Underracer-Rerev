scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_wfall_pillar);
d3d_draw_wall(x-64*camsin,y-64*camcos,128,x+64*camsin,y+64*camcos,0,tex,1,1);

