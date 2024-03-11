event_inherited()
//Variables Settings
final_sprite=spr_gb_d
mdlspr_right=spr_gb_r
mdlspr_left=spr_gb_l
mdlspr_down=spr_gb_d
mdlspr_up=spr_gb_u
blast = 0;
camsin = 1;
camcos = 0;
friction=0.1
playercolor=c_white
stun=false
change_sprite=false
z=-32
image_speed=0
image_index=0
can_target=true
lifetimer=100
can_atk=false
alive=true
blasted=false
vibration=0
nearenemy=obj_lapend
creator=obj_lapend

action_set_alarm(1, 0);
action_set_alarm(10, 1);
