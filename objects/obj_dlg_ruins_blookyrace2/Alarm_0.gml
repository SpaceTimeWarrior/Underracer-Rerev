if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(37,0))
}}  

if dialogue>dialoguemax{instance_destroy()}

