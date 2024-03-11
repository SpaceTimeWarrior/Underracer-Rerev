try{
if can_target=true{
x=target.x
y=target.y
}

if image_index=4{instance_destroy()}
}catch(_e){
	show_debug_message("target_not_found");
}
