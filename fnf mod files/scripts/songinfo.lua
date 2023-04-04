--determines health
function onSongStart()
    local health
    health = 'Health Points:' + curHealth

    makeLuaText('hp', 'testing testing', 300, 500, 500)
    setTextSize('hp', 32)
    setObjectCamera('hp', 'hud')
    
end

function onBeatHit()
    if currentBeat == 16 then
        addLuaText('hp', true)
        setProperty('hp.visible', true)
    end
end