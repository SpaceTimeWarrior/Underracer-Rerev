// initialize 3D
show_debug_message(string(room_get_name(room)))
d3d_start();
d3d_set_hidden(1);
d3d_set_culling(0);
d3d_set_lighting(global.lighting);
texture_set_repeat(0)
// interpolate textures
texture_set_interpolation(false);
d3d_set_perspective(1)
//d3d_set_shading(1)
can_playsong=true
d3d_set_fog(true,__background_get_colour( ),10,global.renderdistance)

global.racestart=true
global.bot_trigger=true
global.dialogue=false

//Variables Settings
kart_maxspd=7.1
kart_accel=0.2
kart_turn=4
final_sprite=spr_ksans_d
mdlspr_right=spr_ksans_r
mdlspr_left=spr_ksans_l
mdlspr_down=spr_ksans_d
mdlspr_up=spr_ksans_u
mdlspr_stun=spr_ksans_stun
mdlspr_victory=spr_ksans_victory
mdlspr_defeat=spr_ksans_defeat
mdlspr_down_look=spr_ksans_lookd
char="None"
scr_kartsettings_create()

ambient_r=global.lighting_quantity
ambient_g=global.lighting_quantity
ambient_b=global.lighting_quantity 

if global.gamemode =="Rally"{
	action_create_object(obj_escbutton_3d, x, y);
}else{
action_create_object(obj_escbutton_3dcampaign, x, y);
action_create_object(obj_hud_pause, x, y);
}
action_create_object(obj_achievement_tracker, x, y);

