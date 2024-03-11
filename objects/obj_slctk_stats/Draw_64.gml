//draw_sprite_ext(sprite_index,0,x-sprite_width/2,y-sprite_height/2,2,2,image_angle,c_white,image_alpha)
//var xey = x-sprite_width()/2
draw_set_color(c_black)
draw_rectangle(x-scr/2,y-scr/2,x+scr/2,y+scr/2,false);
draw_set_color(c_white)
draw_rectangle(x-scr/2,y-scr/2,x+scr/2,y+scr/2,true);
var adj = 0;
draw_text(x-(scr/2),y-(3*scr/8)+adj,"speed:");
draw_healthbar(x-(scr/8),y-(3*scr/8)+adj,x+scr/4,y-scr/3+adj,((spd-5)/3)*100,c_red,c_yellow,c_yellow,0,true,true);
adj =3*scr/8;
draw_text(x-(scr/2),y-(3*scr/8)+adj,"accel:");
draw_healthbar(x-(scr/8),y-(3*scr/8)+adj,x+scr/4,y-scr/3+adj,(accel/0.5)*100,c_red,c_yellow,c_yellow,0,true,true);
adj*=2;
draw_text(x-(scr/2),y-(3*scr/8)+adj,"turn:");
draw_healthbar(x-(scr/8),y-(3*scr/8)+adj,x+scr/4,y-scr/3+adj,(turn/8)*100,c_red,c_yellow,c_yellow,0,true,true);
draw_set_color(c_yellow)
draw_text(64,432,string_hash_to_newline(global.preview_charname))
draw_set_color(c_white)

