function instance_create(xxx, yyy, obj) {
	var myDepth = object_get_depth( obj );
	return instance_create_depth( xxx, yyy, myDepth, obj );
}
