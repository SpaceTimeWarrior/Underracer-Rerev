if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
textspeed = 2;
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(22,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
textspeed = 2;
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
scr_dlg_master(22,1))
}}

if dialogue>dialoguemax{
if(!sound_isplaying(snd_whoopee)){sound_2play(snd_whoopee)}
while(!sound_isplaying(snd_whoopee)){}
instance_destroy()
}

