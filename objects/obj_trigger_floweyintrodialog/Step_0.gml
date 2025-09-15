if distance_to_object(obj_kart_frisk)<120{
sound_2loop(global.snd_flowey)
global.cmpn_floweyintro+=1
ini_open("Save.determination")
ini_write_real("Campaign","flowey_intro",global.cmpn_floweyintro);
ini_write_string("Campaign","Room", "flowey check");
ini_close()
if global.cmpn_floweyintro=1{
instance_create(x,y,obj_dlg_introflowey)
instance_destroy()
}
else
if(global.cmpn_floweyintro >1 && global.cmpn_floweyintro<5){
instance_create(x,y,obj_dlg_introflowey2)
instance_destroy()
}else if(global.cmpn_floweyintro >=5 && global.cmpn_floweyintro<32){
	instance_create(x,y,obj_dlg_introflowey3)
	instance_destroy()
}else if(global.cmpn_floweyintro == 32){
	instance_create(x,y,obj_dlg_introflowey4)
	instance_destroy()
}else if(global.cmpn_floweyintro == 33){
	instance_create(x,y,obj_dlg_introflowey5)
	instance_destroy()
}else if(global.cmpn_floweyintro == 420){
	instance_create(x,y,obj_dlg_introflowey6)
	instance_destroy()
}else{
	instance_destroy()
}

}

