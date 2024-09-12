if other.player=1{global.start_speed=other.speed room_goto(rm_sandbox_snowdin1) instance_destroy()}
if other.player!=1{with other{instance_destroy()}}

