if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(12,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
shake=2
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(12,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
shake=3
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(12,2))
}}  

if dialogue=4{ 
if instance_exists(obj_kart_flowey){with obj_kart_flowey{final_sprite=spr_kflowey_evil change_sprite=true}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
shake=2
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(12,3))
}
}  

if dialogue=5{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 


if dialogue>dialoguemax{instance_destroy()}

