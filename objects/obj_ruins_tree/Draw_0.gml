scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_ruins_tree);
d3d_draw_wall(x-28*camsin,y-28*camcos,64,x+28*camsin,y+28*camcos,0,tex,1,1);

