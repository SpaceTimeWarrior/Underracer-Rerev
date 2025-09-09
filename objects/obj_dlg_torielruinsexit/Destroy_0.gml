global.dialogue=false
if instance_exists(obj_kart_toriel){
with obj_kart_toriel{
direction=-180
mp_potential_path_object(botpath,obj_portal_Fake_1.x,obj_portal_Fake_1.y,(5*speed)/8,2,obj_collidable);
path_start(botpath, speed, 0, 0);
}
}

