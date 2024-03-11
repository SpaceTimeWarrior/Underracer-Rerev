//Variables Settings
event_inherited();
kart_maxspd=7.1
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
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
char="Sans"
kartwidth=5
kartheight=10+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
