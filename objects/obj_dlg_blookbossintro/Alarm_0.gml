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
scr_dlg_master(1,0))
break;
}

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
scr_dlg_master(1,1))
break;
}
}}  

if dialogue>dialoguemax{instance_destroy()}

