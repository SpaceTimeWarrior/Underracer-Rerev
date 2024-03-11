function action_another_room(rm) {
	room_goto( rm );
}
function sleep(time,blu = false){
	if(blu == false){
	time_to_go = ceil((time*gspd)/1000);
	time_to_go--;
	}else{
		time_to_go = time;
		time_to_go--;
	}
	if(time_to_go<=0){
		return;
	}else{
		sleep(time_to_go,true);
	}
}
function action_create_object(obj, objx, objy) {
	if (!object_exists(obj)) {
		show_message( "creating instance for non-existent object" + string(id) );
		return 0;
	}
	if (global.__argument_relative)
	{
		instance_create( x+objx, y+objy, obj);
	} else {
		instance_create( objx, objy, obj);
	}
}
function action_end_game() {
	game_end();
}
function action_if_variable(var1, var2, op) {
	var ret = false;
	switch(op)
	{
		case 1:	ret = (var1 < var2); break;	
		case 2:	ret = (var1 > var2); break;	
		case 3:	ret = (var1 <= var2); break;	
		case 4:	ret = (var1 >= var2); break;	
		default:ret = (var1 == var2); break;	
	}
	return ret;
}
function action_kill_object() {
	instance_destroy();
}
function action_move_start() {
	x = xstart;
	y = ystart;
}
function action_next_room() {
	room_goto_next();
}
function action_set_alarm(time, alrm) {
	alarm_set( alrm, time );
}
function action_set_cursor(curs_spr, visib) {
	cursor_sprite = curs_spr;
	if (visib) {
		window_set_cursor( 0 );
	} else {
		window_set_cursor( -1 );
	} // end if
}
function action_timeline_set(tmln_indx, tmln_pos, tmln_run, tmln_loop) {
	timeline_index = tmln_indx;
	timeline_position = tmln_pos;
	timeline_running = !tmln_run;
	timeline_loop = tmln_loop;
}
function action_timeline_stop() {
	timeline_position = 0;
	timeline_running = false;
}
function __init_action() {
	gml_pragma( "global", "__init_action();");
	global.__part_syst=-1;
	global.__part_emit=[];
	global.__argument_relative=false;
	global.__part_type=[];

	for( var i=0; i<=15; ++i) 
	{
		global.__part_type[i] = -1;
		global.__part_emit[i] = -1;
	}
}
