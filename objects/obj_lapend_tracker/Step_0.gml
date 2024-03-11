if can_start=true{
scr_timetoname(global.player1_id,global.player1_char)
scr_timetoname(global.player2_id,global.player2_char)
scr_timetoname(global.player3_id,global.player3_char)
scr_timetoname(global.player4_id,global.player4_char)
scr_timetoname(global.player5_id,global.player5_char)
scr_timetoname(global.player6_id,global.player6_char)
}

if position>6{position=0}
for(var ins = 0;ins<instance_number(obj_lapend);ins++){
	var inte = instance_find(obj_lapend,ins);
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
	inte.multiline = true;
	inte.lastracer_player=can_start
}
