-- Lua stuff
function onCreate()
	-- triggered when the lua file is started

	-- create a lua sprite called "kaitobg"
	makeAnimatedLuaSprite('kaitobg', 'kaitobg',1300, 800);
	addAnimationByPrefix('kaitobg', 'first', 'kaitobg', 24, false);
	objectPlayAnimation('kaitobg', 'first');
	scaleObject('kaitobg', 1.5, 1.5);
	addLuaSprite('kaitobg', false); -- false = add behind characters, true = add over characters
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('kaitobg', 'first');
	end
end

function onStepHit()
	-- triggered 16 times per section
	setProperty('kaitobg.scale.x', getProperty('kaitobg.scale.x'));
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('kaitobg', 'first');
	end
end