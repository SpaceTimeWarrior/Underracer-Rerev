scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_tem_christmas);
d3d_draw_wall(x-8*camsin,y-8*camcos,15,x+8*camsin,y+8*camcos,0,tex,1,1);

