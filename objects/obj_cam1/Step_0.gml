if global.gamemode="Rally"{z=terrain_get_z(x,y)-64}
if global.gamemode="Campaign Rally"{z=terrain_get_z(x,y)-64}

if can_target=true{
if instance_exists(target){
x=target.x + lengthdir_x(Len, Angle + direction)
y=target.y + lengthdir_y(Len, Angle + direction)
if global.gamemode!="Rally"{
if global.gamemode!="Campaign Rally"{if z>1{z=target.z}}}
speed=target.speed
friction=target.friction
direction=target.direction+adddir
camx=x
camy=y
camsin = sin(direction*pi/180);
camcos = cos(direction*pi/180);
}
}
if instance_exists(target){
scr_wincampos()
}
if destroy=true{instance_destroy()}

Len = point_distance(0, 0, DX, DY); // This is the distance between the tip and the origin.
Angle = point_direction(0, 0, DX, DY); // This is the angle to the tip from the origin.

if hudcreate=false{
if global.gamemode="Race"{hud=instance_create(x,y,obj_hud1) hudcreate=true}
if global.gamemode="Campaign"{hud=instance_create(x,y,obj_hud_campaign) target=obj_kart_frisk hudcreate=true}
if global.gamemode="Campaign Rally"{hud=instance_create(x,y,obj_hud_campaign) target=obj_kart_frisk hudcreate=true}
if global.gamemode="Rally"{hud=instance_create(x,y,obj_hud1) hudcreate=true}
if global.players=2{
	obj_cam2.hud=instance_create(x,y,obj_hud2)
}
}
if(characterval == 0){
	if global.gamemode="Campaign"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}
	if global.gamemode="Campaign Rally"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}
	
}else if(characterval == 1 &&asriel_unlk){
	if global.gamemode="Campaign"{global.char1="Asriel" global.char1_obj=obj_kart_asriel_c}
	if global.gamemode="Campaign Rally"{global.char1="Asriel" global.char1_obj=obj_kart_asriel_c}
}else{
	if global.gamemode="Campaign"{global.char1="Flowey" global.char1_obj=obj_kart_flowey_c}
	if global.gamemode="Campaign Rally"{global.char1="Flowey" global.char1_obj=obj_kart_flowey_c}
	
}

image_angle=direction

