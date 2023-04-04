function onEvent(name, value1, value2)
    local txt
    txt = value1
    name = "Subtitles"
    blnk = " "
    stop = curBeat + value2

    makeLuaText('text', txt, 300, 500, 500)
    setTextSize('text', 32)
    addLuaText('text', true)
    setObjectCamera('text', 'hud')

function onStepHit()
        if value2 == "" then
            value2 = 4
        end
        if curBeat == stop then
            makeLuaText('text', blnk, 0, 0)
        end 
    end

end