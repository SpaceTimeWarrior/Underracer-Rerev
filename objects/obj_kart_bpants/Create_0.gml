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
final_sprite=spr_kbpants_d
mdlspr_right=spr_kbpants_r
mdlspr_left=spr_kbpants_l
mdlspr_down=spr_kbpants_d
mdlspr_up=spr_kbpants_u
mdlspr_stun=spr_kbpants_stun
mdlspr_victory=spr_kbpants_victory
mdlspr_defeat=spr_kbpants_defeat
mdlspr_down_look=spr_kbpants_lookd
char="Burgerpants"
kartwidth=5
kartheight=13.5+z
kartbottom=0+z
ability_sndplay=true
scr_kartsettings_create()

action_set_alarm(1, 0);
