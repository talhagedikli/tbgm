draw_set_font(fntDialog);


if (active && array_length(dialogues) > 0)
{
	draw_text(0, room_height, dialogues[queueIndex]);	
}


draw_set_font(-1);