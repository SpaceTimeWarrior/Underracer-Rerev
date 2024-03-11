global.gold+=200
global.cmpn_showraceinfo=false
global.dialogue=false
global.racewon=false
sound_stop_all()
sound_2play(snd_click)
if(hardmode){
	campaign_tor_turbo = 0.25;
}
action_another_room(rm_cmpn_ruins_exit);
