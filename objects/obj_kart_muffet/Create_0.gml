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
final_sprite=spr_kmuffet_d
mdlspr_right=spr_kmuffet_r
mdlspr_left=spr_kmuffet_l
mdlspr_down=spr_kmuffet_d
mdlspr_up=spr_kmuffet_u
mdlspr_stun=spr_kmuffet_stun
mdlspr_victory=spr_kmuffet_victory
mdlspr_defeat=spr_kmuffet_defeat
mdlspr_down_look=spr_kmuffet_lookd
char="Muffet"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
