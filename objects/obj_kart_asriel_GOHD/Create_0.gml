//Variables Settings
event_inherited();
kart_maxspd=7.10
if(global.char1_obj == object_index){
	kart_maxspd *=player_speed_multiplier
	//show_message("player")
}else{
	kart_maxspd *=enemy_speed_multiplier
	//show_message("enemy")
}
kart_accel=0.4
kart_turn=6
final_sprite=spr_kasriel2_d
mdlspr_right=spr_kasriel2_r
mdlspr_left=spr_kasriel2_l
mdlspr_down=spr_kasriel2_d
mdlspr_up=spr_kasriel2_u
mdlspr_stun=spr_kasriel2_stun
mdlspr_victory=spr_kasriel2_victory
mdlspr_defeat=spr_kasriel2_defeat
mdlspr_down_look=spr_kasriel2_lookd
char="Asriel God of Hyperdeath"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()
firespin=0
fireatk=true
firespin2=360
fireatk2=true

action_set_alarm(1, 0);
