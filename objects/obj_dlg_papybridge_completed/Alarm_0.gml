if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(26,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(26,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(26,2))
}}  

if dialogue>dialoguemax{instance_destroy()}

