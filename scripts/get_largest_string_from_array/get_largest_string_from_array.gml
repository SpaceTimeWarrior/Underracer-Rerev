// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_largest_string_from_array(arr=array_create(1,array_create(2,""))){
	//arr[x][0]=string;
	//arr[x][1]=font;
	var font = draw_get_font();
	var length = 0;
	var alen = array_length(arr);
	for(var i=0;i<alen;i++){
		draw_set_font(arr[0][1]);
		var tmp = string_width(arr[i][0]);
		if(tmp>length){
			length =tmp; 
		}
	}
	draw_set_font(font);
	return length;
}