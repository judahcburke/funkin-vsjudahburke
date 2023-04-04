function onCreate()
	-- background shit
	makeLuaSprite('treebg', 'treebg', -500, -50);
	setScrollFactor('treebg', 0.9, 0.9);
	scaleObject('treebg', 2.5, 2.1);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--makeLuaSprite('Fence', 'fence', -500, -50);
		--setScrollFactor('Fence', 0.9, 0.9);
		--scaleObject('Fence', 1.1, 1.1);
	end

	addLuaSprite('treebg', false);
	addLuaSprite('Fence', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end