if trigger=true{
var nearenemy;

nearenemy=instance_nearest_notme(x,y,obj_kart_basic,creator)

if (nearenemy!=creator&&nearenemy!=noone){direction=point_direction(x,y,nearenemy.x,nearenemy.y)}
}

