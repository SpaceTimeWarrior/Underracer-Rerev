function scr_load_data() {
	globalvar hardmode;
	hardmode = false;
	globalvar campaign_tor_turbo;//speed
	globalvar campaign_engine_s;//speed
	globalvar campaign_transm_s;//accel
	globalvar campaign_tires_s;//turn
	globalvar campaign_tires_r;//turm
	globalvar campaign_papy_bone;//special boost
	globalvar campaign_nitrous_w;//speed
	globalvar campaign_aero_w;//turn
	globalvar campaign_hydrolics_w;//acel
	globalvar campaign_undyne_waterpump;//speed
	globalvar battle_dog;
	battle_dog= 0;
	campaign_tires_r = 0;
	campaign_engine_s = 0; campaign_transm_s = 0; campaign_tires_s = 0;campaign_tor_turbo = 0;
	campaign_papy_bone = 0; campaign_nitrous_w = 0; campaign_aero_w = 0; campaign_hydrolics_w = 0;
	campaign_undyne_waterpump = 0;
	globalvar language;//gets your regional language
	language = os_get_language();
	if(language == ""){
		language = "en"	
	}
	var reg = os_get_region();
	if(reg == ""){
		reg = "US";	
	}
	language = language + "_" + reg;
	scr_load_karts();
	//Campaign
	if(file_exists("Save.determination")){
		ini_open("Save.determination")//load new filetype
		global.gold=ini_read_real("Campaign","Gold",0);
		global.startroom=ini_read_string("Main","start","");
		var tc = ini_read_string("Campaign","Room","");
		switch(tc){
			case "cmpn-ruins":
			global.cmpn_room = rm_sandbox_ruins1;
			break;
			case "cmpn-snowdin":
			global.cmpn_room = rm_sandbox_snowdin1;
			break;
			case "cmpn-hkd":
			global.cmpn_room = rm_cmpn_hacked;
			break;
			default:
			global.cmpn_room = rm_error;
		}
		global.cmpn_times=ini_read_real("Campaign","times",0);// How many times campaign was completed
		global.cmpn_floweyintro=ini_read_real("Campaign","flowey_intro",0); 
		if(global.cmpn_floweyintro == false){
			global.cmpn_room = rm_cmpgn_tutorial1
		}
		global.battle_froggitduo=ini_read_real("Campaign","froggit",0);  
		global.battle_vegeduo=ini_read_real("Campaign","vegeduo",0); 
		global.battle_vegefrog=ini_read_real("Campaign","Froglegs_and_carrots",0);  
		global.battle_ruinsmobs=ini_read_real("Campaign","ruins_mobs",0);
		global.achieve_floweysouls=ini_read_real("Main","FSouls",0);  
		global.achieve_corefall=ini_read_real("Main","fall into the machine",0);  
		global.achieve_secretcodewall=ini_read_real("Main","736563726574636F646577616C6C",0);
		global.achieve_papyblaster=ini_read_real("Main","special_attack_sans_k9",0);
		global.unlock_asriel=ini_read_real("Main","Hyper_goner",0);  
		global.unlock_gaster=ini_read_real("Main","The_man_who_speaks_in_hands",0); 
		global.unlock_us_sans=ini_read_real("Main","blueberry",0);  
		global.unlock_uf_papy=ini_read_real("Main","papyrus?",0); 
		global.unlock_dog=ini_read_real("Main","ANOYING_DOG",0);  
		global.unlock_toriel=ini_read_real("Main","BUTTS_PIE",0); 
		global.unlock_blook=ini_read_real("Main","...",0);  
		global.unlock_ss_chara=ini_read_real("Main","storyswap chara",0); 
		global.renderdistance=ini_read_real("Main","rend",0);  
		global.musicvolume=ini_read_real("Main","music",0);  
		global.controlinput=ini_read_real("Main","inp",0);  
		global.lighting=ini_read_real("Main","light",0);  
		global.lighting_quantity=ini_read_real("Main","light_q",0); 
		global.cmpn_posx=ini_read_real("Campaign","x",0);  
		global.cmpn_posy=ini_read_real("Campaign","y",0); 
		global.cmpn_dir=ini_read_real("Campaign","dir",0); 
		global.snowdincutscenefinal=ini_read_real("Campaign","snow_cut_final",0); 
		global.battle_snowdrakerally=ini_read_real("Campaign","sr",0); 
		global.battle_icecapduo=ini_read_real("Campaign","icecap",0);
		global.battle_snowmobs=ini_read_real("Campaign","snow_mobs_here",0);
		global.battle_mk=ini_read_real("Campaign","fankid",0);
		battle_dog = ini_read_real("Campaign","Doggo_battle",0);
		global.unlock_papybossrace=ini_read_real("Campaign","THE_GREAT_PAPYRUS",0);
		global.papybridgecutscene=ini_read_real("Campaign","papy_intro",0);
		campaign_speed_upgrade = ini_read_real("Campaign","spu",1);
		campaign_engine_s =	ini_read_real("Campaign","engine_up_snow",0);
		campaign_transm_s =	ini_read_real("Campaign","transmission_up_snow",0);
		campaign_tires_s = ini_read_real("Campaign","tire_up_snow",0);
		campaign_tor_turbo =ini_read_real("Campaign","tor_turbo",0);
		campaign_papy_bone = ini_read_real("Campaign","papy_boneshakle",0);
		campaign_nitrous_w = ini_read_real("Campaign","nitrus_water",0);
		campaign_aero_w = ini_read_real("Campaign","aero_water",0);
		campaign_hydrolics_w = ini_read_real("Campaign","hydro_water",0);
		campaign_undyne_waterpump = ini_read_real("Campaign","undyne_water",0);
		campaign_tires_r = ini_read_real("Campaign","spider tires",0);
		sndnunlk = ini_read_real("Campaign","snowdin unlock",false);
		
		ini_close();
	}else if file_exists("save.ini"){
	file=file_text_open_read("save.ini")//load old filetype
	global.gold=file_text_read_real(file)  
	file_text_readln(file) 
	global.startroom=file_text_read_string(file)// Room set when game starts
	file_text_readln(file) 
	var tc =file_text_read_real(file)// Current room in campaign
	file_text_readln(file) 
	switch(tc){//this is due to a weird glitch with conversion from gms1
		case 0:
		global.cmpn_room = rm_globalstart;
		break;
		case 1:
		global.cmpn_room = rm_globalstart_escbutton;
		break;
		case 2:
		global.cmpn_room = rm_spoilerwarning;
		break;
		case 3:
		global.cmpn_room = rm_achievements;
		break;
		case 4:
		global.cmpn_room = rm_options;
		break;
		case 5:
		global.cmpn_room = rm_options_controlbinds;
		break;
		case 6:
		global.cmpn_room = rm_intro;
		break;
		case 7:
		global.cmpn_room = rm_title;
		break;
		case 8:
		global.cmpn_room = rm_mainmenu;
		break;
		case 9:
		global.cmpn_room = rm_playoptions_freerace;
		break;
		case 10:
		global.cmpn_room = rm_playoptions_vsboss;
		break;
		case 11:
		global.cmpn_room = rm_selection_menu_ut1;
		break;
		case 12:
		global.cmpn_room = rm_selection_menu_ut2;
		break;
		case 13:
		global.cmpn_room = rm_selection_menu_au1;
		break;
		case 14:
		global.cmpn_room = rm_gotolvl_freerace;
		break;
		case 15:
		global.cmpn_room = rm_lvl_ruins;
		break;
		case 16:
		global.cmpn_room = rm_lvl_base;
		break;
		case 17:
		global.cmpn_room = rm_lvl_hotlands;
		break;
		case 18:
		global.cmpn_room = rm_lvl_snowdin_forest;
		break;
		case 19:
		global.cmpn_room = rm_lvl_christmas;
		break;
		case 20:
		global.cmpn_room = rm_lvl_waterfall;
		break;
		case 21:
		global.cmpn_room = rm_lvl_core;
		break;
		case 22:
		global.cmpn_room = rm_lvl_boss_blook;
		break;
		case 23:
		global.cmpn_room = rm_lvl_boss_toriel;
		break;
		case 24:
		global.cmpn_room = rm_lvl_boss_papyrus;
		break;
		case 25:
		global.cmpn_room = rm_gotolvl_campaign;
		break;
		case 26:
		global.cmpn_room = rm_cmpgn_tutorial1;
		break;
		case 27:
		global.cmpn_room = rm_cmpgn_tutorial2;
		break;
		case 28:
		global.cmpn_room = rm_cmpn_boss_flowey;
		break;
		case 29:
		global.cmpn_room = rm_cmpgn_floweybattle;
		break;
		case 30:
		global.cmpn_room = rm_cmpn_floweyjudgement;
		break;
		case 31:
		global.cmpn_room = rm_cmpn_hacking;
		break;
		case 32:
		global.cmpn_room = rm_cmpn_hacked;
		break;
		case 33:
		global.cmpn_room = rm_battle_froggitduo;
		break;
		case 34:
		global.cmpn_room = rm_battle_vegeduo;
		break;
		case 35:
		global.cmpn_room = rm_battle_vegefrog;
		break;
		case 36:
		global.cmpn_room = rm_battle_ruinsmobs;
		break;
		case 37:
		global.cmpn_room = rm_battle_snowdrakerally;
		break;
		case 38:
		global.cmpn_room = rm_battle_icecapduo;
		break;
		case 39:
		global.cmpn_room = rm_battle_snowmobs;
		break;
		case 40:
		global.cmpn_room = rm_battle_mk;
		break;
		case 41:
		global.cmpn_room = rm_battle_commons;
		break;
		case 42:
		global.cmpn_room = rm_cmpn_boss_blook;
		break;
		case 43:
		global.cmpn_room = rm_cmpn_preboss_toriel;
		break;
		case 44:
		global.cmpn_room = rm_cmpn_boss_toriel;
		break;
		case 45:
		global.cmpn_room = rm_cmpn_boss_papyrus;
		break;
		case 46:
		global.cmpn_room = rm_boss_dogidoggo;
		break;
		case 47:
		global.cmpn_room = rm_cmpn_ruins_exit;
		break;
		case 48:
		global.cmpn_room = rm_cmpn_postruinsfloweydlg;
		break;
		case 49:
		global.cmpn_room = rm_cmpn_tosnowdin;
		break;
		case 50:
		global.cmpn_room = rm_cmpn_demoendfade;
		break;
		case 51:
		global.cmpn_room = rm_cmpn_demoend;
		break;
		case 52:
		global.cmpn_room = rm_sandbox_ruins1;
		break;
		case 53:
		global.cmpn_room = rm_sandbox_snowdin1;
		break;
		case 54:
		global.cmpn_room = rm_error;
		break;
		default:
		 global.cmpn_room = rm_error;
	}
	global.cmpn_times=file_text_read_real(file)// How many times campaign was completed
	file_text_readln(file) 
	global.cmpn_floweyintro=file_text_read_real(file)  
	file_text_readln(file) 
	global.battle_froggitduo=file_text_read_real(file)  
	file_text_readln(file) 
	global.battle_vegeduo=file_text_read_real(file) 
	file_text_readln(file)  
	global.battle_vegefrog=file_text_read_real(file)  
	file_text_readln(file)  
	global.battle_ruinsmobs=file_text_read_real(file)
	file_text_readln(file)  
	global.achieve_floweysouls=file_text_read_real(file)  
	file_text_readln(file) 
	global.achieve_corefall=file_text_read_real(file)  
	file_text_readln(file) 
	global.achieve_secretcodewall=file_text_read_real(file)
	file_text_readln(file) 
	global.achieve_papyblaster=file_text_read_real(file)
	file_text_readln(file) 
	global.unlock_asriel=file_text_read_real(file)  
	file_text_readln(file) 
	global.unlock_gaster=file_text_read_real(file)  
	file_text_readln(file) 
	global.unlock_us_sans=file_text_read_real(file)  
	file_text_readln(file)
	global.unlock_uf_papy=file_text_read_real(file) 
	file_text_readln(file) 
	global.unlock_dog=file_text_read_real(file)  
	file_text_readln(file) 
	global.unlock_toriel=file_text_read_real(file) 
	file_text_readln(file) 
	global.unlock_blook=file_text_read_real(file)  
	file_text_readln(file) 
	global.unlock_ss_chara=file_text_read_real(file) 
	file_text_readln(file) 
	global.renderdistance=file_text_read_real(file)  
	file_text_readln(file) 
	global.musicvolume=file_text_read_real(file)  
	file_text_readln(file) 
	global.controlinput=file_text_read_real(file)  
	file_text_readln(file) 
	global.lighting=file_text_read_real(file)  
	file_text_readln(file) 
	global.lighting_quantity=file_text_read_real(file)  
	file_text_readln(file) 
	global.cmpn_posx=file_text_read_real(file)  
	file_text_readln(file) 
	global.cmpn_posy=file_text_read_real(file) 
	file_text_readln(file) 
	global.cmpn_dir=file_text_read_real(file) 
	file_text_readln(file) 
	global.snowdincutscenefinal=file_text_read_real(file) 
	file_text_readln(file) 
	global.battle_snowdrakerally=file_text_read_real(file) 
	file_text_readln(file) 
	global.battle_icecapduo=file_text_read_real(file) 
	file_text_readln(file) 
	global.battle_snowmobs=file_text_read_real(file) 
	file_text_readln(file) 
	global.battle_mk=file_text_read_real(file) 
	file_text_readln(file) 
	global.unlock_papybossrace=file_text_read_real(file) 
	file_text_readln(file) 
	global.papybridgecutscene=file_text_read_real(file) 
	file_text_close(file)
	}
	else
	{
	global.gold=0
	global.startroom="Spoiler"
	global.cmpn_room=rm_cmpgn_tutorial1
	global.cmpn_times=1
	global.cmpn_floweyintro=0
	global.battle_froggitduo=0
	global.battle_vegeduo=0
	global.battle_vegefrog=0
	global.battle_ruinsmobs=0
	global.achieve_floweysouls=0
	global.achieve_corefall=0
	global.achieve_secretcodewall=0
	global.achieve_papyblaster=0
	global.unlock_asriel=false
	global.unlock_gaster=false
	global.unlock_us_sans=false
	global.unlock_uf_papy=false
	global.unlock_dog=false
	global.unlock_toriel=false
	global.unlock_blook=false
	global.unlock_ss_chara=false
	global.renderdistance=640
	global.musicvolume=1
	global.controlinput=0
	global.lighting=false
	global.lighting_quantity=64
	global.cmpn_posx=112
	global.cmpn_posy=272
	global.cmpn_dir=0
	global.snowdincutscenefinal=false
	global.battle_snowdrakerally=false
	global.battle_icecapduo=false
	global.battle_snowmobs=false
	global.battle_mk=false
	global.unlock_papybossrace=false
	global.papybridgecutscene=false
	}

	//Controls
	if file_exists("controls.ini")
	{
	file=file_text_open_read("controls.ini")
	//Player 1 Keyboard
	global.control_pl1move_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1break_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1right_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1left_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1use_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1special_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1cam_kb=file_text_read_real(file) 
	file_text_readln(file) 
	//Player 2 Keyboard
	global.control_pl2move_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2break_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2right_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2left_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2use_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2special_kb=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2cam_kb=file_text_read_real(file)  
	file_text_readln(file) 
	//Player 1 Joystick
	global.control_pl1move_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1break_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1right_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1left_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1use_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1special_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl1cam_jk=file_text_read_real(file) 
	file_text_readln(file) 
	//Player 2 Joystick
	global.control_pl2move_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2break_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2right_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2left_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2use_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2special_jk=file_text_read_real(file)  
	file_text_readln(file) 
	global.control_pl2cam_jk=file_text_read_real(file)  
	file_text_close(file)
	}
	else
	{
	//Global controls for all players (Keyboard)
	global.control_pl1move_kb=ord("W")
	global.control_pl1break_kb=ord("S")
	global.control_pl1right_kb=ord("D")
	global.control_pl1left_kb=ord("A")
	global.control_pl1use_kb=ord("Z")
	global.control_pl1special_kb=ord("X")
	global.control_pl1cam_kb=ord("Q")

	global.control_pl2move_kb=ord("I")
	global.control_pl2break_kb=ord("K")
	global.control_pl2right_kb=ord("L")
	global.control_pl2left_kb=ord("J")
	global.control_pl2use_kb=ord("N")
	global.control_pl2special_kb=ord("M")
	global.control_pl2cam_kb=ord("U")

	//Global controls for all players (Joystick)
	global.control_pl1move_jk=15
	global.control_pl1break_jk=16
	global.control_pl1right_jk=12
	global.control_pl1left_jk=11
	global.control_pl1use_jk=1
	global.control_pl1special_jk=2
	global.control_pl1cam_jk=4

	global.control_pl2move_jk=15
	global.control_pl2break_jk=16
	global.control_pl2right_jk=12
	global.control_pl2left_jk=11
	global.control_pl2use_jk=1
	global.control_pl2special_jk=2
	global.control_pl2cam_jk=4
	}



}
function scr_load_fonts() {
	//global.fnt_determination=font_add_sprite(spr_fnt_determination,ord("G"),true,2)
	//global.fnt_hacker=font_add_sprite(spr_fnt_hacker,ord("G"),true,2)
		globalvar custom_fonts;
		custom_fonts = array_create(1);
		
}
function scr_load_karts(){
	globalvar enemy_speed_multiplier;
	globalvar player_speed_multiplier;
	enemy_speed_multiplier = 1;
	player_speed_multiplier = 1;
	try{
	if(variable_global_exists("cspr")){
		while(array_length(custom_spr)>0){
			var cc = array_pop(custom_spr)
			if cc !=-1&&cc>777{
				sprite_delete(cc)
			}
		}
	}
	}catch(e){
		show_debug_message(string(e))
	}
	globalvar custom_karts;
	var ckart = "ckart/"
	ini_open(ckart+"custom_karts.ini");
	var kart_number = ini_read_real("Main","karts",1);
	ini_write_real("Main","karts",kart_number);
	custom_karts = array_create(1)
	for(var iiii = 0; iiii<kart_number;iiii++){
		try{
		show_debug_message(string(iiii+1))
		custom_karts[iiii] = new karts()
		custom_karts[iiii].char = ini_read_string("Main","Name_"+string(iiii),"Test_kart"+string(iiii));
		var kname = custom_karts[iiii].char
		ini_write_string("Main","Name_"+string(iiii),kname);
		custom_karts[iiii].kart_maxspd = ini_read_real(kname,"spd",1);
		ini_write_real(kname,"spd",custom_karts[iiii].kart_maxspd);
		custom_karts[iiii].kart_accel=ini_read_real(kname,"accel",custom_karts[iiii].kart_accel);
		ini_write_real(kname,"accel",custom_karts[iiii].kart_accel);
		custom_karts[iiii].kart_turn=ini_read_real(kname,"turn",custom_karts[iiii].kart_turn);
		ini_write_real(kname,"turn",custom_karts[iiii].kart_turn);
		var sprs = ini_read_string(kname,"right","./"+ckart+"friskr"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"rightf",1);
		ini_write_string(kname,"right",sprs);
		ini_write_real(kname,"rightf",sprf);
		custom_karts[iiii].mdlspr_right=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_right)
		if(custom_karts[iiii].mdlspr_right==-1){
			custom_karts[iiii].mdlspr_right=copy_sprite_to_file(spr_kfrisk_r,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_right,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"left","./"+ckart+"friskl"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"leftf",1);
		ini_write_string(kname,"left",sprs);
		ini_write_real(kname,"leftf",sprf);
		custom_karts[iiii].mdlspr_left=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_left)
		if(custom_karts[iiii].mdlspr_left==-1){
			custom_karts[iiii].mdlspr_left=copy_sprite_to_file(spr_kfrisk_l,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_left,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"down","./"+ckart+"friskd"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"downf",1);
		ini_write_string(kname,"down",sprs);
		ini_write_real(kname,"downf",sprf);
		custom_karts[iiii].mdlspr_down=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_down)
		if(custom_karts[iiii].mdlspr_down==-1){
			custom_karts[iiii].mdlspr_down=copy_sprite_to_file(spr_kfrisk_d,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_down,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"up","./"+ckart+"frisku"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"upf",1);
		ini_write_string(kname,"up",sprs);
		ini_write_real(kname,"upf",sprf);
		custom_karts[iiii].mdlspr_up=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_up)
		if(custom_karts[iiii].mdlspr_up==-1){
			custom_karts[iiii].mdlspr_up=copy_sprite_to_file(spr_kfrisk_u,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_up,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"stun","./"+ckart+"frisks"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"stunf",4);
		ini_write_string(kname,"stun",sprs);
		ini_write_real(kname,"stunf",sprf);
		custom_karts[iiii].mdlspr_stun=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_stun)
		if(custom_karts[iiii].mdlspr_stun==-1){
			custom_karts[iiii].mdlspr_stun=copy_sprite_to_file(spr_kfrisk_stun,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_stun,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"victory","./"+ckart+"friskv"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"victoryf",5);
		ini_write_string(kname,"victory",sprs);
		ini_write_real(kname,"victoryf",sprf);
		custom_karts[iiii].mdlspr_victory=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_victory)
		if(custom_karts[iiii].mdlspr_victory==-1){
			custom_karts[iiii].mdlspr_victory=copy_sprite_to_file(spr_kfrisk_victory,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_victory,true, 0,0, 0,0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"defeat","./"+ckart+"friskdef"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"defeatf",12);
		ini_write_string(kname,"defeat",sprs);
		ini_write_real(kname,"defeatf",sprf);
		custom_karts[iiii].mdlspr_defeat=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_defeat)
		if(custom_karts[iiii].mdlspr_defeat==-1){
			custom_karts[iiii].mdlspr_defeat=copy_sprite_to_file(spr_kfrisk_defeat,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_defeat,true, 0,0, 0, 0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"look","./"+ckart+"frisklkd"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"lookf",1);
		ini_write_string(kname,"look",sprs);
		ini_write_real(kname,"lookf",sprf);
		custom_karts[iiii].mdlspr_down_look=sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].mdlspr_down_look)
		if(custom_karts[iiii].mdlspr_down_look==-1){
			custom_karts[iiii].mdlspr_down_look=copy_sprite_to_file(spr_kfrisk_lookd,sprs,false)	
		}
		sprite_collision_mask(custom_karts[iiii].mdlspr_down_look,true, 0,0, 0,0, 0, bboxkind_precise, 0)
		var sprs = ini_read_string(kname,"select","./"+ckart+"asrielsel"+string(iiii)+".png");
		var sprf = ini_read_real(kname,"selectf",2);
		ini_write_string(kname,"select",sprs);
		ini_write_real(kname,"selectf",sprf);
		custom_karts[iiii].selector = sprite_add(sprs,sprf,false,false,0,0);
		array_push(custom_spr,custom_karts[iiii].selector)
		if(custom_karts[iiii].selector==-1){
			custom_karts[iiii].selector=copy_sprite_to_file(spr_slct_asriel,sprs,false)	
		}
		custom_karts[iiii].kart_width=ini_read_real(kname,"width",5);
		ini_write_real(kname,"width",custom_karts[iiii].kart_width);
		custom_karts[iiii].kart_height=ini_read_real(kname,"height",10);
		ini_write_real(kname,"height",custom_karts[iiii].kart_height);
		custom_karts[iiii].kart_bottom=ini_read_real(kname,"bottom",0);
		ini_write_real(kname,"bottom",custom_karts[iiii].kart_bottom);
		var fl = ini_read_string(kname,"stuns","./"+ckart+kname+"stun.ogg");
		if(file_exists(fl)){
			custom_karts[iiii].kart_stun = sound_add(fl,false,false);
		}else{
			custom_karts[iiii].kart_stun = -1
		}
		if(custom_karts[iiii].kart_stun == -1){
			file_copy("custom_kart_source\\snd_slct_asriel.ogg",fl);
			custom_karts[iiii].kart_stun = sound_add(fl,false,false);
		}
		ini_write_string(kname,"stuns",fl)
		var fl = ini_read_string(kname,"impact","./"+ckart+kname+"impact.ogg");
		if(file_exists(fl)){
			custom_karts[iiii].kart_impact = sound_add(fl,false,false);
		}else{
			custom_karts[iiii].kart_impact = -1
		}
		if(custom_karts[iiii].kart_impact == -1){
			file_copy("custom_kart_source\\snd_hit.ogg",fl);
			custom_karts[iiii].kart_impact = sound_add(fl,false,false);
		}
		ini_write_string(kname,"impact",fl)
		var fl = ini_read_string(kname,"power","./"+ckart+kname+"power.ogg");
		if(file_exists(fl)){
			custom_karts[iiii].kart_power = sound_add(fl,false,false);
		}else{
			custom_karts[iiii].kart_power = -1
		}
		if(custom_karts[iiii].kart_power == -1){
			file_copy("custom_kart_source\\power_asriel.ogg",fl);
			custom_karts[iiii].kart_power = sound_add(fl,false,false);
		}
		custom_karts[iiii].kart_ab = ini_read_string(kname,"ability_type", "Calories")
		ini_write_string(kname,"ability_type",custom_karts[iiii].kart_ab);
		custom_karts[iiii].kart_ab0 = ini_read_real(kname,"ability_arg_0",0);
		ini_write_real(kname,"ability_arg_0",custom_karts[iiii].kart_ab0);
		custom_karts[iiii].kart_ab1 = ini_read_real(kname,"ability_arg_1",false);
		ini_write_real(kname,"ability_arg_1",custom_karts[iiii].kart_ab1)
		custom_karts[iiii].kart_ab2 = ini_read_real(kname,"ability_arg_2",0);
		ini_write_real(kname,"ability_arg_2",custom_karts[iiii].kart_ab2)
		custom_karts[iiii].kart_ab3 = ini_read_real(kname,"ability_arg_3",false);
		ini_write_real(kname,"ability_arg_3",custom_karts[iiii].kart_ab3)
		ini_write_string(kname,"power",fl);
		if(custom_karts[iiii].mdlspr_right = -1){
			custom_karts[iiii].mdlspr_right = spr_kfrisk_r
		}
		if(custom_karts[iiii].mdlspr_left = -1){
			custom_karts[iiii].mdlspr_left = spr_kfrisk_l
		}
		if(custom_karts[iiii].mdlspr_down = -1){
			custom_karts[iiii].mdlspr_down = spr_kfrisk_d
		}
		if(custom_karts[iiii].mdlspr_up = -1){
			custom_karts[iiii].mdlspr_up = spr_kfrisk_u
		}
		if(custom_karts[iiii].mdlspr_stun = -1){
			custom_karts[iiii].mdlspr_stun = spr_kfrisk_stun
		}
		if(custom_karts[iiii].mdlspr_victory = -1){
			custom_karts[iiii].mdlspr_victory = spr_kfrisk_victory
		}
		if(custom_karts[iiii].mdlspr_defeat = -1){
			custom_karts[iiii].mdlspr_defeat = spr_kfrisk_defeat
		}
		if(custom_karts[iiii].mdlspr_down_look = -1){
			custom_karts[iiii].mdlspr_down_look = spr_kfrisk_lookd
		}
		if(custom_karts[iiii].selector = -1){
			custom_karts[iiii].selector = spr_slct_asriel
		}
		}catch(e){
			show_debug_message(e.message);
		}
	}
	
	ini_close();
}
function kart_sprite(sprite_down = spr_kfrisk_d,sprite_right = spr_kfrisk_r,sprite_left = spr_kfrisk_l,sprite_up = spr_kfrisk_u,sprite_stun = spr_kfrisk_stun,sprite_victory = spr_kfrisk_victory,sprite_defeat = spr_kfrisk_defeat,sprite_look = spr_kfrisk_lookd,sprite_sel = spr_slct_asriel)constructor{
	down = sprite_down;
	right = sprite_right;
	left = sprite_left;
	up = sprite_up;
	stun = sprite_stun;
	victory = sprite_victory;
	defeat = sprite_defeat;
	look = sprite_look;
	select = sprite_sel;
}
function kart_sfx(stuns = snd_flowey_laugh,powerr = snd_ohyeah,imp = snd_save)constructor{
	stun = stuns;
	powers = powerr;
	impact = imp;
}
function kart_stats(spds = 10,accels = 1,turns = 4.75,widthr = 1,heightr = 1,bottoms = 1) constructor{
	spd = spds;
	accel = accels;
	turn = turns;
	widths = widthr;
	heights = heightr;
	bottom = bottoms;
}
function kart_ability_type(type = "Calories",arg1 = 0,arg2 = true,arg3 = 0,arg4=true)constructor{
	abtype = type;
	args0 = arg1;
	args1 = arg2;
	args2 = arg3;
	args3 = arg4;
}
function karts(name = "",stat = new kart_stats(),sprite = new kart_sprite(),sfx = new kart_sfx(),abil = new kart_ability_type())constructor{
kart_maxspd=stat.spd
kart_accel=stat.accel
kart_turn=stat.turn
final_sprite=sprite.down;
mdlspr_right=sprite.right;
mdlspr_left=sprite.left;
mdlspr_down=sprite.down;
mdlspr_up=sprite.up;
mdlspr_stun=sprite.stun;
mdlspr_victory=sprite.victory;
mdlspr_defeat=sprite.defeat;
mdlspr_down_look=sprite.look;
selector = sprite.select;
char=name
kart_width=stat.widths;
kart_height=stat.heights;
kart_bottom=stat.bottom;
kart_stun = sfx.stun;
kart_impact = sfx.impact;
kart_power = sfx.powers;
kart_ab = abil.abtype;
kart_ab0 = abil.args0;
kart_ab1 = abil.args1;
kart_ab2 = abil.args2;
kart_ab3 = abil.args3;
}
function scr_load_sounds() {
	if(!instance_exists(stream_manager)){
		instance_create_depth(0,0,0,stream_manager);
	}else{
		event_perform_object(stream_manager,ev_user0,0);
	}
	sndpath="sounds\\"

	//Soundtrack
	global.snd_intro=sound_add(sndpath+"intro.mp3",1,1)
	global.snd_menu=sound_add(sndpath+"menu.mp3",1,1)
	global.snd_flowey=sound_add(sndpath+"flowey.mp3",1,1)
	global.snd_ruins=sound_add(sndpath+"ruins.mp3",1,1)
	global.snd_blook=sound_add(sndpath+"blook.mp3",1,1)
	global.snd_toriel=sound_add(sndpath+"toriel.mp3",1,1)
	global.snd_snowdin=sound_add(sndpath+"snowdin.mp3",1,1)
	global.snd_snowdog=sound_add(sndpath+"snowdog.mp3",1,1)
	global.snd_waterfall=sound_add(sndpath+"waterfall.mp3",1,1)
	global.snd_core=sound_add(sndpath+"core.mp3",1,1)
	global.snd_victory=sound_add(sndpath+"victory.mp3",1,1)
	global.snd_sans=sound_add(sndpath+"sans.mp3",1,1)
	global.snd_papyrus=sound_add(sndpath+"papyrus.mp3",1,1)
	global.snd_snowdincircuit=sound_add(sndpath+"snowdincircuit.mp3",1,1)

	//Misc Sound FX
	global.snd_power_alphys=sound_add(sndpath+"power_alphys.wav",0,1)
	global.snd_power_asgore=sound_add(sndpath+"power_asgore.wav",0,1)
	global.snd_power_asriel=sound_add(sndpath+"power_asriel.wav",0,1)
	global.snd_power_chara=sound_add(sndpath+"power_chara.wav",0,1)
	global.snd_power_flowey=sound_add(sndpath+"power_flowey.wav",0,1)
	global.snd_power_frisk=sound_add(sndpath+"power_frisk.wav",0,1)
	global.snd_power_gaster=sound_add(sndpath+"power_gaster.wav",0,1)
	global.snd_power_mtt=sound_add(sndpath+"power_mtt.wav",0,1)
	global.snd_power_papyrus=sound_add(sndpath+"power_papyrus.wav",0,1)
	global.snd_power_sans=sound_add(sndpath+"power_sans.wav",0,1)
	global.snd_power_toriel=sound_add(sndpath+"power_toriel.wav",0,1)
	global.snd_power_undyne=sound_add(sndpath+"power_undyne.wav",0,1)
	global.snd_power_blook=sound_add(sndpath+"power_blook.wav",0,1)
	global.snd_power_muffet=sound_add(sndpath+"power_muffet.wav",0,1)
	global.snd_power_mad=sound_add(sndpath+"power_mad.wav",0,1)



}
