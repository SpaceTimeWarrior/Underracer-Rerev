scr_cam_definesencos()
d3d_set_fog(false,c_white,-300,1000000)
var tex;
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
tex = sprite_get_texture(spr_bonefx,image_index);
d3d_draw_wall(x-7*camsin,y-7*camcos,15,x+7*camsin,y+7*camcos,0,tex,1,1);

