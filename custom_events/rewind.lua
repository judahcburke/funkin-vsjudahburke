function onEvent(name, value1, value2)
    name = rewindTime
    local time
    time = value1
    if value2 == 1 then
        curBeat = curBeat - time
    else
        curBeat = curBeat + time
    end
end