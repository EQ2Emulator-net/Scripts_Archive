--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	local SPEED = 10

	MovementLoopAddLocation(NPC, -8.44, 0, 12.59, SPEED, 0)
	MovementLoopAddLocation(NPC, -24.89, -0.15, 30.94, SPEED, 0)
	MovementLoopAddLocation(NPC, -22.2, -3.74, 54.9, SPEED, 0)
	MovementLoopAddLocation(NPC, -26.33, -4.5, 65.37, SPEED, 0)
	MovementLoopAddLocation(NPC, -26.62, -4.64, 101.92, SPEED, 0)
	MovementLoopAddLocation(NPC, -26.07, -4.33, 63.27, SPEED, 0)
	MovementLoopAddLocation(NPC, -21.97, -3.79, 55.83, SPEED, math.random(5, 15))
	MovementLoopAddLocation(NPC, -22.63, -3.11, 48.28, SPEED, 0)
	MovementLoopAddLocation(NPC, -22.59, -2.12, 42.09, SPEED, 0)
	MovementLoopAddLocation(NPC, -33.14, -0.72, 41.33, SPEED, 0)
	MovementLoopAddLocation(NPC, -54.07, 2.31, 11.28, SPEED, 0)
	MovementLoopAddLocation(NPC, -53.62, 3.98, -0.51, SPEED, 0)
	MovementLoopAddLocation(NPC, -24.46, 3.47, -27.13, SPEED, math.random(5, 15))
	MovementLoopAddLocation(NPC, -3.68, 2.88, -31.31, SPEED, 0)
	MovementLoopAddLocation(NPC, 22.29, 0.87, -22.73, SPEED, 0)
	MovementLoopAddLocation(NPC, 38.46, -1.28, -9.27, SPEED, 0)
	MovementLoopAddLocation(NPC, 42.6, -1.5, 11.69, SPEED, 0)
	MovementLoopAddLocation(NPC, 58.91, -2, 5.63, SPEED, 0)
	MovementLoopAddLocation(NPC, 86, -2, 0.5, SPEED, math.random(5, 15))
	MovementLoopAddLocation(NPC, 86.72, -2, 11.32, SPEED, 0)
	MovementLoopAddLocation(NPC, 70.72, -2, 5.8, SPEED, 0)
	MovementLoopAddLocation(NPC, 51.75, -1.94, 7.62, SPEED, 0)
	MovementLoopAddLocation(NPC, 35.44, -1.38, 14.88, SPEED, 0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
