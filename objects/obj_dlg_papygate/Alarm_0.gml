if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(27,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(27,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(27,2))
}}  

if dialogue=4{ 
global.dialogue=false
global.racewon=false
if global.dialogue=false{alarm[1]=40 global.start_speed=0 instance_create(0,0,obj_hud_battle) sound_stop_all() global.dialogue=true}
}  

if dialogue>dialoguemax{instance_destroy()}

