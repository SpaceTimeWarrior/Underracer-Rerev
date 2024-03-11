scr_cam_definesencos()
d3d_set_fog(false,c_white,-1000,2000000);
var tex;
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
tex = sprite_get_texture(final_sprite,image_index);
d3d_draw_wall(x-12*camsin,y-12*camcos,24+z+vibration,x+12*camsin,y+12*camcos,0+z+vibration,tex,1,1);

