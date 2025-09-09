//Variables Settings
event_inherited();
kart_maxspd=6.9;
kart_accel=0.25
kart_turn=4.75
if(global.gamemode="Campaign"||global.gamemode="Campaign Rally"){
	if(torm){
		alarm_set(6,15);
		torm = false;
	}
	if(global.char1_obj == object_index){
		kart_maxspd *=player_speed_multiplier*campaign_speed_upgrade*(1+campaign_undyne_waterpump+campaign_nitrous_w+campaign_tor_turbo+campaign_engine_s);
		kart_accel*=(1+campaign_transm_s+campaign_hydrolics_w)
		kart_turn*=(1+campaign_tires_s+campaign_aero_w+campaign_tires_r)
	}else{
		kart_maxspd *=enemy_speed_multiplier;
	}
}
final_sprite=spr_kfrisk_d
mdlspr_right=spr_kfrisk_r
mdlspr_left=spr_kfrisk_l
mdlspr_down=spr_kfrisk_d
mdlspr_up=spr_kfrisk_u
mdlspr_stun=spr_kfrisk_stun
mdlspr_victory=spr_kfrisk_victory
mdlspr_defeat=spr_kfrisk_defeat
mdlspr_down_look=spr_kfrisk_lookd
char="Frisk"
kartwidth=4.5
kartheight=14+z
kartbottom=0+z
scr_kartsettings_create()

action_set_alarm(1, 0);
