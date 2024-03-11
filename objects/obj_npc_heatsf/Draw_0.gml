scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-12*camsin,y-12*camcos,24,x+12*camsin,y+12*camcos,0,tex,1,1);

