function __init_global() {
	gml_pragma( "global", "__init_global();");
	// set any global defaults
	layer_force_draw_depth(true,0);		// force all layers to draw at depth 0
	draw_set_colour( c_black );
	globalvar gspd;
	gspd = game_get_speed(gamespeed_fps);
	globalvar gpst;
	gpst = 0;
	globalvar sndnunlk;
	sndnunlk = false;
	globalvar torm;
	torm = false;
	globalvar characterval;
	characterval = 0;
	globalvar asriel_unlk;
	asriel_unlk = false;
	globalvar cv;
	var cc = sprite_duplicate(0)-1;
	sprite_delete(cc+1);//gets the total number of sprites
	globalvar cspr;
	cspr = cc
	globalvar custom_spr;
	custom_spr = array_create(0,0)
	sprite_delete(cspr);
	show_debug_message(cc)
	cv = false;
	exception_unhandled_handler(function(ex){determined_error(ex)});
}
function determined_error(ex){
		show_debug_message(string(ex));
	    if(show_question("Your Determination is too strong it destroyed the world.\n do you want to create a error report file")){
			var dt = date_current_datetime()
			var fname = "error"+string(date_get_year(dt))+"-"+string(date_get_month(dt))+"-"+string(date_get_day(dt))+"-"
			fname += "-"+string(date_get_hour(dt))+"-"+string(date_get_minute(dt))+"-"+string(date_get_second(dt))+".txt"
			ini_open(fname)
			ini_write_string("Error","Error",string(ex));
			ini_close();
			show_message(filename_path(fname)+fname)
		}
	    return 0;
	}