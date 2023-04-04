function onCreate()
    makeLuaSprite('secret', 'secretLOGO', 50, 450, 0)
    scaleObject('secret', 0.25, 0.25)
    addLuaSprite('secret', true)
    setObjectCamera('secret', 'other')

    setProperty('secret.visible', true)
end