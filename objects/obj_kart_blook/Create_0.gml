//Variables Settings
event_inherited();
kart_maxspd=6.9
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.25
kart_turn=4.75
final_sprite=spr_kblook_d
mdlspr_right=spr_kblook_r
mdlspr_left=spr_kblook_l
mdlspr_down=spr_kblook_d
mdlspr_up=spr_kblook_u
mdlspr_stun=spr_kblook_stun
mdlspr_victory=spr_kblook_victory
mdlspr_defeat=spr_kblook_defeat
mdlspr_down_look=spr_kblook_lookd
char="Napstablook"
kartwidth=5
kartheight=10+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
