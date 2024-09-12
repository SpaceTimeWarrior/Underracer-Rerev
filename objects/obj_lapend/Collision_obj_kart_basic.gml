/*if(multiline == true){
	//px = other;
	obj_lapend_tracker.px = other.id;
	signal = true;
}else{*/
sound_2play(snd_lapcomplete)
other.x+=48
other.lap+=1
if (other.lap>global.clap){
	global.clap +=1
}
if(global.clap<=global.lap_limit){
		if(other.lap-1<0){
			other.lap = 0
		}
		if(other.lap-1>=array_length(global.pos_mat)){
			global.pos_mat[other.lap-1]=0
		}
		other.race_position = global.pos_mat[other.lap-1];
		global.pos_mat[other.lap-1]++
		tval = other.lap-1
		alarm[3]=1
}
var pp = instance_number(obj_path_checkpoint)+1
if(pp = 0){
	other.bot_path_pat = 0;
}else{
	other.bot_path_pat = 1;
}
other.bot_pathstart=true;



if other.lap=global.lap_limit+1{
position+=1
other.race_position=position
alarm[1]=1
}

lastracer_id=other.id
lastracer_player=other.player

if other.player=1{
player1_time=other.steps
player1_minutes=other.draw_minutes
player1_seconds=other.draw_seconds
player1_id=other.id
player1_char=other.char
}
else
if other.player=2{
player2_time=other.steps
player2_minutes=other.draw_minutes
player2_seconds=other.draw_seconds
player2_id=other.id
player2_char=other.char
}
else
if other.player=3{
player3_time=other.steps
player3_minutes=other.draw_minutes
player3_seconds=other.draw_seconds
player3_id=other.id
player3_char=other.char
}
else
if other.player=4{
player4_time=other.steps
player4_minutes=other.draw_minutes
player4_seconds=other.draw_seconds
player4_id=other.id
player4_char=other.char
}
else
if other.player=5{
player5_time=other.steps
player5_minutes=other.draw_minutes
player5_seconds=other.draw_seconds
player5_id=other.id
player5_char=other.char
}
else
if other.player=6{
player6_time=other.steps
player6_minutes=other.draw_minutes
player6_seconds=other.draw_seconds
player6_id=other.id
player6_char=other.char
}
/*}*/
for(var ins = 0;ins<instance_number(obj_lapend);ins++){
	var inte = instance_find(obj_lapend,ins);
	if(inte = id){
		continue;
	}
	inte.position=position
	inte.lastracer_id=lastracer_id
	inte.player1_time=player1_time
	inte.player1_minutes=player1_minutes
	inte.player1_seconds=player1_seconds
	inte.player1_id=player1_id
	inte.player1_char=player1_char
	inte.player2_time=player2_time
	inte.player2_minutes=player2_minutes
	inte.player2_seconds=player2_seconds
	inte.player2_id=player2_id
	inte.player2_char=player2_char
	inte.player3_time=player3_time
	inte.player3_minutes=player3_minutes
	inte.player3_seconds=player3_seconds
	inte.player3_id=player3_id
	inte.player3_char=player3_char
	inte.player4_time=player4_time
	inte.player4_minutes=player4_minutes
	inte.player4_seconds=player4_seconds
	inte.player4_id=player4_id
	inte.player4_char=player4_char
	inte.player5_time=player5_time
	inte.player5_minutes=player5_minutes
	inte.player5_seconds=player5_seconds
	inte.player5_id=player5_id
	inte.player5_char=player5_char
	inte.player6_time=player6_time
	inte.player6_minutes=player6_minutes
	inte.player6_seconds=player6_seconds
	inte.player6_id=player6_id
	inte.player6_char=player6_char;
	inte.can_start=can_start

	inte.lastracer_player=can_start
}
