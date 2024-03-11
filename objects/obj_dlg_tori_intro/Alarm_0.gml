if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(48,5))
}}

if dialogue>dialoguemax{instance_destroy()}

