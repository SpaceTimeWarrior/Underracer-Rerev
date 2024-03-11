function instance_nearest_notme(xx,yy,obj,me) {
	//instance_nearest_notme(x, y, obj, me)
	{
	nearest = noone;
	dist = -1;
	for (ii=0; ii<instance_number(obj); ii+=1) {
	    var o, d;
	    o = instance_find(obj, ii);
	    d = point_distance(xx, yy, o.x, o.y);
	    if (o != me) { if (nearest == noone || d < dist) { nearest = o; dist = d; } }
	    }
	return nearest;
	}



}
