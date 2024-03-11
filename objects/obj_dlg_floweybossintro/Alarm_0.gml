if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(6,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(6,1))
}}  

if dialogue>dialoguemax{instance_destroy()}

