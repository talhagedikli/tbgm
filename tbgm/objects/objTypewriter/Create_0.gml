dialogues = []
queueIndex = 0;
active = true;


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
	self.dialogues = [];
	self.queueIndex = 0;
}