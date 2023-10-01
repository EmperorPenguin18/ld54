local move_direction = 2 --0 up, 1 right, 2 down, 3 left
local shoot_direction = 2
local can_shoot = true

function set_frame(e, instance)
	if (move_direction == 0 and shoot_direction == 0)
	then
		action(e, instance, '"type": "animation", "start": 20, "end": 21, "time": 0.3')
	elseif (move_direction == 0 and shoot_direction == 1)
	then
		action(e, instance, '"type": "animation", "start": 16, "end": 17, "time": 0.3')
	elseif (move_direction == 0 and shoot_direction == 2)
	then
		action(e, instance, '"type": "animation", "start": 22, "end": 23, "time": 0.3')
	elseif (move_direction == 0 and shoot_direction == 3)
	then
		action(e, instance, '"type": "animation", "start": 18, "end": 19, "time": 0.3')
	elseif (move_direction == 1 and shoot_direction == 0)
	then
		action(e, instance, '"type": "animation", "start": 4, "end": 5, "time": 0.3')
	elseif (move_direction == 1 and shoot_direction == 1)
	then
		action(e, instance, '"type": "animation", "start": 0, "end": 1, "time": 0.3')
	elseif (move_direction == 1 and shoot_direction == 2)
	then
		action(e, instance, '"type": "animation", "start": 6, "end": 7, "time": 0.3')
	elseif (move_direction == 1 and shoot_direction == 3)
	then
		action(e, instance, '"type": "animation", "start": 2, "end": 3, "time": 0.3')
	elseif (move_direction == 2 and shoot_direction == 0)
	then
		action(e, instance, '"type": "animation", "start": 28, "end": 29, "time": 0.3')
	elseif (move_direction == 2 and shoot_direction == 1)
	then
		action(e, instance, '"type": "animation", "start": 24, "end": 25, "time": 0.3')
	elseif (move_direction == 2 and shoot_direction == 2)
	then
		action(e, instance, '"type": "animation", "start": 30, "end": 31, "time": 0.3')
	elseif (move_direction == 2 and shoot_direction == 3)
	then
		action(e, instance, '"type": "animation", "start": 26, "end": 27, "time": 0.3')
	elseif (move_direction == 3 and shoot_direction == 0)
	then
		action(e, instance, '"type": "animation", "start": 12, "end": 13, "time": 0.3')
	elseif (move_direction == 3 and shoot_direction == 1)
	then
		action(e, instance, '"type": "animation", "start": 8, "end": 9, "time": 0.3')
	elseif (move_direction == 3 and shoot_direction == 2)
	then
		action(e, instance, '"type": "animation", "start": 14, "end": 15, "time": 0.3')
	elseif (move_direction == 3 and shoot_direction == 3)
	then
		action(e, instance, '"type": "animation", "start": 10, "end": 11, "time": 0.3')
	end
end

function player_timer(e, instance)
	can_shoot = true
end

function move_up(e, instance)
	move_direction = 0
	set_frame(e, instance)
end

function move_right(e, instance)
	move_direction = 1
	set_frame(e, instance)
end

function move_down(e, instance)
	move_direction = 2
	set_frame(e, instance)
end

function move_left(e, instance)
	move_direction = 3
	set_frame(e, instance)
end

function shoot_up(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_up.json", 0, -25, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 0
	set_frame(e, instance)
end

function shoot_right(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_right.json", 25, 0, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 1
	set_frame(e, instance)
end

function shoot_down(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_down.json", 0, 25, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 2
	set_frame(e, instance)
end

function shoot_left(e, instance)
	if (can_shoot == true)
	then
		local bullet = spawn(e, instance, "bullet_left.json", -25, 0, true)
		can_shoot = false
		action(e, instance, '"type": "timer", "num": 2, "time": 0.25')
	end
	shoot_direction = 3
	set_frame(e, instance)
end

--[[function release_up(e, instance)
end

function release_right(e, instance)
end

function release_down(e, instance)
end

function release_left(e, instance)
end]]--

