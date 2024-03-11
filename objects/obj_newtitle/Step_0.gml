if gamepad_find_button(p1gp)!=0{
sound_2loop(global.snd_menu)
room_goto_next()
return;
}

if keyboard_check_pressed(vk_anykey){
sound_2loop(global.snd_menu)
room_goto_next();
return;
}

if keyboard_check_pressed(vk_escape){
sound_2loop(global.snd_menu)
room_goto_next();
return;
}

