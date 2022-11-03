var _wc = call_later(1, time_source_units_frames, function()
{
	window_center();
});

var _sc = call_later(1, time_source_units_frames, function() 
{
	var _id = view_camera[0];
	var _cw = camera_get_view_width(_id);
	var _ch = camera_get_view_height(_id);
	
	var _dx = (_cw - room_width) * 0.5;
	var _dy = (_ch - room_height) * 0.5;
	
	camera_set_view_pos(_id, (-1) * _dx, (-1) * _dy);
});