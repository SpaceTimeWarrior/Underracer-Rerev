//Variables Settings
event_inherited();
kart_maxspd=6.9;
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.2125
kart_turn=5.25
final_sprite=spr_kmtt_d
mdlspr_right=spr_kmtt_r
mdlspr_left=spr_kmtt_l
mdlspr_down=spr_kmtt_d
mdlspr_up=spr_kmtt_u
mdlspr_stun=spr_kmtt_stun
mdlspr_victory=spr_kmtt_victory
mdlspr_defeat=spr_kmtt_defeat
mdlspr_down_look=spr_kmtt_lookd
char="Mettaton"
kartwidth=7
kartheight=15+z
kartbottom=0+z
ability_sndplay=true
scr_kartsettings_create()

action_set_alarm(1, 0);
