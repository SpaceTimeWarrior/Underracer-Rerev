scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = background_get_texture(tex_powerupbox);
d3d_draw_wall(x-x_offset*camsin,y-y_offset*camcos,height+z,x+x_offset*camsin,y+y_offset*camcos,low_offset+z,tex,1,1);

