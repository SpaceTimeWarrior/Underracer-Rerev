if dialogue=1{
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,1))
}}  

if dialogue=3{ 
if instance_exists(obj_kart_flowey){with obj_kart_flowey{final_sprite=spr_kflowey_evil change_sprite=true}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,2))
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,3))
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,4))
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,5))
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,6))
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,7))
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(8,8))
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,9))
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,10))
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(8,11))
}}


if dialogue>dialoguemax{instance_destroy()}

