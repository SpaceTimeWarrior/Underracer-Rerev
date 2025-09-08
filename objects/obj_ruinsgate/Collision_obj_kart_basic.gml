if other.player=1{global.start_speed=other.speed room_goto(rm_cmpn_hacking) instance_destroy()}
if other.player!=1{with other{instance_destroy()}}

