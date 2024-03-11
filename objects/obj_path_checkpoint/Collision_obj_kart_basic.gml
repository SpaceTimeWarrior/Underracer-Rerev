//sound_2play(snd_lapcomplete)
var pp = instance_number(obj_path_checkpoint)+1
//other.x += dcos(other.direction)*speed//*1.25;
//other.y += dsin(other.direction)*speed//*1.25;
other.bot_path_pat=(pat+1)%pp;
//other.bot_pathstart=true


if other.lap=global.lap_limit+1{
position+=1
other.race_position=position
alarm[1]=1
}

