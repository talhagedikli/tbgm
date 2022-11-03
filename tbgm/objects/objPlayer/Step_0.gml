// Go to next dialogue
if (keyboard_check_pressed(vk_space))
{
	var _tw = objTypewriter;
	var _ac = _tw.getActive();
	if (_ac)
	{
		_tw.typeNext();
	}
	else
	{
		_tw.setActive(true);
	}
}