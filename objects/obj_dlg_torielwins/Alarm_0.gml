if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(53,0))
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_sidelook
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(53,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(53,2))
}}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

