if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
	writer_msg(
	scr_dlg_master(3,0))
	break;
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
switch(language){
case "en_US":
default:
writer_msg(
scr_dlg_master(3,1))
}
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(3,2))
}}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

