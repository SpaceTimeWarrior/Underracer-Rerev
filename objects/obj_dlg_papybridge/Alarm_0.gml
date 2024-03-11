if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,2))
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,3))
}} 

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,4))
}} 

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,5))
}} 

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(25,6))
}} 


if dialogue>dialoguemax{instance_destroy()}

