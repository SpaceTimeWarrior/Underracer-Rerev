if instance_exists(obj_kart_toriel){
global.dialogue=false
obj_kart_toriel.direction+=180
obj_kart_toriel.speed=4
mp_potential_path_object(obj_kart_toriel.botpath,obj_ruinsgate.x,obj_ruinsgate.y,(5*speed)/8,2,obj_collidable);
path_start(obj_kart_toriel.botpath, obj_kart_toriel.speed, 0, 0);
}

