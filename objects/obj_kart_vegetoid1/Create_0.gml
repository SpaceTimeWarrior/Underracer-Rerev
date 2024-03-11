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
final_sprite=spr_vegetoid_d
mdlspr_right=spr_vegetoid_r
mdlspr_left=spr_vegetoid_l
mdlspr_down=spr_vegetoid_d
mdlspr_up=spr_vegetoid_u
mdlspr_stun=spr_vegetoid_stun
mdlspr_victory=spr_vegetoid_victory
mdlspr_defeat=spr_vegetoid_defeat
mdlspr_down_look=spr_vegetoid_lookd
char="Vegetoid 1"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
