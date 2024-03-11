scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_snowman_brawl);
d3d_draw_wall(x-10*camsin,y-10*camcos,20,x+10*camsin,y+10*camcos,0,tex,1,1);

