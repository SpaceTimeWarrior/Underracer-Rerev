if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(18,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(18,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(18,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(18,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(18,4))
}}

if dialogue>dialoguemax{instance_destroy()}

