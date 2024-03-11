if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
scr_dlg_master(13,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
shake=4
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(13,1))
}}  

if dialogue=3{ 
if instance_exists(obj_kart_flowey){with obj_kart_flowey{final_sprite=spr_kflowey_evil change_sprite=true}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
shake=2
txtsound=snd_talk_flowey_evil
writer_msg(
scr_dlg_master(13,2))
}
}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 


if dialogue>dialoguemax{instance_destroy()}

