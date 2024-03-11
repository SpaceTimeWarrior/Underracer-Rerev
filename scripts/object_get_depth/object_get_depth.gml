// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function object_get_depth(argument0) {
	var objID = argument0;
	var ret = 0;
	if (objID >= 0) && (objID < array_length(global.__objectID2Depth)) {
		ret = global.__objectID2Depth[objID];
	} // end if
	return ret;
}
