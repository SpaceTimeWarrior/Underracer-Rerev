gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);scr_cam_definesencos()

if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_tree_christmas);
  d3d_draw_wall(x-28*camsin,y-28*camcos,70,
                x+28*camsin,y+28*camcos,0,tex,1,1);
}}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_tree_christmas);
  d3d_draw_wall(x-28*camsin,y-28*camcos,70,
                x+28*camsin,y+28*camcos,0,tex,1,1);
}}}

