scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_judge_pillar);
d3d_draw_wall(x-14*camsin,y-14*camcos,64,x+14*camsin,y+14*camcos,0,tex,1,1);

