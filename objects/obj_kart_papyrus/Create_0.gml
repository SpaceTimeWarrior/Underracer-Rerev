//Variables Settings
event_inherited();
kart_maxspd=7.1;
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.2
kart_turn=4
final_sprite=spr_kpapy_d
mdlspr_right=spr_kpapy_r
mdlspr_left=spr_kpapy_l
mdlspr_down=spr_kpapy_d
mdlspr_up=spr_kpapy_u
mdlspr_stun=spr_kpapy_stun
mdlspr_victory=spr_kpapy_victory
mdlspr_defeat=spr_kpapy_defeat
mdlspr_down_look=spr_kpapy_lookd
char="Papyrus"
kartwidth=6
kartheight=13+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
