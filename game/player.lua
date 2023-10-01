local move_direction = 2 --0 up, 1 right, 2 down, 3 left
local shoot_direction = 2
local can_shoot = true

local function set_frame()
	print(move_direction .. " " .. shoot_direction)
end

function player_timer(e, instance)
	can_shoot = true
end

function move_up(e, instance)
	move_direction = 0
	set_frame()
end

function move_right(e, instance)
	move_direction = 1
	set_frame()
end

function move_down(e, instance)
	move_direction = 2
	set_frame()
end

function move_left(e, instance)
	move_direction = 3
	set_frame()
end

function shoot_up(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_up.json", 0, -25, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 0
	set_frame()
end

function shoot_right(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_right.json", 25, 0, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 1
	set_frame()
end

function shoot_down(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_down.json", 0, 25, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 2
	set_frame()
end

function shoot_left(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_left.json", -25, 0, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 3
	set_frame()
end

--[[function release_up(e, instance)
end

function release_right(e, instance)
end

function release_down(e, instance)
end

function release_left(e, instance)
end]]--

