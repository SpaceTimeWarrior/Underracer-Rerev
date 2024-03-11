if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
switch(language){
	case "en_US":
	default:
writer_msg(
scr_dlg_master(2,0))
}
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(2,1))
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
scr_dlg_master(2,2))
}}  

if dialogue=4{
dlg=instance_create(x,y,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
scr_dlg_master(2,3))
}}

if dialogue=5{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

