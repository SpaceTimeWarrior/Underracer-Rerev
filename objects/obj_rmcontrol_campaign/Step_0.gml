if global.racewon=true and can_playsong=true{can_playsong=false}

sound_volume(global.lvlsong,global.musicvolume)

if !gamepad_exists(1){global.controlinput=0}
if gamepad_exists(1){global.controlinput=1}
if(global.gamemode !="Rally"){
	if(characterval == 0){
		if global.gamemode="Campaign"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}
		if global.gamemode="Campaign Rally"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}
	
	}else if(characterval == 1 &&asriel_unlk){
		if global.gamemode="Campaign"{global.char1="Asriel" global.char1_obj=obj_kart_asriel_c}
		if global.gamemode="Campaign Rally"{global.char1="Asriel" global.char1_obj=obj_kart_asriel_c}
	}else{
		if global.gamemode="Campaign"{global.char1="Flowey" global.char1_obj=obj_kart_flowey_c}
		if global.gamemode="Campaign Rally"{global.char1="Flowey" global.char1_obj=obj_kart_flowey_c}
	
	}

	if global.racewon=true and global.gamemode="Campaign Rally"{global.gamemode="Campaign"}

}