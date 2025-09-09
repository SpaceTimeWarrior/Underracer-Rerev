scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = sprite_get_texture(spr_magicdrop,image_index);
d3d_draw_wall(x-x_offset*camsin,y-y_offset*camcos,z+height,x+x_offset*camsin,y+y_offset*camcos,z,tex,1,1);

