if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_doggo
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(44,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_toby
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(45,1));
}}  
if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_sans_normal
with dlg
{
txtsound=snd_talk_sans
writer_msg(
scr_dlg_master(45,2))
}}  
if dialogue>dialoguemax{instance_destroy()}

