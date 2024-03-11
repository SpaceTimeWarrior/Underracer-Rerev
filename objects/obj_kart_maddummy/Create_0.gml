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
final_sprite=spr_kmad_d
mdlspr_right=spr_kmad_r
mdlspr_left=spr_kmad_l
mdlspr_down=spr_kmad_d
mdlspr_up=spr_kmad_u
mdlspr_stun=spr_kmad_stun
mdlspr_victory=spr_kmad_victory
mdlspr_defeat=spr_kmad_defeat
mdlspr_down_look=spr_kmad_lookd
char="Mad Dummy"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
