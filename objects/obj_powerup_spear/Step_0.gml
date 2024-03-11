target=creator

image_alpha+=0.125
if image_alpha>1{image_alpha=1 speed=14}

if image_alpha<1{
x=creator.x
y=creator.y

if adddir_dir=1 {DY = 8}
if adddir_dir=-1 {DY = -8}

if instance_exists(target){
x=target.x + lengthdir_x(Len, Angle + direction)
y=target.y + lengthdir_y(Len, Angle + direction)
z=target.z
speed=target.speed
direction=target.direction
camx=x
camy=y
camsin = sin(direction*pi/180);
camcos = cos(direction*pi/180);
}

Len = point_distance(0, 0, DX, DY); 
Angle = point_direction(0, 0, DX, DY);
}

if image_alpha=1{
if (nearenemy!=creator && nearenemy!=noone){
if distance_to_object(nearenemy)<300{
nearenemy=instance_nearest_notme(x,y,obj_kart_basic,creator)
if(nearenemy!=noone){
speed=14
direction=point_direction(x,y,nearenemy.x,nearenemy.y)
can_atk=false
}
}}else if(nearenemy==noone){
	if(dist <=300){
		speed=14
		direction=point_direction(x,y,x+dcos(cdir)*speed,y+dsin(cdir)*speed);
		dist +=speed;
	}
}
}

