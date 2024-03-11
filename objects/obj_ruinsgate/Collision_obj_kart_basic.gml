if other.player=1{global.start_speed=other.speed action_next_room() instance_destroy()}
if other.player!=1{with other{instance_destroy()}}

