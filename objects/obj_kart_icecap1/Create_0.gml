//Variables Settings
event_inherited();
kart_maxspd=6.8
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.4
kart_turn=4.4
final_sprite=spr_kicecap_d
mdlspr_right=spr_kicecap_r
mdlspr_left=spr_kicecap_l
mdlspr_down=spr_kicecap_d
mdlspr_up=spr_kicecap_u
mdlspr_stun=spr_kicecap_stun
mdlspr_victory=spr_kicecap_victory
mdlspr_defeat=spr_kicecap_defeat
mdlspr_down_look=spr_kicecap_lookd
char="Icecap 1"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
