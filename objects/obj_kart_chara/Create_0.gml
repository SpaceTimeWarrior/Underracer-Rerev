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
final_sprite=spr_kchara_d
mdlspr_right=spr_kchara_r
mdlspr_left=spr_kchara_l
mdlspr_down=spr_kchara_d
mdlspr_up=spr_kchara_u
mdlspr_stun=spr_kchara_stun
mdlspr_victory=spr_kchara_victory
mdlspr_defeat=spr_kchara_defeat
mdlspr_down_look=spr_kchara_lookd
char="Chara"
kartwidth=5
kartheight=10+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
