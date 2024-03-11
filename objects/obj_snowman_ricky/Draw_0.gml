scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_snowman_ricky);
d3d_draw_wall(x-5*camsin,y-5*camcos,7,x+5*camsin,y+5*camcos,0,tex,1,1);

