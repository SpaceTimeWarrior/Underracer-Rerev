scr_cam_definesencos()
gpu_set_alphatestenable(true);
gpu_set_alphatestref(128);          
if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_convenientlamp);
  d3d_draw_wall(x-8*camsin,y-8*camcos,16,
                x+8*camsin,y+8*camcos,0,tex,1,1);
}}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_convenientlamp);
  d3d_draw_wall(x-8*camsin,y-8*camcos,16,
                x+8*camsin,y+8*camcos,0,tex,1,1);
}}}

