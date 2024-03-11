if image_alpha<1{image_alpha+=0.125}

if image_xscale>1{image_xscale-=0.125/2}
if image_yscale>1{image_yscale-=0.125/2}

if gamepad_find_button(p1gp)!=0{
sound_stop_all()
transition_kind=21
room_goto_next()
return;
}

if keyboard_check_pressed(global.control_pl1use_kb){
sound_stop_all()
transition_kind=21
room_goto_next()
}

if keyboard_check_pressed(global.control_pl1special_kb){
sound_stop_all()
transition_kind=21
room_goto_next()
}

if keyboard_check_pressed(vk_escape){
sound_stop_all()
transition_kind=21
room_goto_next()
}

