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
kart_accel=0.25
kart_turn=4.25
final_sprite=spr_kundybike_d
mdlspr_right=spr_kundybike_r
mdlspr_left=spr_kundybike_l
mdlspr_down=spr_kundybike_d
mdlspr_up=spr_kundybike_u
mdlspr_stun=spr_kundybike_stun
mdlspr_victory=spr_kundybike_victory
mdlspr_defeat=spr_kundybike_defeat
mdlspr_down_look=spr_kundybike_lookd
char="Undyne"
kartwidth=7
kartheight=14+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
