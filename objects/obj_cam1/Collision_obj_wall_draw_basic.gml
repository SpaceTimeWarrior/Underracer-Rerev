x = xprevious;
y = yprevious;
if (abs(hspeed) >= abs(vspeed) && not place_meeting(x+hspeed,y,obj_wall_draw_basic)) 
{ x += hspeed; exit;}
if (abs(vspeed) >= abs(hspeed) && not place_meeting(x,y+vspeed,obj_wall_draw_basic)) 
{ y += vspeed; exit;}
speed = 0;

