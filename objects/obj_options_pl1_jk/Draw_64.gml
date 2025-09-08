draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_font(fnt_hud)
draw_set_color(c_white)
draw_text(x,y+136,string_hash_to_newline("Accel: "+gamepad_to_string(global.control_pl1move_jk)))
draw_text(x,y+136+16,string_hash_to_newline("Break: "+gamepad_to_string(global.control_pl1break_jk)))
draw_text(x,y+136+32,string_hash_to_newline("Right: "+gamepad_to_string(global.control_pl1right_jk)))
draw_text(x,y+136+48,string_hash_to_newline("Left: "+gamepad_to_string(global.control_pl1left_jk)))
draw_text(x,y+136+64,string_hash_to_newline("Powerup: "+gamepad_to_string(global.control_pl1use_jk)))
draw_text(x,y+136+80,string_hash_to_newline("Attack: "+gamepad_to_string(global.control_pl1special_jk)))
draw_text(x,y+136+96,string_hash_to_newline("Rearview: "+gamepad_to_string(global.control_pl1cam_jk)))
draw_text(x,y+136+96+16,string_hash_to_newline("Reset: "+gamepad_to_string(global.control_pl1cam_jkRS)))

if gamepad_exists(p1gp){draw_text(x,y+136+96+32,string_hash_to_newline("Enabled"))}
if !gamepad_exists(p1gp){draw_text(x,y+136+96+32,string_hash_to_newline("Not Enabled"))}
draw_text(x,y+136+96+48,string_hash_to_newline("While holding the button, press the mouse to bind."))
//draw_text(x,y+136+93+38,string(p1gp))
