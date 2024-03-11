if (global.achieve_corefall||(global.achieve_corefall==-1))&&(global.achieve_floweysouls||(global.achieve_floweysouls==-1))&&(global.achieve_papyblaster||(global.achieve_papyblaster==-1))&&(global.achieve_secretcodewall||(global.achieve_secretcodewall==-1)){
if char_selected=false{
global.char_slct+=1
sound_2play(snd_slct_asriel)
image_index=1
alarm[0]=1
obj_slct_title.alarm[0]=1
char_selected=true
}
}else{sound_2play(snd_error);show_debug_message(string(global.achieve_corefall)+string(global.achieve_floweysouls)+string(global.achieve_papyblaster)+string(global.achieve_secretcodewall))}

