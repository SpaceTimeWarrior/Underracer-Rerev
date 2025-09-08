
if other.player=1{
	global.start_speed=other.speed;
	torm = true;
	room_goto(rm_cmpgn_tutorial2);
	}
if other.player!=1{with other{instance_destroy()}}

