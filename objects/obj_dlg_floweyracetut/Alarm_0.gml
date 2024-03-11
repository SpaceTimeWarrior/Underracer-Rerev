if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,2))
}}

if dialogue=4{ 
instance_create(384,176,obj_powerupbox);
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,3))
}}

if dialogue=5{ 
if instance_exists(obj_powerupbox){with obj_powerupbox{instance_destroy()}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,4))
}}

if dialogue=6{ 
instance_create(384,176,obj_magicdrop);
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,5))
}}

if dialogue=7{ 
if instance_exists(obj_magicdrop){with obj_magicdrop{instance_destroy()}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,6))
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(14,7))
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
scr_dlg_master(14,8))
}}

if dialogue>dialoguemax{instance_destroy()}

