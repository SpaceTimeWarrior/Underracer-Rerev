d3d_set_fog(false,c_white,-200,1000000)
scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = sprite_get_texture(spr_binary,image_index);
d3d_draw_wall(x-12*camsin,y-12*camcos,24+z,x+12*camsin,y+12*camcos,0+z,tex,1,1);

