function scr_cam_definesencos() {
	try{
	if (view_current=0) {
	if distance_to_object(obj_cam1) > global.renderdistance exit{
	camsin=obj_cam1.camsin
	camcos=obj_cam1.camcos
	cam=obj_cam1
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}

	if global.players>1{
	if (view_current=1) {
	if distance_to_object(obj_cam2) > global.renderdistance exit{
	camsin=obj_cam2.camsin
	camcos=obj_cam2.camcos
	cam=obj_cam2
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}

	if global.players>2{
	if (view_current=2) {
	if distance_to_object(obj_cam3) > global.renderdistance exit{
	camsin=obj_cam3.camsin
	camcos=obj_cam3.camcos
	cam=obj_cam3
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}

	if global.players>3{
	if (view_current=3) {
	if distance_to_object(obj_cam4) > global.renderdistance exit{
	camsin=obj_cam4.camsin
	camcos=obj_cam4.camcos
	cam=obj_cam4
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}
	}catch(_e){
		change_sprite = 0;
		mdlspr_right = 0;
		mdlspr_up = 0;
		mdlspr_left = 0;
		mdlspr_down = 0;
		scr_cam_definesencos()
	}


}
function scr_wincampos() {
	if target.lap>global.lap_limit{
	DX = -50 
	height=26
	pitch=6
	z=0
	Len = point_distance(0, 0, DX, DY)
	Angle = point_direction(0, 0, DX, DY)
	target=obj_wincam_pos
	direction=0
	}



}