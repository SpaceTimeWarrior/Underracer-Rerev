if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(49,0))
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(49,1))
}}  


if dialogue>dialoguemax{instance_destroy()}else if dialogue=3{
	dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
scr_dlg_master(49,2))
}
}

