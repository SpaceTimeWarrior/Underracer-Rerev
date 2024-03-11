if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
scr_dlg_master(21,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
scr_dlg_master(21,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
scr_dlg_master(21,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
scr_dlg_master(21,3))
}}

if dialogue>dialoguemax{
if obj_kart_frisk.direction < 175 or obj_kart_frisk.direction > 185
{
    if(obj_kart_frisk.direction mod 360 > 180){obj_kart_frisk.direction -= (obj_kart_frisk.kart_turn / 1.25)}
    else{obj_kart_frisk.direction += (obj_kart_frisk.kart_turn / 1.25)}
}
else{
if(!sound_isplaying(snd_whoopee)){sound_2play(snd_whoopee)}
while(!sound_isplaying(snd_whoopee)){}
instance_destroy()
}
alarm[0]=1
}

