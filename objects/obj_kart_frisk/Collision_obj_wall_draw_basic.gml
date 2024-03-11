x = xprevious;
y = yprevious;
if (abs(hspeed) >= abs(vspeed) && not (place_meeting(x+hspeed,y,obj_wall_draw_basic))) 
{ x += hspeed; exit;}else if(abs(hspeed) >= abs(vspeed)){
	while(place_meeting(x+hspeed,y,obj_wall_draw_basic)){
		find_nearest_floor(id)
		break;
	}
}
if (abs(vspeed) >= abs(hspeed) && not (place_meeting(x+hspeed,y,obj_wall_draw_basic))) 
{ y += vspeed; exit;}else if(abs(hspeed) >= abs(vspeed)){
	while(place_meeting(x+hspeed,y,obj_wall_draw_basic)){
		find_nearest_floor(id)
		break;
	}
}
speed = 0;
if !sound_isplaying(snd_hit_quiet){sound_2play(snd_hit_quiet)}

