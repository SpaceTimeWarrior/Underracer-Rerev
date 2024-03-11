if(sndnunlk){
if other.player=1{
	global.start_speed=other.speed;
	torm = true;
	room_goto(rm_sandbox_ruins1);
	}
if other.player!=1{with other{instance_destroy()}}
}
