dialogues = []
queueIndex = 0;
active = true;
features =
{
	bgWidth: 20,
	bgHeight: room_height,
	bgX: room_width - bgWidth,
	bgY: 0,	
	bgColor: c_dkgray,
	bgAlpha: 0.7,
	x: bgX,
	y: bgY + bgHeight,
	fontColor: c_white,
	font: fntDialog
}

setActive = function(_active)
{
	active = _active;	
}

getActive = function()
{
	return active	
}

deactivate = function()
{
	active = false;	
}

addToQueue = function(txt)
{
	array_push(dialogues, txt);
}

typeNext = function()
{
	if (queueIndex >= array_length(dialogues)-1)
	{
		self.setActive(false);
		self.resetQueue();
		return
	}
	else
	{
		queueIndex += 1;
	}
}

resetQueue = function()
{
	queueIndex = 0;	
}

endTyping = function()
{
	if (!active) return;
	dialogues = [];
	queueIndex = 0;
}

type = function()
{
	
}