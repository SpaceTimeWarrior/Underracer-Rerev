scr_kartsettings()
if global.gamemode="Campaign"||global.gamemode="Campaign Rally"{
if stuntimer=25{sound_2play(snd_slct_flowey) stuntimer=24}
}else{
if stuntimer=25{sound_2play(snd_slct_flowey)stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<=0{ability_timer=0 ability="None" ability_trigger=false ability_sndplay=true kart_maxspd=kart_maxspd_old}
if ability_timer>=100{ability_timer=100 ability="Calories"}

if ability_trigger=true{
if ability="Calories"{
kart_maxspd=kart_maxspd_db
speed=kart_maxspd_db
if ability_sndplay=true{sound_2play(snd_powerup_jetpack) ability_sndplay=false}
ability_timer-=5
}
}
}