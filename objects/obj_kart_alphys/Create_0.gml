//Variables Settings
event_inherited();
kart_maxspd=6.95
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.225
kart_turn=4
final_sprite=spr_kalphys_d
mdlspr_right=spr_kalphys_r
mdlspr_left=spr_kalphys_l
mdlspr_down=spr_kalphys_d
mdlspr_up=spr_kalphys_u
mdlspr_stun=spr_kalphys_stun
mdlspr_victory=spr_kalphys_victory
mdlspr_defeat=spr_kalphys_defeat
mdlspr_down_look=spr_kalphys_lookd
char="Alphys"
kartwidth=5
kartheight=10+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
