if (active && array_length(dialogues) > 0)
{
	// Draw Background
	draw_set_color(features.bgColor);
	draw_set_alpha(features.bgAlpha);
	
	var _x = features.bgX;
	var _y = features.bgY;
	var _w = features.bgWidth;
	var _h = features.bgHeight;
	
	draw_rectangle(_x, _y, _x + _w, _y + _h, false);
	
	draw_set_color(c_white);
	draw_set_alpha(1)
	
	// Draw text
	draw_set_font(features.font);
	draw_set_color(features.fontColor);
	
	var _d = dialogues[queueIndex];
	
	draw_text(features.x, features.y, _d);	
	
	draw_set_color(c_white);
	draw_set_font(-1);
}



