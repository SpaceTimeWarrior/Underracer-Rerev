if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(52,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_sad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(52,1))
}}  


if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(52,2))
}}  

if dialogue>dialoguemax{instance_destroy()}

