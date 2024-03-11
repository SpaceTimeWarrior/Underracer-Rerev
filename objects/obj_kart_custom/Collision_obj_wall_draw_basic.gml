x = xprevious;
y = yprevious;
if (abs(hspeed) >= abs(vspeed) && not (place_meeting(x+hspeed,y,obj_wall_draw_basic))) 
{ x += hspeed; exit;}else if(abs(hspeed) >= abs(vspeed)){
	while(place_meeting(x+hspeed,y,obj_wall_draw_basic)){
		var nearflor;
		nearflor=instance_nearest(x,y,obj_floor_draw_basic)
		x=nearflor.x+16
		y=nearflor.y+16
		break;
	}
}
if (abs(vspeed) >= abs(hspeed) && not (place_meeting(x+hspeed,y,obj_wall_draw_basic))) 
{ y += vspeed; exit;}else if(abs(hspeed) >= abs(vspeed)){
	while(place_meeting(x+hspeed,y,obj_wall_draw_basic)){
		var nearflor;
		nearflor=instance_nearest(x,y,obj_floor_draw_basic)
		x=nearflor.x+16
		y=nearflor.y+16
		break;
	}
}
speed = 0;
if !sound_isplaying(custom_karts[kart_id].kart_impact){sound_2play(custom_karts[kart_id].kart_impact)}

