// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if !variable_local_exists("z") z = 0;
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);
var tex_shape_1;
tex_shape_1 = tex_place1;
var tex_shape_2;
tex_shape_2 = tex_podium;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
draw_set_alpha(0.5);
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
tex = background_get_texture(tex_shape_1);
draw_set_color(c_white);
draw_set_alpha(0.8);
d3d_transform_set_identity();
d3d_transform_add_translation(0,8,16);
d3d_transform_add_rotation_z(direction+90);
d3d_transform_add_translation(x,y,z+8);
d3d_draw_wall(-8,0,16,8,0,0,tex,1,1);
d3d_transform_set_identity();
// shape 2
tex = background_get_texture(tex_shape_2);
draw_set_color(c_white);
draw_set_alpha(0.8);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(direction+90);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-8,-8,12,8,8,0,tex,1,1);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

draw_set_alpha(1);