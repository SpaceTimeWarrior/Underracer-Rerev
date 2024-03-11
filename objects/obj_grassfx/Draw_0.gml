d3d_set_fog(false,c_white,-300,1000000);
scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex;
tex = sprite_get_texture(spr_grassfx,image_index);
d3d_draw_wall(x-7*camsin,y-7*camcos,15,x+7*camsin,y+7*camcos,0,tex,1,1);

