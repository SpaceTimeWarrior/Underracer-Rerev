switch(kartab){
	case"Electricity":
	pu=instance_create(x,y,obj_powerup_shock)
	pu.direction=direction
	pu.creator=id
	pu.speed=14
	pu.z=z
	pu2=instance_create(x,y,obj_powerup_shock)
	pu2.direction=direction+5
	pu2.creator=id
	pu2.speed=14
	pu2.z=z
	pu3=instance_create(x,y,obj_powerup_shock)
	pu3.direction=direction-5
	pu3.creator=id
	pu3.speed=14
	pu3.z=z
	break;
	case "LOVE":
	pu=instance_create(x,y,obj_powerup_knife)
	pu.direction=direction
	pu.creator=id
	pu.speed=14
	pu.z=z
	break;
	case "F. Pellets":
	pu1=instance_create(x,y,obj_powerup_pellet)
	pu1.direction=direction
	pu1.creator=id
	pu1.z=z+6
	pu2=instance_create(x,y,obj_powerup_pellet)
	pu2.direction=direction+10
	pu2.creator=id
	pu2.z=z
	pu2.adddir_dir-=1
	pu3=instance_create(x,y,obj_powerup_pellet)
	pu3.direction=direction-10
	pu3.creator=id
	pu3.z=z
	pu3.adddir_dir+=1
	break;
	case "DT Bullets":
	pu=instance_create(x,y,obj_powerup_ylwbullet)
	pu.direction=direction
	pu.creator=id
	pu.speed=14
	pu.z=z
	break;
	case "W.D. Blaster":
	pu=instance_create(x,y,obj_powerup_gb)
	pu.direction=direction
	pu.creator=id
	pu.z=z
	break;
	case "Webs":
	pu1=instance_create(x,y,obj_powerup_tileweb)
	pu1.direction=direction
	pu1.speed=-6
	pu1.creator=id
	pu1.z=z
	pu2=instance_create(x,y,obj_powerup_tileweb)
	pu2.direction=direction-2
	pu2.speed=-6
	pu2.creator=id
	pu2.z=z
	pu3=instance_create(x,y,obj_powerup_tileweb)
	pu3.direction=direction+2
	pu3.speed=-6
	pu3.creator=id
	pu3.z=z
	playercolor=c_white
	break;
	default:
	
}
