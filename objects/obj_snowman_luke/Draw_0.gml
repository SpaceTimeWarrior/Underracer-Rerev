scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_snowman_luke);
d3d_draw_wall(x-8*camsin,y-8*camcos,16,x+8*camsin,y+8*camcos,0,tex,1,1);

