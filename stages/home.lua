function onCreate()
	-- background shit
	makeLuaSprite('homebg', 'homebg', -500, -100);
	setScrollFactor('homebg', 0.9, 0.9);
	scaleObject('homebg', 1.5, 1.6);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--makeLuaSprite('Fence', 'fence', -500, -50);
		--setScrollFactor('Fence', 0.9, 0.9);
		--scaleObject('Fence', 1.1, 1.1);
	end

	addLuaSprite('homebg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end