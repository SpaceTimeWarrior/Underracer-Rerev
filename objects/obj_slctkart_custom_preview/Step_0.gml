page_number = obj_slctchar_custom_next_page.page_number;
with(obj_slct_custom){
	if position_meeting(mouse_x,mouse_y,id){
		if(sel_id <array_length(custom_karts)){
			global.preview_charname = custom_karts[sel_id].char;
			preview_charid = sel_id;
		}else{
			
		}
	}
}
if(preview_charid !=-1){
	sprite_index = custom_karts[preview_charid].mdlspr_down;
}
