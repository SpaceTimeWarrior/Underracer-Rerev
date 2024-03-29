// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_freerace_flowey_souls(){
	try{
		ini_open("Save.determination")
		ini_write_real("Main","FSouls",-1);  
		ini_write_real("Main","rend",global.renderdistance);  
		ini_write_real("Main","music",global.musicvolume);  
		ini_write_real("Main","inp",global.controlinput);  
		ini_write_real("Main","light",global.lighting);  
		ini_write_real("Main","light_q",global.lighting_quantity); 
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
		file_text_write_string(file,string(-1))
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
}