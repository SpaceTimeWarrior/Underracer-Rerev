if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
alarm[1]=15
shake=2
textspeed=5
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(10,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_worried
with dlg
{
shake=2
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(10,1))
}}

if dialogue>dialoguemax{instance_destroy()}

