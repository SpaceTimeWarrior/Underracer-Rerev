switch(kartab){
	case "Electricity":
	scr_kartsettings()
	if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}
		if global.racestart=true{ability_timer+=(0.125)/2.5}
	if ability_timer<100{ability="None"}
	if ability_timer>=100{ability_timer=100 ability="Electricity"}

	if ability_trigger=true and ability_timer<100{ability_trigger=false}

	if ability_trigger=true{
	if ability_timer=100{
	pu=instance_create(x,y,obj_powerup_shock)
	pu.direction=direction
	pu.creator=id
	pu.speed=14
	pu.z=z
	alarm[1]=20
	alarm[2]=40
	sound_2play(custom_karts[kart_id].kart_power)
	ability_timer=0
	ability_trigger=false
	}
	}
	break;
	case "Knife Dance":
	scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Knife Dance"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="Knife Dance"{
pu=instance_create(x,y,obj_powerup_knife)
pu.direction=direction
pu.speed=14
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_cotton)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_cotton)
pu2.direction=direction+10
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_cotton)
pu3.direction=direction-10
pu3.speed=14
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_cotton)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
pu5=instance_create(x,y,obj_powerup_cotton)
pu5.direction=direction+190
pu5.speed=14
pu5.creator=id
pu5.z=z
pu6=instance_create(x,y,obj_powerup_cotton)
pu6.direction=direction-190
pu6.speed=14
pu6.creator=id
pu6.z=z
sound_2play(global.snd_power_mad)
ability_timer=0
ability_trigger=false

}
}
break;
case "Spaghettore":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3}

if ability_timer<0{ability="None" ability_timer=0 ability_sndplay=true ability_trigger=false kart_maxspd=kart_maxspd_old playercolor=c_white}
if ability_timer>=100{ability_timer=100 ability="Spaghettore"}

if ability_trigger=true and ability_timer!=100 and playercolor!=c_yellow{ability_trigger=false}

if ability_trigger=true{

if ability="Spaghettore"{
ability_timer-=2
playercolor=c_yellow
}

if ability_sndplay=true{
pu=instance_create(x,y,obj_powerup_bone_blue)
pu.direction=direction
pu.speed=10
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_bone)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_bone)
pu2.direction=direction+90
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_bone)
pu3.direction=direction-90
pu3.speed=14
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_bone)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
sound_2play(custom_karts[kart_id].kart_power)
ability_trigger=false
ability_sndplay=false
}

}
break;
case "Spear Fear":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Spear Fear"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{

pu2=instance_create(x,y,obj_powerup_tilespear)
pu2.direction=direction-2
pu2.speed=-6
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_tilespear)
pu3.direction=direction+2
pu3.speed=-6
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_spear)
pu4.direction=direction
pu4.creator=id
pu4.z=z
pu4.adddir_dir+=1
pu5=instance_create(x,y,obj_powerup_spear)
pu5.direction=direction
pu5.creator=id
pu5.z=z
pu5.adddir_dir-=1
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false

}
}
break;
case "Bone Zone":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Bone Zone"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu=instance_create(x,y,obj_powerup_gb)
pu.direction=direction
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_bone)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_bone)
pu2.direction=direction+10
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_bone)
pu3.direction=direction-10
pu3.speed=14
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_bone)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
pu5=instance_create(x,y,obj_powerup_bone)
pu5.direction=direction+190
pu5.speed=14
pu5.creator=id
pu5.z=z
pu6=instance_create(x,y,obj_powerup_bone)
pu6.direction=direction-190
pu6.speed=14
pu6.creator=id
pu6.z=z
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false

}
}
break;
case "Webs":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Webs"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="Webs"{
pu1=instance_create(x,y,obj_powerup_tileweb)
pu1.direction=direction
pu1.speed=-6
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_tileweb)
pu2.direction=direction-4
pu2.speed=-6
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_tileweb)
pu3.direction=direction+4
pu3.speed=-6
pu3.creator=id
pu3.z=z
alarm[2]=15
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false
playercolor=c_purple
}
}
break;
case "MettaLove":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="MettaLove"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="MettaLove"{
pu=instance_create(x,y,obj_powerup_mttsentry)
pu.direction=direction
pu.creator=id
pu.z=z
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false

}
}
break;
	case "Fire Circle":
	scr_kartsettings()

	if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

	if global.racestart=true{ability_timer+=(0.125)/4}
	if ability_timer<0{ability="None" ability_timer=0 ability_sndplay=true ability_trigger=false kart_maxspd=kart_maxspd_old playercolor=c_white}
	if ability_timer>=100{ability_timer=100 ability="Fire Circle"}

	if ability_trigger=true and ability_timer!=100{ability_trigger=false}

	if ability="Fire Circle" and ability_trigger=true{

	firespin+=6

	if fireatk=1{
	pu1=instance_create(x,y,obj_powerup_fireball)
	pu1.direction=direction+firespin
	pu1.speed=12
	pu1.creator=id
	pu1.z=z
	pu2=instance_create(x,y,obj_powerup_fireball)
	pu2.direction=direction-firespin
	pu2.speed=12
	pu2.creator=id
	pu2.z=z
	alarm[2]=10
	fireatk=0
	}

	if firespin>=350{ability_trigger=false ability_timer=-1 firespin=0}

	if ability_sndplay=true{
	sound_2play(custom_karts[kart_id].kart_power)
	fireatk=1
	ability_trigger=false
	ability_sndplay=false
	}

	}
	break;
	case "Star Blazing":
	scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3}
ability_timer+=(0.125)/3
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Star Blazing"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu1=instance_create(x,y,obj_powerup_asrielstar)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_asrielstar)
pu2.direction=direction+45
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_asrielstar)
pu3.direction=direction-45
pu3.speed=14
pu3.creator=id
pu3.z=z
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false

}
}
break;
case "Tears":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2.5}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Tears"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu=instance_create(x,y,obj_powerup_tear)
pu.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu.speed=-5
pu.z=z
pu.creator=id
pu2=instance_create(x,y,obj_powerup_tear)
pu2.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu2.speed=-5
pu2.z=z
pu2.creator=id
pu3=instance_create(x,y,obj_powerup_tear)
pu3.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu3.speed=-5
pu3.z=z
pu3.creator=id
alarm[1]=30
alarm[2]=60
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false
}
}
break;
case "Calories":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<=0{ability_timer=0 ability="None" ability_trigger=false ability_sndplay=true kart_maxspd=kart_maxspd_old}
if ability_timer>=100{ability_timer=100 ability="Calories"}

if ability_trigger=true{
if ability="Calories"{
kart_maxspd=kart_maxspd_db
speed=kart_maxspd_db
if ability_sndplay=true{sound_2play(custom_karts[kart_id].kart_power) ability_sndplay=false}
ability_timer-=5
}
}
break;
case "LOVE":
scr_kartsettings()

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="LOVE"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="LOVE"{
pu=instance_create(x,y,obj_powerup_knife)
pu.direction=direction
pu.creator=id
pu.speed=14
pu.z=z
alarm[1]=20
alarm[2]=40
alarm[3]=60
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false
}
}
break;
case "MonsterBoost":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<=0{ability_timer=0 ability="None" ability_trigger=false ability_sndplay=true kart_maxspd=kart_maxspd_old}
if ability_timer>=100{ability_timer=100 ability="MonsterBoost"}

if ability_trigger=true{
if ability="MonsterBoost"{
kart_maxspd=kart_maxspd_db
speed=kart_maxspd_db
if ability_sndplay=true{sound_2play(custom_karts[kart_id].kart_power) ability_sndplay=false}
ability_timer-=5
}
}
break;
case "F. Pellets":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3.5}

if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="F. Pellets"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu1=instance_create(x,y,obj_powerup_pellet)
pu1.direction=direction
pu1.creator=id
pu1.z=z+6
pu2=instance_create(x,y,obj_powerup_pellet)
pu2.direction=direction
pu2.creator=id
pu2.z=z
pu2.adddir_dir-=1
pu3=instance_create(x,y,obj_powerup_pellet)
pu3.direction=direction
pu3.creator=id
pu3.z=z
pu3.adddir_dir+=1
pu4=instance_create(x,y,obj_powerup_pellet)
pu4.direction=direction+180
pu4.creator=id
pu4.z=z+6
pu5=instance_create(x,y,obj_powerup_pellet)
pu5.direction=direction-25
pu5.creator=id
pu5.z=z
pu5.adddir_dir-=1
pu6=instance_create(x,y,obj_powerup_pellet)
pu6.direction=direction+25
pu6.creator=id
pu6.z=z
pu6.adddir_dir+=1
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false
alarm[1]=20
alarm[2]=40
alarm[3]=60
}
}
break;
case "DT Bullets":
scr_kartsettings()

if global.racestart=true{ability_timer+=(0.125)/2.5}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="DT Bullets"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="DT Bullets"{
pu=instance_create(x,y,obj_powerup_ylwbullet)
pu.direction=direction
pu.creator=id
pu.speed=14
pu.z=z
playercolor=c_yellow
alarm[1]=20
alarm[2]=40
alarm[3]=60
sound_2play(custom_karts[kart_id].kart_power)
ability_timer=0
ability_trigger=false
}
}
break;
case "W.D. Blaster":
scr_kartsettings()

if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="W.D. Blaster"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="W.D. Blaster"{
pu=instance_create(x,y,obj_powerup_gb)
pu.direction=direction
pu.creator=id
pu.z=z
sound_2play(custom_karts[kart_id].kart_power)
alarm[1]=20
alarm[2]=40
ability_timer=0
ability_trigger=false
}
}
break;
	default:
	scr_kartsettings()

	if stuntimer=25{sound_2play(custom_karts[kart_id].kart_stun) stuntimer=24}
}

