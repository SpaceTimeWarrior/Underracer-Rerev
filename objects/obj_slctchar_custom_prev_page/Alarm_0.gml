if(page_number-1<0){
	sound_2play(snd_error);
}else{
with(obj_slct_custom){
	sel_id-=25	
}
page_number--;
obj_slctchar_custom_next_page.page_number = page_number;
sound_2play(snd_click)
}
