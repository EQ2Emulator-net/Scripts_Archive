--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	local SPEED = 10
	
	MovementLoopAddLocation(NPC, -3.87, 3, -57.92, SPEED, 0)
	MovementLoopAddLocation(NPC, -4.55, 2.86, -29.54, SPEED, 0)
	MovementLoopAddLocation(NPC, -15.74, 3, -29.83, SPEED, 0)
	MovementLoopAddLocation(NPC, -55.1, 3.72, 0.18, SPEED, 0)
	MovementLoopAddLocation(NPC, -54.73, 2.45, 9.2, SPEED, 0)
	MovementLoopAddLocation(NPC, -42.97, -0.59, 28.6, SPEED, 0)
	MovementLoopAddLocation(NPC, -36.87, 0, 22.8, SPEED, math.random(5, 20))
	MovementLoopAddLocation(NPC, -9.87, 0, 7.01, SPEED, 0)
	MovementLoopAddLocation(NPC, 4.88, 0.05, 15.02, SPEED, 0)
	MovementLoopAddLocation(NPC, 11.86, 0, 12.14, SPEED, 0)
	MovementLoopAddLocation(NPC, 10.59, 0, -5.24, SPEED, math.random(5, 20))
	MovementLoopAddLocation(NPC, -7.73, 0, -12.02, SPEED, 0)
	MovementLoopAddLocation(NPC, -14.86, 0, -0.26, SPEED, 0)
	MovementLoopAddLocation(NPC, -7.85, 0, 11.43, SPEED, 0)
	MovementLoopAddLocation(NPC, 25.33, -0.31, 15.05, SPEED, math.random(5, 20))
	MovementLoopAddLocation(NPC, 34.24, -1.39, 15.11, SPEED, 0)
	MovementLoopAddLocation(NPC, 42.52, -1.5, 11.79, SPEED, 0)
	MovementLoopAddLocation(NPC, 37.91, -1.18, -11.15, SPEED, 0)
	MovementLoopAddLocation(NPC, 8.34, 1.88, -28.38, SPEED, 0)
	MovementLoopAddLocation(NPC, -3.42, 2.85, -30.85, SPEED, 0)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end
