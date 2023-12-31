function enemy_bullet(e, instance)
	local rand = math.random(0,1) -- 50% chance
	if (rand == 0)
	then
		local angle = math.random(0, 359)*(math.pi/180)
		local bullet = spawn(e, instance, "enemy_bullet.json", 0, 0, true)
		local speed = 100
		local h = speed*math.sin(angle)
		local v = speed*math.cos(angle)
		action(e, bullet, '"type": "speed", "h": ' .. h .. ', "v": ' .. v)
	end
end

function multiply(e, instance)
	local rand = math.random(0,1)
	if (rand == 0)
	then
		spawn(e, instance, "enemy.json", 1, 0, true)
		spawn(e, instance, "enemy.json", 0, 1, true)
	end
end
