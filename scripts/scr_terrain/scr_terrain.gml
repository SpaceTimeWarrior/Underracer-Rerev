function terrain_create(argument0, argument1, argument2) {
	//THE TERRAIN SHOULD HAVE THE HIGHEST DEPTH (10000 etc. - it gets set to -1 after initing this though)
	//loads the terrain from a heightmap sprite - it does not matter what the size of the sprite is ( 32x32, 64x64 or 128x128 is recommended)
	//argument0 = sprite
	//argument1 = the size of the terrain squares
	//argument2 = terrain height
	// ****---- ~ Credit goes to: brett14 ~ ----****

	global.swidth=sprite_get_width(argument0);
	global.sheight=sprite_get_height(argument0);
	global.terrainsize = argument1;
	global.terraingrid=ds_grid_create(global.swidth,global.sheight);
	global.terrainmodel=d3d_model_create();
	//draw_sprite_stretched(argument0,0,0,0,global.swidth+2,global.sheight+2)
	for(w=0;w<global.swidth+2;w+=1){
	    for(h=0;h<global.sheight+2;h+=1){
	        val=draw_getpixel(w,h)
	        valex=color_get_value(val)
	        ds_grid_set(global.terraingrid,w,h,valex/240*argument2)
	        }
	    } 
	for(xx=0;xx<global.swidth-1;xx+=1){
	d3d_model_primitive_begin(global.terrainmodel,pr_trianglestrip); 
	adraw=true;
	for (yy=0;yy<global.sheight;yy+=1){
	  adraw = !adraw; 
	  z2=ds_grid_get(global.terraingrid,yy,xx+1);
	  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,(xx+1)*global.terrainsize,z2,0,0,1,adraw,1);
	  z1=ds_grid_get(global.terraingrid,yy,xx);
	  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,xx*global.terrainsize,z1,0,0,1,adraw,0);
	  }
	d3d_model_primitive_end(global.terrainmodel);
	}
	depth=-1;



}
function terrain_draw(argument0) {
	//argument0 = terrain texture
	d3d_set_culling(1);
	d3d_model_draw(global.terrainmodel,0,0,z,background_get_texture(argument0))
	d3d_set_culling(0);



}
function terrain_get_z(argument0, argument1) {
	//returns the height a a position
	//argument0 = the x position to return the height at
	//argument1 = the y position to return the height at

	gx=floor(argument0/global.terrainsize);
	gy=floor(argument1/global.terrainsize);
	ox = argument0-global.terrainsize*gx;
	oy = argument1-global.terrainsize*gy;
	z1=ds_grid_get(global.terraingrid,gx,gy);
	z2=ds_grid_get(global.terraingrid,gx+1,gy);
	z3=ds_grid_get(global.terraingrid,gx+1,gy+1);
	z4=ds_grid_get(global.terraingrid,gx,gy+1);
	try{
	if(ox>oy){
	mz=z1-ox*(z1-z2)/global.terrainsize-oy*(z2-z3)/global.terrainsize;
	}
	else{
	mz=z1-ox*(z4-z3)/global.terrainsize-oy*(z1-z4)/global.terrainsize;
	}
	}catch(_e){
		mz = 0;
	}
	return mz+3



}
function terrain_recreate() {
	/*
	//recreates the model - only need when used with terrain_grid_destroy()
	d3d_model_clear(global.terrainmodel)
	for(xx=0;xx<global.swidth-1;xx+=1){
	d3d_model_primitive_begin(global.terrainmodel,pr_trianglestrip); 
	adraw=true;
	for (yy=0;yy<global.sheight;yy+=1){
	  adraw = !adraw; 
	  z2=ds_grid_get(global.terraingrid,yy,xx+1);
	  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,(xx+1)*global.terrainsize,z2,0,0,1,adraw,1);
	  z1=ds_grid_get(global.terraingrid,yy,xx);
	  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,xx*global.terrainsize,z1,0,0,1,adraw,0);
	  }
	d3d_model_primitive_end(global.terrainmodel);
	}


/* end terrain_recreate */
}
