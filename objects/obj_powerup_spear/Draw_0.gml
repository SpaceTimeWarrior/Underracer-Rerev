scr_cam_definesencos()
d3d_set_fog(false,c_white,-1000,2000000);
var tex;
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-6*camsin,y-6*camcos,12+2+z,x+6*camsin,y+6*camcos,0+2+z,tex,1,1);

