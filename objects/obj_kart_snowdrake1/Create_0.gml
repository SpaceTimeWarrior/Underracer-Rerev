//Variables Settings
event_inherited();
kart_maxspd=7
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.25
kart_turn=4.5
final_sprite=spr_snowdrake_d
mdlspr_right=spr_snowdrake_r
mdlspr_left=spr_snowdrake_l
mdlspr_down=spr_snowdrake_d
mdlspr_up=spr_snowdrake_u
mdlspr_stun=spr_snowdrake_stun
mdlspr_victory=spr_snowdrake_victory
mdlspr_defeat=spr_snowdrake_defeat
mdlspr_down_look=spr_snowdrake_lookd
char="Snowdrake 1"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
