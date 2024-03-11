scr_cam_definesencos()
d3d_set_fog(false,c_white,-300,1000000)
var tex;
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
tex = background_get_texture(tex_pillar_ruins);
d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex,1,1);

