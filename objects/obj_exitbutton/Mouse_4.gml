if clickd=false{
clickd=true
image_index=2
alarm[0]=15
sound_2play(snd_click)
}

if instance_exists(obj_newmenu){
with obj_newmenu{

image_index=4
if clickd=false{
clickd=true
alarm[4]=15
sound_2play(snd_click)
}

}}

