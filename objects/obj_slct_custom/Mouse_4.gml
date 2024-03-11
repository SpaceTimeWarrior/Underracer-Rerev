if sel_id <array_length(custom_karts){
if char_selected=false{
global.char_slct+=1
sound_2play(custom_karts[sel_id].kart_stun)
image_index=1
alarm[0]=1
obj_slct_title.alarm[0]=1
char_selected=true
}
}

if sel_id >=array_length(custom_karts){sound_2play(snd_error)}

