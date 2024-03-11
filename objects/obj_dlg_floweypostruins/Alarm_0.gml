if dialogue=1{
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,5))
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,6))
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,7))
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,8))
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,9))
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,10))
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,11))
}}

if dialogue=13{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,12))
}}

if dialogue=14{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(scr_dlg_master(11,13))
}}

if dialogue=15{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,14))
}}

if dialogue=16{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,15))
}}

if dialogue=17{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(scr_dlg_master(11,16))
}}


if dialogue>dialoguemax{instance_destroy()}

