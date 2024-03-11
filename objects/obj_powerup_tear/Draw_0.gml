scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-2*camsin,y-2*camcos,12+z,x+2*camsin,y+2*camcos,8+z,tex,1,1);

