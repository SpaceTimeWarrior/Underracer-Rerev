sound_2play(snd_lapcomplete)
px.x+=48
px.lap+=1
px.bot_pathstart=true

if px.lap=global.lap_limit+1{
position+=1
px.race_position=position
alarm[1]=1
}

lastracer_id=px.id
lastracer_player=px.player

if px.player=1{
player1_time=px.steps
player1_minutes=px.draw_minutes
player1_seconds=px.draw_seconds
player1_id=px.id
player1_char=px.char
}
else
if px.player=2{
player2_time=px.steps
player2_minutes=px.draw_minutes
player2_seconds=px.draw_seconds
player2_id=px.id
player2_char=px.char
}
else
if px.player=3{
player3_time=px.steps
player3_minutes=px.draw_minutes
player3_seconds=px.draw_seconds
player3_id=px.id
player3_char=px.char
}
else
if px.player=4{
player4_time=px.steps
player4_minutes=px.draw_minutes
player4_seconds=px.draw_seconds
player4_id=px.id
player4_char=px.char
}
else
if px.player=5{
player5_time=px.steps
player5_minutes=px.draw_minutes
player5_seconds=px.draw_seconds
player5_id=px.id
player5_char=px.char
}
else
if px.player=6{
player6_time=px.steps
player6_minutes=px.draw_minutes
player6_seconds=px.draw_seconds
player6_id=px.id
player6_char=px.char
}
