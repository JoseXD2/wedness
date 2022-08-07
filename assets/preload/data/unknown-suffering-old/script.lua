shake = '0.05, 0.01'

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'shake' then
shake = value2
end
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
triggerEvent('Screen Shake', shake, '0, 0');
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.025);
    end
end