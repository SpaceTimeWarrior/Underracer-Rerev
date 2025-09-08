function scr_save_data() {
	//Save Game Stats
	try{
	ini_open("Save.determination")
		ini_write_real("Campaign","Gold",global.gold);
		ini_write_string("Main","start",global.startroom);
		var tc;
		switch(global.cmpn_room){
			case rm_sandbox_ruins1:
			tc = "cmpn-ruins";
			break;
			case rm_sandbox_snowdin1:
			tc = "cmpn-snowdin";
			break;
			case rm_cmpn_hacked:
			tc = "cmpn-hkd";
			break;
			default:
			tc = rm_error;
		}
		ini_write_string("Campaign","Room",tc);
		ini_write_real("Campaign","times",global.cmpn_times);// How many times campaign was completed
		ini_write_real("Campaign","flowey_intro",global.cmpn_floweyintro); 
		ini_write_real("Campaign","froggit",global.battle_froggitduo);  
		ini_write_real("Campaign","vegeduo",global.battle_vegeduo); 
		ini_write_real("Campaign","Froglegs_and_carrots",global.battle_vegefrog);  
		ini_write_real("Campaign","ruins_mobs",global.battle_ruinsmobs);
		ini_write_real("Main","FSouls",global.achieve_floweysouls);  
		ini_write_real("Main","fall into the machine",global.achieve_corefall);  
		ini_write_real("Main","736563726574636F646577616C6C",global.achieve_secretcodewall);
		ini_write_real("Main","special_attack_sans_k9",global.achieve_papyblaster);
		ini_write_real("Main","Hyper_goner",global.unlock_asriel);  
		ini_write_real("Main","The_man_who_speaks_in_hands",global.unlock_gaster); 
		ini_write_real("Main","blueberry",global.unlock_us_sans);  
		ini_write_real("Main","papyrus?",global.unlock_uf_papy); 
		ini_write_real("Main","ANOYING_DOG",global.unlock_dog);  
		ini_write_real("Main","BUTTS_PIE",global.unlock_toriel); 
		ini_write_real("Main","...",global.unlock_blook);  
		ini_write_real("Main","storyswap chara",global.unlock_ss_chara); 
		ini_write_real("Main","rend",global.renderdistance);  
		ini_write_real("Main","music",global.musicvolume);  
		ini_write_real("Main","inp",global.controlinput);  
		ini_write_real("Main","light",global.lighting);  
		ini_write_real("Main","light_q",global.lighting_quantity); 
		ini_write_real("Campaign","x",global.cmpn_posx);  
		ini_write_real("Campaign","y",global.cmpn_posy); 
		ini_write_real("Campaign","dir",global.cmpn_dir); 
		ini_write_real("Campaign","snow_cut_final",global.snowdincutscenefinal); 
		ini_write_real("Campaign","sr",global.battle_snowdrakerally); 
		ini_write_real("Campaign","icecap",global.battle_icecapduo);
		ini_write_real("Campaign","snow_mobs_here",global.battle_snowmobs);
		ini_write_real("Campaign","fankid",global.battle_mk);
		ini_write_real("Campaign","THE_GREAT_PAPYRUS",global.unlock_papybossrace);
		ini_write_real("Campaign","papy_intro",global.papybridgecutscene);
		ini_write_real("Campaign","spu",campaign_speed_upgrade);
		ini_write_real("Campaign","engine_up_snow",campaign_engine_s);
		ini_write_real("Campaign","transmission_up_snow",campaign_transm_s);
		ini_write_real("Campaign","tire_up_snow",campaign_tires_s);
		ini_write_real("Campaign","tor_turbo",campaign_tor_turbo);
		ini_write_real("Campaign","papy_boneshakle",campaign_papy_bone);
		ini_write_real("Campaign","nitrus_water",campaign_nitrous_w);
		ini_write_real("Campaign","aero_water",campaign_aero_w);
		ini_write_real("Campaign","hydro_water",campaign_hydrolics_w);
		ini_write_real("Campaign","undyne_water",campaign_undyne_waterpump);
		ini_write_real("Campaign","Doggo_battle",battle_dog);
		ini_write_real("Campaign","spider tires",campaign_tires_r);
		ini_write_real("Campaign","snowdin unlock",sndnunlk);
		ini_close();
	}catch(_e){
		file=file_text_open_write("save.ini")
		file_text_write_string(file,string(global.gold))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.startroom))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_room))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_times))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_floweyintro))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_froggitduo))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_vegeduo))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_vegefrog))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_ruinsmobs))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.achieve_floweysouls))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.achieve_corefall))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.achieve_secretcodewall))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.achieve_papyblaster))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_asriel))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_gaster))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_us_sans))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_uf_papy))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_dog))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_toriel))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_blook))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_ss_chara))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.renderdistance))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.musicvolume))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.controlinput))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.lighting))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.lighting_quantity))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_posx))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_posy))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.cmpn_dir))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.snowdincutscenefinal))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_snowdrakerally))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_icecapduo))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_snowmobs))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.battle_mk))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.unlock_papybossrace))
		file_text_writeln(file) 
		file_text_write_string(file,string(global.papybridgecutscene))
		file_text_close(file)
	}


	//Save Control Configs
	file=file_text_open_write("controls.ini")
	//Controls (Keyboard)
	file_text_write_string(file,string(global.control_pl1move_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1break_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1right_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1left_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1use_kb))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl1special_kb))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl1cam_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2move_kb))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl2break_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2right_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2left_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2use_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1special_kb))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2cam_kb))
	file_text_writeln(file) 
	//Controls (Joystick)
	file_text_write_string(file,string(global.control_pl1move_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1break_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1right_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1left_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1use_jk))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl1special_jk))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl1cam_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2move_jk))
	file_text_writeln(file)
	file_text_write_string(file,string(global.control_pl2break_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2right_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2left_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2use_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2special_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2cam_jk))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1cam_RS))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2cam_RS))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl1cam_jkRS))
	file_text_writeln(file) 
	file_text_write_string(file,string(global.control_pl2cam_jkRS))
	file_text_close(file)



}
