x = xprevious;
y = yprevious;
if (abs(hspeed) >= abs(vspeed) && not place_meeting(x+hspeed,y,obj_col_basic)) 
{ x += hspeed; exit;}
if (abs(vspeed) >= abs(hspeed) && not place_meeting(x,y+vspeed,obj_col_basic)) 
{ y += vspeed; exit;}
speed = 0;
if !sound_isplaying(custom_karts[kart_id].kart_impact){sound_2play(custom_karts[kart_id].kart_impact)}

