if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(29,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
scr_dlg_master(29,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*BETTER LUCK NEXT&TIME, HUMAN!/")
}}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

