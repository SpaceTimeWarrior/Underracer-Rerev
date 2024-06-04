if(setup == false && initialized == true){
	kart_maxspd=custom_karts[kart_id].kart_maxspd;
	kart_accel=custom_karts[kart_id].kart_accel;
	kart_turn=custom_karts[kart_id].kart_turn;
	mdlspr_right=custom_karts[kart_id].mdlspr_right;
	mdlspr_left=custom_karts[kart_id].mdlspr_left;
	mdlspr_down=custom_karts[kart_id].mdlspr_down;
	mdlspr_up=custom_karts[kart_id].mdlspr_up;
	mdlspr_stun=custom_karts[kart_id].mdlspr_stun;
	mdlspr_victory=custom_karts[kart_id].mdlspr_victory;
	mdlspr_defeat=custom_karts[kart_id].mdlspr_defeat;
	mdlspr_down_look=custom_karts[kart_id].mdlspr_down_look;
	final_sprite=custom_karts[kart_id].mdlspr_down;
	char=custom_karts[kart_id].char;
	kartwidth=custom_karts[kart_id].kart_width;
	kartheight=custom_karts[kart_id].kart_height+z
	kartbottom=custom_karts[kart_id].kart_bottom+z
	kartab = custom_karts[kart_id].kart_ab;
	if(kartab == "Fire Circle"){
		firespin=custom_karts[kart_id].kart_ab0;
		fireatk=custom_karts[kart_id].kart_ab1;
		firespin2=custom_karts[kart_id].kart_ab1;
		fireatk2=custom_karts[kart_id].kart_ab1;
	}
	//scr_kartsettings_create()
	//scr_kartalarm_0()
	
	setup = true;
}
