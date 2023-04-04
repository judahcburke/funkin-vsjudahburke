function onStart()
local imgnum
imgnum = math.random(1, 4);
local selected
selected = 'randomImgs/picture' + imgnum;

makeLuaSprite('ri', 40, 150)
setObjectCamera('ri', 'other')
addLuaSprite('ri')
end

function onUpdate()
setProperty('img.visible', true)
end