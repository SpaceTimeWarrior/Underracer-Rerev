if(sprite_index != -1){
	draw_self();
	for(var in = -3000+x;in<3000;in+=sprite_width){
		for(var jn = -3000+y;jn<3000;jn+=sprite_height){
			draw_sprite(sprite_index,image_index,in+x,jn+y)
		}
	}
}
event_perform_object(obj_slctkart_preview,ev_gui,0);

