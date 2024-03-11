scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_asgore) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<0{ability="None" ability_timer=0 ability_sndplay=true ability_trigger=false kart_maxspd=kart_maxspd_old playercolor=c_white}
if ability_timer>=100{ability_timer=100 ability="Hyper Gonner"}

if ability_trigger=true and ability_timer!=100{ability_trigger=false}

if ability="Hyper Gonner" and ability_trigger=true{

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
pu=instance_create(x,y,obj_powerup_gb)
pu.direction=direction
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_bone)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu1=instance_create(x,y,obj_powerup_asrielstar)
pu1.direction=-direction
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
sound_2play(global.snd_power_asriel)
pu4=instance_create(x,y,obj_powerup_bone)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
pu5=instance_create(x,y,obj_powerup_bone)
pu5.direction=direction+180
pu5.speed=14
pu5.creator=id
pu5.z=z

alarm[2]=10
fireatk=0
}

if firespin>=350{ability_trigger=false ability_timer=-1 firespin=0}

if ability_sndplay=true{
sound_2play(global.snd_power_asgore)
fireatk=1
ability_trigger=false
ability_sndplay=false
}

}

