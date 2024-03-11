function d3d_draw_block(x1, y1, z1, x2, y2, z2, tex, h_repeat, v_repeat) {
	var __x1 = x1;
	var __y1 = y1;
	var __z1 = z1;
	var __x2 = x2;
	var __y2 = y2;
	var __z2 = z2;
	var __tex = tex;
	var __hrepeat = h_repeat;
	var __vrepeat = v_repeat;
	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	
	d3d_primitive_begin_texture(pr_trianglelist, __tex);
	d3d_vertex_normal_texture(__x1, __y1, __z1, 0, 0, -1, 0, 0);
	d3d_vertex_normal_texture(__x1, __y2, __z1, 0, 0, -1, 0, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z1, 0, 0, -1, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z1, 0, 0, -1, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y1, __z1, 0, 0, -1, __hrepeat, 0);
	d3d_vertex_normal_texture(__x1, __y1, __z1, 0, 0, -1, 0, 0);
	d3d_vertex_normal_texture(__x1, __y1, __z2, 0, 0, 1, 0, 0);
	d3d_vertex_normal_texture(__x2, __y1, __z2, 0, 0, 1, __hrepeat, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z2, 0, 0, 1, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z2, 0, 0, 1, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y2, __z2, 0, 0, 1, 0, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y1, __z2, 0, 0, 1, 0, 0);
	d3d_vertex_normal_texture(__x1, __y2, __z1, 0, 1, 0, 0, 0);
	d3d_vertex_normal_texture(__x1, __y2, __z2, 0, 1, 0, 0, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z2, 0, 1, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z2, 0, 1, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y2, __z1, 0, 1, 0, __hrepeat, 0);
	d3d_vertex_normal_texture(__x1, __y2, __z1, 0, 1, 0, 0, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z1, 1, 0, 0, 0, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z2, 1, 0, 0, 0, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y1, __z2, 1, 0, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y1, __z2, 1, 0, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x2, __y1, __z1, 1, 0, 0, __hrepeat, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z1, 1, 0, 0, 0, 0);
	d3d_vertex_normal_texture(__x2, __y1, __z1, 0, -1, 0, 0, 0);
	d3d_vertex_normal_texture(__x2, __y1, __z2, 0, -1, 0, 0, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y1, __z2, 0, -1, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y1, __z2, 0, -1, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y1, __z1, 0, -1, 0, __hrepeat, 0);
	d3d_vertex_normal_texture(__x2, __y1, __z1, 0, -1, 0, 0, 0);
	d3d_vertex_normal_texture(__x1, __y1, __z1, -1, 0, 0, 0, 0);
	d3d_vertex_normal_texture(__x1, __y1, __z2, -1, 0, 0, 0, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y2, __z2, -1, 0, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y2, __z2, -1, 0, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y2, __z1, -1, 0, 0, __hrepeat, 0);
	d3d_vertex_normal_texture(__x1, __y1, __z1, -1, 0, 0, 0, 0);
	d3d_primitive_end();
	gpu_set_texrepeat(__oldrep);
}
function d3d_draw_cone(x1, y1, z1, x2, y2, z2, tex, h_repeat, v_repeat, closed, steps) {

	var __x1 = x1;
	var __y1 = y1;
	var __z1 = z1;
	var __x2 = x2;
	var __y2 = y2;
	var __z2 = z2;
	var __tex = tex;
	var __hrepeat = h_repeat;
	var __vrepeat = v_repeat;
	var __closed = closed;
	var __steps = steps;

	if (__steps < 3)
	{
		__steps = 3;
	}

	if (__steps > 128)
	{
		__steps = 128;
	}

	// Create sin and cos tables
	var __cc;
	var __ss;

	__cc[__steps] = 0;
	__ss[__steps] = 0;

	var __i;
	for(__i = 0; __i <= __steps; __i++)
	{
		var __rad = (__i * 2.0 * pi) / __steps;
		__cc[__i] = cos(__rad);
		__ss[__i] = sin(__rad);
	}

	var __mx = (__x2 + __x1) / 2;
	var __my = (__y2 + __y1) / 2;
	var __rx = (__x2 - __x1) / 2;
	var __ry = (__y2 - __y1) / 2;

	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	

	d3d_primitive_begin_texture(pr_trianglestrip, __tex);

	for(__i = 0; __i <= __steps; __i++)
	{
		d3d_vertex_normal_texture(__mx, __my, __z2, 0, 0, 1, __hrepeat * __i / __steps, __vrepeat);
		d3d_vertex_normal_texture(__mx + __cc[__i]*__rx, __my + __ss[__i]*__ry, __z1, __cc[__i] , __ss[__i] ,0 , __hrepeat * __i / __steps, 0);
	}

	d3d_primitive_end();

	if (__closed == true)
	{
		d3d_primitive_begin_texture(pr_trianglefan, __tex);
		d3d_vertex_normal_texture(__mx, __my, __z1, 0, 0, -1, 0, 0);
		for(__i = __steps; __i >= 0; __i--)
		{
			d3d_vertex_normal_texture(__mx+__cc[__i]*__rx, __my+__ss[__i]*__ry, __z1, 0, 0, -1, 0, 0);		
		}
		d3d_primitive_end();
	}

	gpu_set_texrepeat(__oldrep);
}
function d3d_draw_cylinder(x1, y1, z1, x2, y2, z2, tex, h_repeat, v_repeat, closed, steps) {

	var __x1 = x1;
	var __y1 = y1;
	var __z1 = z1;
	var __x2 = x2;
	var __y2 = y2;
	var __z2 = z2;
	var __tex = tex;
	var __hrepeat = h_repeat;
	var __vrepeat = v_repeat;
	var __closed = closed;
	var __steps = steps;

	if (__steps < 3)
	{
		__steps = 3;
	}

	if (__steps > 128)
	{
		__steps = 128;
	}

	// Create sin and cos tables
	var __cc;
	var __ss;

	__cc[__steps] = 0;
	__ss[__steps] = 0;

	var __i;
	for(__i = 0; __i <= __steps; __i++)
	{
		var __rad = (__i * 2.0 * pi) / __steps;
		__cc[__i] = cos(__rad);
		__ss[__i] = sin(__rad);
	}

	var __mx = (__x2 + __x1) / 2;
	var __my = (__y2 + __y1) / 2;
	var __rx = (__x2 - __x1) / 2;
	var __ry = (__y2 - __y1) / 2;

	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	

	if (__closed == true)
	{
		d3d_primitive_begin_texture(pr_trianglefan, __tex);
		d3d_vertex_normal_texture(__mx, __my, __z2, 0, 0, 1, 0, __vrepeat);
		for(__i = 0; __i <= __steps; __i++)
		{
			d3d_vertex_normal_texture(__mx+__cc[__i]*__rx, __my+__ss[__i]*__ry, __z2, 0, 0, 1, 0, __vrepeat);		
		}
		d3d_primitive_end();
	}

	d3d_primitive_begin_texture(pr_trianglestrip, __tex);

	for(__i = 0; __i <= __steps; __i++)
	{
		d3d_vertex_normal_texture(__mx + __cc[__i]*__rx, __my + __ss[__i]*__ry, __z2, __cc[__i] , __ss[__i] ,0 , __hrepeat * __i / __steps, __vrepeat);
		d3d_vertex_normal_texture(__mx + __cc[__i]*__rx, __my + __ss[__i]*__ry, __z1, __cc[__i] , __ss[__i] ,0 , __hrepeat * __i / __steps, 0);
	}

	d3d_primitive_end();

	if (__closed == true)
	{
		d3d_primitive_begin_texture(pr_trianglefan, __tex);
		d3d_vertex_normal_texture(__mx, __my, __z1, 0, 0, -1, 0, 0);
		for(__i = __steps; __i >= 0; __i--)
		{
			d3d_vertex_normal_texture(__mx+__cc[__i]*__rx, __my+__ss[__i]*__ry, __z1, 0, 0, -1, 0, 0);		
		}
		d3d_primitive_end();
	}

	gpu_set_texrepeat(__oldrep);


}
function d3d_draw_ellipsoid(x1, y1, z1, x2, y2, z2, tex, h_repeat, v_repeat, steps) {

	var __x1 = x1;
	var __y1 = y1;
	var __z1 = z1;
	var __x2 = x2;
	var __y2 = y2;
	var __z2 = z2;
	var __tex = tex;
	var __hrepeat = h_repeat;
	var __vrepeat = v_repeat;
	var __steps = steps;

	if (__steps < 3)
	{
		__steps = 3;
	}

	if (__steps > 128)
	{
		__steps = 128;
	}

	// Create sin and cos tables
	var __cc;
	var __ss;

	__cc[__steps] = 0;
	__ss[__steps] = 0;

	var __i;
	for(__i = 0; __i <= __steps; __i++)
	{
		var __rad = (__i * 2.0 * pi) / __steps;
		__cc[__i] = cos(__rad);
		__ss[__i] = sin(__rad);
	}

	var __mx = (__x2 + __x1) / 2;
	var __my = (__y2 + __y1) / 2;
	var __mz = (__z2 + __z1) / 2;
	var __rx = (__x2 - __x1) / 2;
	var __ry = (__y2 - __y1) / 2;
	var __rz = (__z2 - __z1) / 2;

	var __rows = floor((__steps + 1) / 2);
	var __j;

	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	

	for(__j = 0; __j <= (__rows - 1); __j++)
	{
		var __row1rad = (__j*pi)/__rows;
		var __row2rad = ((__j+1)*pi)/__rows;
		var __rh1 = cos(__row1rad);
		var __rd1 = sin(__row1rad);
		var __rh2 = cos(__row2rad);
		var __rd2 = sin(__row2rad);
	
		d3d_primitive_begin_texture(pr_trianglestrip, __tex);
	
		for(__i = 0; __i <= __steps; __i++)
		{
			// Some common subexpressions here that could be eliminated
			d3d_vertex_normal_texture(__mx+__rx*__rd1*__cc[__i], __my+__ry*__rd1*__ss[__i], __mz+__rz*__rh1,__rd1*__cc[__i], __rd1*__ss[__i], __rh1, __hrepeat*__i/__steps, __j*__vrepeat/__rows);
			d3d_vertex_normal_texture(__mx+__rx*__rd2*__cc[__i], __my+__ry*__rd2*__ss[__i], __mz+__rz*__rh2,__rd2*__cc[__i], __rd2*__ss[__i], __rh2, __hrepeat*__i/__steps, (__j+1)*__vrepeat/__rows);
		}
	
		d3d_primitive_end();
	}
	gpu_set_texrepeat(__oldrep);
}
function d3d_draw_wall(x1, y1, z1, x2, y2, z2, tex, h_repeat, v_repeat) {
	//var ret = global.__d3d;
	//global.__d3d = false;
	//return ret;
	var __x1 = x1;
	var __y1 = y1;
	var __z1 = z1;
	var __x2 = x2;
	var __y2 = y2;
	var __z2 = z2;
	var __tex = tex;
	var __hrepeat = h_repeat;
	var __vrepeat = v_repeat;

	var __xdiff = __x2 - __x1;
	var __ydiff = __y2 - __y1;

	var __lsquared = (__xdiff * __xdiff) + (__ydiff * __ydiff);
	if (__lsquared == 0)
		return 0;
	
	var __l = sqrt(__lsquared);

	var __nx = __ydiff / __l;
	var __ny = -__xdiff / __l;

	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	

	d3d_primitive_begin_texture(pr_trianglefan, __tex);

	d3d_vertex_normal_texture(__x1, __y1, __z1, __nx, __ny, 0, 0, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z1, __nx, __ny, 0, __hrepeat, 0);
	d3d_vertex_normal_texture(__x2, __y2, __z2, __nx, __ny, 0, __hrepeat, __vrepeat);
	d3d_vertex_normal_texture(__x1, __y1, __z2, __nx, __ny, 0, 0, __vrepeat);

	d3d_primitive_end();

	gpu_set_texrepeat(__oldrep);


}
function d3d_end() {
	var ret = global.__d3d;
	global.__d3d = false;
	gpu_set_ztestenable(false);
	gpu_set_zwriteenable(false);
	return ret;
}
function d3d_light_define_direction(light_index, xxx, yyy, zzz, col) {
	draw_light_define_direction( light_index, xxx, yyy, zzz, col );
}
function d3d_light_enable(light_index, enable) {
	draw_light_enable( light_index, enable );
}
function d3d_model_create() {
	var pointcols;
	var linecols;
	var tricols;
	pointcols[0] = -1;
	linecols[0] = -1;
	tricols[0] = -1;
	var model = [ undefined,				// point buffer
				  undefined,				// line buffer
				  undefined,				// tri list buffer
				  undefined,				// point uv buffer
				  undefined,				// line uv buffer
				  undefined,				// tri uv buffer
				  undefined,				// point vertex buffer
				  undefined,				// line vertex buffer
				  undefined,				// tri list buffer			  
				  $00010000,/*draw_get_colour(),*/		// colour used when creating
				  -1,						// last texture used for drawing
				  0,						// num vertices
				  0,						// prim kind
				  0,						// number of non-colour point vertices
				  0,						// number of non-colour line vertices
				  0,						// number of non-colour tri vertices
				  pointcols,				// offsets to point colours
				  linecols,					// offsets to line colours
				  tricols,					// offsets to tri colours
			  
				  0, 0, 0, 0, 0, 0, 0, 0, 0,	// vertex 1
				  0, 0, 0, 0, 0, 0, 0, 0, 0,	// vertex 2
			  
				];
			  
	return model;





}
function d3d_model_draw(model_index, mx, my, mz, text) {

	var m = model_index;

	var tex = text;
	var vertsize = 36;
	var vertuvoffset = 28;
	if (tex!=-1 && tex != m[e__YYM.Texture])
	{	

		var texuvs = texture_get_uvs(tex);
		var uspan = texuvs[2] - texuvs[0];
		var vspan = texuvs[3] - texuvs[1];
		var ubase  = texuvs[0];
		var vbase  = texuvs[1];

	
		// Copy and scale\bias the unmolested UV coords to our buffers
		var __i;
	
		if ((m[e__YYM.PointB] != undefined) && (m[e__YYM.PointUVB] != undefined))
		{
			var numverts = buffer_tell(m[e__YYM.PointUVB]) / 8;
				
			buffer_seek(m[e__YYM.PointUVB], buffer_seek_start, 0);
			var __uvpos = vertuvoffset;
			var __src = m[e__YYM.PointUVB];
			var __dest = m[e__YYM.PointB];
			for(__i = 0; __i < numverts; __i++)
			{
				var __u = buffer_read(__src, buffer_f32);
				var __v = buffer_read(__src, buffer_f32);
			
				__u = (__u * uspan) + ubase;
				__v = (__v * vspan) + vbase;
						
				buffer_poke(__dest, __uvpos, buffer_f32, __u);
				buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
			
				__uvpos += vertsize;
			}
		}
	
		if ((m[e__YYM.LineB] != undefined) && (m[e__YYM.LineUVB] != undefined))
		{
			var numverts = buffer_tell(m[e__YYM.LineUVB]) / 8;
				
			buffer_seek(m[e__YYM.LineUVB], buffer_seek_start, 0);
			var __uvpos = vertuvoffset;
			var __src = m[e__YYM.LineUVB];
			var __dest = m[e__YYM.LineB];
			for(__i = 0; __i < numverts; __i++)
			{
				var __u = buffer_read(__src, buffer_f32);
				var __v = buffer_read(__src, buffer_f32);
			
				__u = (__u * uspan) + ubase;
				__v = (__v * vspan) + vbase;
						
				buffer_poke(__dest, __uvpos, buffer_f32, __u);
				buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
			
				__uvpos += vertsize;
			}
		}
	
		if ((m[e__YYM.TriB] != undefined) && (m[e__YYM.TriUVB] != undefined))
		{
			var numverts = buffer_tell(m[e__YYM.TriUVB]) / 8;
				
			buffer_seek(m[e__YYM.TriUVB], buffer_seek_start, 0);
			var __uvpos = vertuvoffset;
			var __src = m[e__YYM.TriUVB];
			var __dest =m[e__YYM.TriB];
			for(__i = 0; __i < numverts; __i++)
			{
				var __u = buffer_read(__src, buffer_f32);
				var __v = buffer_read(__src, buffer_f32);
			
				__u = (__u * uspan) + ubase;
				__v = (__v * vspan) + vbase;
						
				buffer_poke(__dest, __uvpos, buffer_f32, __u);
				buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
			
				__uvpos += vertsize;
			}
		}
	
	
		m[@e__YYM.Texture] = tex;

		// remove the current Vertex Buffers if present
		if (m[e__YYM.PointVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.PointVB]);
			m[@e__YYM.PointVB] = undefined;
		} // end if

		if (m[e__YYM.LineVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.LineVB]);
			m[@e__YYM.LineVB] = undefined;
		} // end if
	
		if (m[e__YYM.TriVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.TriVB]);
			m[@e__YYM.TriVB] = undefined;
		} // end if
	}


	var currColour = draw_get_colour() | ((draw_get_alpha()*255.0) << 24);
	// if colour is different from the previous cached entry then rebuild the model
	if ((currColour != m[e__YYM.Colour]) && ((m[e__YYM.NumPointCols] > 0) || (m[e__YYM.NumLineCols] > 0) || (m[e__YYM.NumTriCols] > 0))) {

		var __numPointCols = m[e__YYM.NumPointCols];
		var __numLineCols = m[e__YYM.NumLineCols];
		var __numTriCols = m[e__YYM.NumTriCols];

		// go through and change all the entries with no colour in them to be the same as the draw colour
		var __i;
	
		if (m[e__YYM.PointB] != undefined)
		{
			var __offsets = m[e__YYM.PointCols];
			var __dest = m[e__YYM.PointB];
			for(__i = 0; __i < __numPointCols; __i++)
			{
				buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
			}
		}
	
		if (m[e__YYM.LineB] != undefined)
		{
			var __offsets = m[e__YYM.LineCols];
			var __dest = m[e__YYM.LineB];
			for(__i = 0; __i < __numLineCols; __i++)
			{
				buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
			}
		}
	
		if (m[e__YYM.TriB] != undefined)
		{
			var __offsets = m[e__YYM.TriCols];
			var __dest = m[e__YYM.TriB];
			for(__i = 0; __i < __numTriCols; __i++)
			{
				buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
			}
		}
		// remove the current Vertex Buffers if present
		if (m[e__YYM.PointVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.PointVB]);
			m[@e__YYM.PointVB] = undefined;
		} // end if
		if (m[e__YYM.LineVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.LineVB]);
			m[@e__YYM.LineVB] = undefined;
		} // end if
		if (m[e__YYM.TriVB] != undefined) {
			vertex_delete_buffer(m[e__YYM.TriVB]);
			m[@e__YYM.TriVB] = undefined;
		} // end if
		m[@e__YYM.Colour] = currColour;
	} // end if
	// set the translation to this (argument1, argument2, argument3)
	var mW = matrix_get( matrix_world );
	var mT = matrix_build( mx, my, mz, 0, 0, 0, 1, 1, 1 );
	var mNew = matrix_multiply( mT, mW );
	matrix_set( matrix_world, mNew );
	var __oldrep = gpu_get_texrepeat();
	gpu_set_texrepeat(true)	
	// draw the tri list buffer
	if (m[e__YYM.TriB] != undefined) {
		// convert to a vertex buffer if need be
		if (m[e__YYM.TriVB] == undefined) {
			m[@e__YYM.TriVB] = vertex_create_buffer_from_buffer( m[e__YYM.TriB], global.__d3dPrimVF );
			vertex_freeze(m[e__YYM.TriVB]);		
		} // end if
		vertex_submit( m[e__YYM.TriVB], pr_trianglelist, text );
	} // end if
	// draw the line buffer
	if (m[e__YYM.LineB] != undefined) {
		// convert to a vertex buffer if need be
		if (m[e__YYM.LineVB] == undefined) {
			m[@e__YYM.LineVB] = vertex_create_buffer_from_buffer( m[e__YYM.LineB], global.__d3dPrimVF );
			vertex_freeze(m[e__YYM.LineVB]);
		} // end if
		vertex_submit( m[e__YYM.LineVB], pr_linelist, text );
	} // end if
	// draw the point buffer
	if (m[e__YYM.PointB] != undefined) {
		// convert to a vertex buffer if need be
		if (m[e__YYM.PointVB] == undefined) {
			m[@e__YYM.PointVB] = vertex_create_buffer_from_buffer( m[e__YYM.PointB], global.__d3dPrimVF );
			vertex_freeze(m[e__YYM.PointVB]);
		} // end if
		vertex_submit( m[e__YYM.PointVB], pr_pointlist,  text );
	} // end if
	// Restore the matrix
	matrix_set( matrix_world, mW );
	gpu_set_texrepeat(__oldrep);
}
function d3d_model_primitive_begin(model, prim) {
	var m = model;
	m[@ e__YYM.PrimKind] = prim;
}
function d3d_model_primitive_end(model) {
	var m = model;
	m[@ e__YYM.PrimKind] = 0;
	m[@ e__YYM.NumVerts] = 0;
}
function d3d_model_vertex_normal_texture(model, vx, vy, vz, nx, ny, nz, xtex, ytex) {
	__d3d_model_add_vertex( model, vx, vy, vz, nx, ny, nz, $00010000, xtex, ytex );
}
function d3d_primitive_begin_texture(prim, text) {

	if (global.__d3dPrimKind != -1) {
		show_debug_message( "ERROR : cannot begin a primitive before end called on previous")
	}

	global.__d3dPrimKind = prim;
	global.__d3dPrimTex = text;
	var __uvs = texture_get_uvs(global.__d3dPrimTex);
	global.__d3dPrimTexX = __uvs[0];
	global.__d3dPrimTexY = __uvs[1];
	global.__d3dPrimTexW = __uvs[2] - __uvs[0];
	global.__d3dPrimTexH = __uvs[3] - __uvs[1];
	vertex_begin( global.__d3dPrimBuffer, global.__d3dPrimVF );
}
function d3d_primitive_end() {
	if (global.__d3dPrimKind != -1) {

		vertex_end( global.__d3dPrimBuffer );
		vertex_submit( global.__d3dPrimBuffer, global.__d3dPrimKind, global.__d3dPrimTex );

		// mark this as finished
		global.__d3dPrimKind = -1;
	} else {
		show_debug_message( "d3d_primitive_end :: with no d3d_primitive_begin ");
	}
}
function d3d_set_culling(enable) {
	//gpu_set_cullmode( argument0 ? cull_clockwise : cull_noculling );
	gpu_set_cullmode( enable ? cull_counterclockwise : cull_noculling );
}
function d3d_set_fog(enable, col, near, far) {
	gpu_set_fog(enable, col, near, far );
}
function d3d_set_hidden(enable) {
	gpu_set_ztestenable( enable );
}
function d3d_set_lighting(enable) {
	draw_set_lighting( enable );
}
function d3d_set_perspective(enable) {
	//camera_apply(global.__d3dCamera);
	var __persp = enable;
	if (global.__d3d == false)
		__persp = false;
	// Now find all cameras everywhere - the default camera, all the views in the current room and all the cameras in every other room
	// NOTE: this currently won't handle rooms that are created in code (using room_add())
	// The default camera is automatically updated by the runner so we just need to give it a hint of whether it is ortho or perspective
	var __mat = camera_get_proj_mat(camera_get_default());

	if (__persp)
	{
		__mat[11] = 1.0;
	}
	else
	{
		__mat[11] = 0.0;
	}
	camera_set_proj_mat(camera_get_default(), __mat);
	// Now loop through all the others
	var __numcams = 0;
	var __cams = [];
	var __i;
	for(__i = 0; __i < 8; __i++)
	{
		if (view_camera[__i] != -1)
		{
			__cams[__numcams*3] = view_camera[__i];
			__cams[__numcams*3+1] = view_camera[__i];
			__cams[__numcams*3+2] = view_camera[__i];
			__numcams++;
		}
	}
	var __currroom = room_first;
	while(__currroom != -1)
	{
		for(__i = 0; __i < 8; __i++)
		{
			var __cam = room_get_camera(__currroom, __i);
			if (__cam != -1)
			{
				__cams[__numcams] = __cam;
				__numcams++;
			}
		}
		__currroom = room_next(__currroom);
	}
	// Now loop through all the cameras
	for(__i = 0; __i < __numcams; __i++)
	{
		var __cam = __cams[__i];
		var __mat = camera_get_proj_mat(__cam);
		var __ispersp = (__mat[11] != 0.0) ? true : false;
	
		if (__ispersp != __persp)
		{
			// Okay, I'm going to assume that, if this is an imported project, all the cameras that have been set up are view-based
			// This means that they should have valid view parameters
			if (camera_get_view_width(__cam) > 0.0)
			{
				// okay, we'll assume this is a camera that has been previously set up with a view
				var __width = camera_get_view_width(__cam);
				var __height = camera_get_view_height(__cam);			
			
				if (__persp)
				{
					var __projmat = matrix_build_projection_perspective(1.0, -(__height/__width), 1.0, 32000.0);
					camera_set_proj_mat(__cam, __projmat);
				}
				else
				{
					var __projmat = matrix_build_projection_ortho(__width, __height, -16000.0, 16000.0);
					camera_set_proj_mat(__cam, __projmat);
				}
			}
		}
	}
	//camera_apply(camera_get_active());
}
function d3d_set_projection_ext(xfrom, yfrom, zfrom, xto, yto, zto, xup, yup, zup, fov, aspect, zmin, zmax) {
	var mV = matrix_build_lookat( xfrom, yfrom, zfrom, 
								 xto, yto, zto,
								 xup, yup, zup );
	var mP = matrix_build_projection_perspective_fov( -fov, -aspect, zmin, zmax );
	camera_set_view_mat( camera_get_active(), mV );
	camera_set_proj_mat( camera_get_active(), mP );
	camera_apply( camera_get_active() );
}
function d3d_set_projection_ortho(xx, yy, ww/*view width*/, hh/*view height*/, angle) {


	var mV = matrix_build_lookat( xx+ww/2, yy+hh/2, -16000, 
								  xx+ww/2, yy+hh/2, 0,
								 dsin(-angle), dcos(-angle), 0 );
	var mP = matrix_build_projection_ortho( ww, hh, 1, 32000 );

	//camera_set_view_mat( global.__d3dCamera, mV );
	//camera_set_proj_mat( global.__d3dCamera, mP );
	//camera_apply( global.__d3dCamera );
	camera_set_view_mat( camera_get_active(), mV );
	camera_set_proj_mat( camera_get_active(), mP );
	camera_apply( camera_get_active() );
}
function d3d_set_shading() {
	if (!global.__d3dDeprecatedMessage[0]) {
		show_debug_message( "d3d_set_shading is deprecated as it needs to be done in the shader now" );
		global.__d3dDeprecatedMessage[0] = true;
	} 
}
function d3d_start() {
	var ret = global.__d3d;
	global.__d3d = true;
	//camera_apply(global.__d3dCamera);
	gpu_set_ztestenable(true);
	gpu_set_zwriteenable(true);
	return ret;
}
function d3d_transform_add_rotation_x(angle) {

	// get the sin and cos of the angle passed in
	var c = dcos(angle);
	var s = dsin(angle);

	// build the rotation matrix
	var mT = matrix_build_identity();
	mT[5] = c;
	mT[6] = -s;

	mT[9] = s;
	mT[10] = c;

	var m = matrix_get( matrix_world );
	var mR = matrix_multiply( m, mT );
	matrix_set( matrix_world, mR );
}
function d3d_transform_add_rotation_y(angle) {

	// get the sin and cos of the angle passed in
	var c = dcos(angle);
	var s = dsin(angle);

	// build the rotation matrix
	var mT = matrix_build_identity();
	mT[0] = c;
	mT[2] = s;

	mT[8] = -s;
	mT[10] = c;

	var m = matrix_get( matrix_world );
	var mR = matrix_multiply( m, mT );
	matrix_set( matrix_world, mR );
}
function d3d_transform_add_rotation_z(angle) {
	// get the sin and cos of the angle passed in
	var c = dcos(angle);
	var s = dsin(angle);

	// build the rotation matrix
	var mT = matrix_build_identity();
	mT[0] = c;
	mT[1] = -s;

	mT[4] = s;
	mT[5] = c;

	var m = matrix_get( matrix_world );
	var mR = matrix_multiply( m, mT );
	matrix_set( matrix_world, mR );
}
function d3d_transform_add_translation(xtranslation, ytranslation, ztranslation) {
	// build the rotation matrix
	var mT = matrix_build_identity();
	mT[12] = xtranslation;
	mT[13] = ytranslation;
	mT[14] = ztranslation;
	var m = matrix_get( matrix_world );
	var mR = matrix_multiply( m, mT );
	matrix_set( matrix_world, mR );
}
function d3d_transform_set_identity() {
	var i = matrix_build_identity();
	matrix_set( matrix_world, i)
}
function d3d_vertex_normal_texture(xx, yy, zz, nx, ny, nz, u, v) {
	vertex_position_3d( global.__d3dPrimBuffer, xx, yy, zz );
	vertex_normal( global.__d3dPrimBuffer, nx, ny, nz );
	vertex_colour( global.__d3dPrimBuffer, draw_get_colour(), draw_get_alpha() );
	vertex_texcoord( global.__d3dPrimBuffer, (u * global.__d3dPrimTexW) + global.__d3dPrimTexX, (v * global.__d3dPrimTexH) + global.__d3dPrimTexY );
}
function __d3d_model_add_vertex(model, xx, yy, zz, nx, ny, nz, color, tu, tv) {

		var m = model;
		var i = e__YYM.TriB;
		var uv_i = e__YYM.TriUVB;
		var colarrayi = e__YYM.TriCols;
		var colnum = e__YYM.NumTriCols;
		switch(m[e__YYM.PrimKind])
		{
		case pr_pointlist:
			i = e__YYM.PointB;
			uv_i = e__YYM.PointUVB;
			colarrayi = e__YYM.PointCols;
			colnum = e__YYM.NumPointCols;
			break;
		case pr_linelist:
		case pr_linestrip:
			i = e__YYM.LineB;
			uv_i = e__YYM.LineUVB;
			colarrayi = e__YYM.LineCols;
			colnum = e__YYM.NumLineCols;
			break;
		}

		var colarray = m[colarrayi];

		// create the buffer if we need to
		var b = m[i];
		if (b == undefined) {
			b = buffer_create( 36, buffer_grow, 1 );
			m[@i] = b;
		} // end if

		// create the uv buffer if we need to
		var uvb = m[uv_i];
		if (uvb == undefined)
		{
			uvb = buffer_create(8, buffer_grow, 1);
			m[@uv_i] = uvb;
		}

		var globalcol = false;
		if (color == $00010000)
		{
			globalcol = true;
		}

		// add the vertex in
		var c = m[e__YYM.NumVerts];
		switch(m[e__YYM.PrimKind])
		{
		case pr_pointlist:
		case pr_linelist:
		case pr_trianglelist:
			buffer_write( b, buffer_f32, xx );		// x
			buffer_write( b, buffer_f32, yy );		// y
			buffer_write( b, buffer_f32, zz );		// z
			buffer_write( b, buffer_f32, nx );		// nx
			buffer_write( b, buffer_f32, ny );		// ny
			buffer_write( b, buffer_f32, nz );		// nz
			buffer_write( b, buffer_u32, color );		// colour
			buffer_write( b, buffer_f32, tu );		// u
			buffer_write( b, buffer_f32, tv );		// v		
	
			buffer_write( uvb, buffer_f32, tu );
			buffer_write( uvb, buffer_f32, tv );
			++c;
	
			if (globalcol)
			{
				colarray[ m[colnum]] = buffer_tell(b) - 12;
				m[@ colnum]++;
			}
			break;
		case pr_linestrip:
			// add the previous if we are on vertex 1 or above
			if (c >= 2) {
				buffer_write( b, buffer_f32, m[ e__YYM.V1X ] );		// x
				buffer_write( b, buffer_f32, m[ e__YYM.V1Y ] );		// y
				buffer_write( b, buffer_f32, m[ e__YYM.V1Z ] );		// z
				buffer_write( b, buffer_f32, m[ e__YYM.V1NX ] );	// nx
				buffer_write( b, buffer_f32, m[ e__YYM.V1NY ] );	// ny
				buffer_write( b, buffer_f32, m[ e__YYM.V1NZ ] );	// nz
				buffer_write( b, buffer_u32, m[ e__YYM.V1C ] );		// colour
				buffer_write( b, buffer_f32, m[ e__YYM.V1U ] );		// u
				buffer_write( b, buffer_f32, m[ e__YYM.V1V ] );		// v
		
				buffer_write( uvb, buffer_f32, m[ e__YYM.V1U ] );
				buffer_write( uvb, buffer_f32, m[ e__YYM.V1V ] );	
				++c;
		
				if (globalcol)
				{
					colarray[ m[colnum]] = buffer_tell(b) - 12;
					m[@ colnum]++;
				}
			} // end if	
	
			m[@ e__YYM.V1X ] = xx;
			m[@ e__YYM.V1Y ] = yy;
			m[@ e__YYM.V1Z ] = zz;
			m[@ e__YYM.V1NX ] = nx;
			m[@ e__YYM.V1NY ] = ny;
			m[@ e__YYM.V1NZ ] = nz;
			m[@ e__YYM.V1C ] = color;
			m[@ e__YYM.V1U ] = tu;
			m[@ e__YYM.V1V ] = tv;
	
			buffer_write( b, buffer_f32, xx );		// x
			buffer_write( b, buffer_f32, yy );		// y
			buffer_write( b, buffer_f32, zz );		// z
			buffer_write( b, buffer_f32, nx );		// nx
			buffer_write( b, buffer_f32, ny );		// ny
			buffer_write( b, buffer_f32, nz );		// nz
			buffer_write( b, buffer_u32, color );		// colour
			buffer_write( b, buffer_f32, tu );		// u
			buffer_write( b, buffer_f32, tv );		// v	
	
			buffer_write( uvb, buffer_f32, tu );
			buffer_write( uvb, buffer_f32, tv );
			++c;
	
			if (globalcol)
			{
				colarray[ m[colnum]] = buffer_tell(b) - 12;
				m[@ colnum]++;
			}	
			break;
		case pr_trianglestrip:
			// add the previous if we are on vertex 1 or above
			var flip = ((c & 1) == 1) ? true : false;
			if (c >= 3) {
				if (flip)
				{						
					buffer_write( b, buffer_f32, m[ e__YYM.V2X ] );		// x
					buffer_write( b, buffer_f32, m[ e__YYM.V2Y ] );		// y
					buffer_write( b, buffer_f32, m[ e__YYM.V2Z ] );		// z
					buffer_write( b, buffer_f32, m[ e__YYM.V2NX ] );	// nx
					buffer_write( b, buffer_f32, m[ e__YYM.V2NY ] );	// ny
					buffer_write( b, buffer_f32, m[ e__YYM.V2NZ ] );	// nz
					buffer_write( b, buffer_u32, m[ e__YYM.V2C ] );		// colour
					buffer_write( b, buffer_f32, m[ e__YYM.V2U ] );		// u
					buffer_write( b, buffer_f32, m[ e__YYM.V2V ] );		// v
		
					buffer_write( uvb, buffer_f32, m[ e__YYM.V2U ] );
					buffer_write( uvb, buffer_f32, m[ e__YYM.V2V ] );
					++c;
				
					buffer_write( b, buffer_f32, m[ e__YYM.V1X ] );		// x
					buffer_write( b, buffer_f32, m[ e__YYM.V1Y ] );		// y
					buffer_write( b, buffer_f32, m[ e__YYM.V1Z ] );		// z
					buffer_write( b, buffer_f32, m[ e__YYM.V1NX ] );	// nx
					buffer_write( b, buffer_f32, m[ e__YYM.V1NY ] );	// ny
					buffer_write( b, buffer_f32, m[ e__YYM.V1NZ ] );	// nz
					buffer_write( b, buffer_u32, m[ e__YYM.V1C ] );		// colour
					buffer_write( b, buffer_f32, m[ e__YYM.V1U ] );		// u
					buffer_write( b, buffer_f32, m[ e__YYM.V1V ] );		// v
		
					buffer_write( uvb, buffer_f32, m[ e__YYM.V1U ] );
					buffer_write( uvb, buffer_f32, m[ e__YYM.V1V ] );
					++c;
				}
				else
				{
					buffer_write( b, buffer_f32, m[ e__YYM.V1X ] );		// x
					buffer_write( b, buffer_f32, m[ e__YYM.V1Y ] );		// y
					buffer_write( b, buffer_f32, m[ e__YYM.V1Z ] );		// z
					buffer_write( b, buffer_f32, m[ e__YYM.V1NX ] );	// nx
					buffer_write( b, buffer_f32, m[ e__YYM.V1NY ] );	// ny
					buffer_write( b, buffer_f32, m[ e__YYM.V1NZ ] );	// nz
					buffer_write( b, buffer_u32, m[ e__YYM.V1C ] );		// colour
					buffer_write( b, buffer_f32, m[ e__YYM.V1U ] );		// u
					buffer_write( b, buffer_f32, m[ e__YYM.V1V ] );		// v
		
					buffer_write( uvb, buffer_f32, m[ e__YYM.V1U ] );
					buffer_write( uvb, buffer_f32, m[ e__YYM.V1V ] );
					++c;
		
					buffer_write( b, buffer_f32, m[ e__YYM.V2X ] );		// x
					buffer_write( b, buffer_f32, m[ e__YYM.V2Y ] );		// y
					buffer_write( b, buffer_f32, m[ e__YYM.V2Z ] );		// z
					buffer_write( b, buffer_f32, m[ e__YYM.V2NX ] );	// nx
					buffer_write( b, buffer_f32, m[ e__YYM.V2NY ] );	// ny
					buffer_write( b, buffer_f32, m[ e__YYM.V2NZ ] );	// nz
					buffer_write( b, buffer_u32, m[ e__YYM.V2C ] );		// colour
					buffer_write( b, buffer_f32, m[ e__YYM.V2U ] );		// u
					buffer_write( b, buffer_f32, m[ e__YYM.V2V ] );		// v
		
					buffer_write( uvb, buffer_f32, m[ e__YYM.V2U ] );
					buffer_write( uvb, buffer_f32, m[ e__YYM.V2V ] );
					++c;
				}					
		
				if (globalcol)
				{
					colarray[ m[colnum]] = buffer_tell(b) - (12 + 36) ;
					m[@ colnum]++;
			
					colarray[ m[colnum]] = buffer_tell(b) - 12;
					m[@ colnum]++;
				}	
			} // end if	
	
			m[@ e__YYM.V1X ] = m[ e__YYM.V2X ];
			m[@ e__YYM.V1Y ] = m[ e__YYM.V2Y ];
			m[@ e__YYM.V1Z ] = m[ e__YYM.V2Z ];
			m[@ e__YYM.V1NX ] = m[ e__YYM.V2NX ];
			m[@ e__YYM.V1NY ] = m[ e__YYM.V2NY ];
			m[@ e__YYM.V1NZ ] = m[ e__YYM.V2NZ ];
			m[@ e__YYM.V1C ] = m[ e__YYM.V2C ];
			m[@ e__YYM.V1U ] = m[ e__YYM.V2U ];
			m[@ e__YYM.V1V ] = m[ e__YYM.V2V ];
	
			m[@ e__YYM.V2X ] = xx;
			m[@ e__YYM.V2Y ] = yy;
			m[@ e__YYM.V2Z ] = zz;
			m[@ e__YYM.V2NX ] = nx;
			m[@ e__YYM.V2NY ] = ny;
			m[@ e__YYM.V2NZ ] = nz;
			m[@ e__YYM.V2C ] = color;
			m[@ e__YYM.V2U ] = tu;
			m[@ e__YYM.V2V ] = tv;
	
			buffer_write( b, buffer_f32, xx );		// x
			buffer_write( b, buffer_f32, yy );		// y
			buffer_write( b, buffer_f32, zz );		// z
			buffer_write( b, buffer_f32, nx );		// nx
			buffer_write( b, buffer_f32, ny );		// ny
			buffer_write( b, buffer_f32, nz );		// nz
			buffer_write( b, buffer_u32, color );		// colour
			buffer_write( b, buffer_f32, tu );		// u
			buffer_write( b, buffer_f32, tv );		// v
	
			buffer_write( uvb, buffer_f32, tu );
			buffer_write( uvb, buffer_f32, tv );
	
			if (globalcol)
			{
				colarray[ m[colnum]] = buffer_tell(b) - 12;
				m[@ colnum]++;
			}	
			++c;
			break;
		case pr_trianglefan:
			if (c==0) {
				m[@ e__YYM.V1X ] = xx;
				m[@ e__YYM.V1Y ] = yy;
				m[@ e__YYM.V1Z ] = zz;
				m[@ e__YYM.V1NX ] = nx;
				m[@ e__YYM.V1NY ] = ny;
				m[@ e__YYM.V1NZ ] = nz;
				m[@ e__YYM.V1C ] = color;
				m[@ e__YYM.V1U ] = tu;
				m[@ e__YYM.V1V ] = tv;
			} // end if
	
			if (c >= 3) {
				buffer_write( b, buffer_f32, m[ e__YYM.V1X ] );		// x
				buffer_write( b, buffer_f32, m[ e__YYM.V1Y ] );		// y
				buffer_write( b, buffer_f32, m[ e__YYM.V1Z ] );		// z
				buffer_write( b, buffer_f32, m[ e__YYM.V1NX ] );	// nx
				buffer_write( b, buffer_f32, m[ e__YYM.V1NY ] );	// ny
				buffer_write( b, buffer_f32, m[ e__YYM.V1NZ ] );	// nz
				buffer_write( b, buffer_u32, m[ e__YYM.V1C ] );		// colour
				buffer_write( b, buffer_f32, m[ e__YYM.V1U ] );		// u
				buffer_write( b, buffer_f32, m[ e__YYM.V1V ] );		// v
		
				buffer_write( uvb, buffer_f32, m[ e__YYM.V1U ] );
				buffer_write( uvb, buffer_f32, m[ e__YYM.V1V ] );
				++c;
		
				buffer_write( b, buffer_f32, m[ e__YYM.V2X ] );		// x
				buffer_write( b, buffer_f32, m[ e__YYM.V2Y ] );		// y
				buffer_write( b, buffer_f32, m[ e__YYM.V2Z ] );		// z
				buffer_write( b, buffer_f32, m[ e__YYM.V2NX ] );	// nx
				buffer_write( b, buffer_f32, m[ e__YYM.V2NY ] );	// ny
				buffer_write( b, buffer_f32, m[ e__YYM.V2NZ ] );	// nz
				buffer_write( b, buffer_u32, m[ e__YYM.V2C ] );		// colour
				buffer_write( b, buffer_f32, m[ e__YYM.V2U ] );		// u
				buffer_write( b, buffer_f32, m[ e__YYM.V2V ] );		// v
		
				buffer_write( uvb, buffer_f32, m[ e__YYM.V2U ] );
				buffer_write( uvb, buffer_f32, m[ e__YYM.V2V ] );
				++c;
		
				if (globalcol)
				{
					colarray[ m[colnum]] = buffer_tell(b) - (12 + 36) ;
					m[@ colnum]++;
			
					colarray[ m[colnum]] = buffer_tell(b) - 12;
					m[@ colnum]++;
				}	
			} // end if	
	
			m[@ e__YYM.V2X ] = xx;
			m[@ e__YYM.V2Y ] = yy;
			m[@ e__YYM.V2Z ] = zz;
			m[@ e__YYM.V2NX ] = nx;
			m[@ e__YYM.V2NY ] = ny;
			m[@ e__YYM.V2NZ ] = nz;
			m[@ e__YYM.V2C ] = color;
			m[@ e__YYM.V2U ] = tu;
			m[@ e__YYM.V2V ] = tv;
	
			buffer_write( b, buffer_f32, xx );		// x
			buffer_write( b, buffer_f32, yy );		// y
			buffer_write( b, buffer_f32, zz );		// z
			buffer_write( b, buffer_f32, nx );		// nx
			buffer_write( b, buffer_f32, ny );		// ny
			buffer_write( b, buffer_f32, nz );		// nz
			buffer_write( b, buffer_u32, color );		// colour
			buffer_write( b, buffer_f32, tu );		// u
			buffer_write( b, buffer_f32, tv );		// v
	
			buffer_write( uvb, buffer_f32, tu );
			buffer_write( uvb, buffer_f32, tv );
			++c;
	
			if (globalcol)
			{
				colarray[ m[colnum]] = buffer_tell(b) - 12;
				m[@ colnum]++;
			}	
			break;
		} 
		m[@ e__YYM.NumVerts ] = c;
		m[@ colarrayi] = colarray;	// this is probably super-bad - may switch over to using buffers for the colour offset tables rather than arrays to avoid copies
}
function __init_d3d() {
	gml_pragma( "global", "__init_d3d();");
	// setup the depth variable to a sensible default
	global.__d3d=false;
	global.__d3dDepth=0;
	global.__d3dCamera=camera_create();
	global.__d3dPrimKind = -1;
	global.__d3dPrimTex = -1;
	global.__d3dPrimBuffer=vertex_create_buffer();
	vertex_format_begin();
		vertex_format_add_position_3d();
		vertex_format_add_normal();
		vertex_format_add_colour();
		vertex_format_add_texcoord(); 
	global.__d3dPrimVF=vertex_format_end();
	global.__d3dDeprecatedMessage = [ false ];
	enum e__YYM
	{
		PointB,
		LineB,
		TriB,
		PointUVB,
		LineUVB,
		TriUVB,
		PointVB,
		LineVB,
		TriVB,
		Texture,
		Colour,
		NumVerts,
		PrimKind,
		NumPointCols,
		NumLineCols,
		NumTriCols,
		PointCols,
		LineCols,
		TriCols,
		// these are used when building model primitives
		V1X,
		V1Y,
		V1Z,
		V1NX,
		V1NY,
		V1NZ,
		V1C,
		V1U,
		V1V,
		V2X,
		V2Y,
		V2Z,
		V2NX,
		V2NY,
		V2NZ,
		V2C,
		V2U,
		V2V,
	};
	enum e__YYMKIND
	{
		PRIMITIVE_BEGIN,
		PRIMITIVE_END,
		VERTEX,
		VERTEX_COLOR,
		VERTEX_TEX,
		VERTEX_TEX_COLOR,
		VERTEX_N,
		VERTEX_N_COLOR,
		VERTEX_N_TEX,
		VERTEX_N_TEX_COLOR,
		SHAPE_BLOCK,
		SHAPE_CYLINDER,
		SHAPE_CONE,
		SHAPE_ELLIPSOID,
		SHAPE_WALL,
		SHAPE_FLOOR,
	};
}

