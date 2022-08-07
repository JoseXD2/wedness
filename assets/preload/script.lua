local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('TransformUN');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local BadEnd = false
local Ending = 0

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Speed Note' then
Ending = Ending + 1
end
end

function onUpdate(elapsed)
if Ending >= 5 then
BadEnd = true
end
end

function onEndSong()
if BadEnd == true then
loadSong('last-day', 'last-day', true);    
else
loadSong('sunsets', 'sunsets', true);
end 
end