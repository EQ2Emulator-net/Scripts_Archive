--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -4.28, -6.67, 41.9, 3, 0)
	MovementLoopAddLocation(NPC, -3.91, -7, 55.09, 3, 0)
	MovementLoopAddLocation(NPC, 16.9, -7, 56.4, 3, 0)
	MovementLoopAddLocation(NPC, 42.63, -5.75, 45.02, 3, 0)
	MovementLoopAddLocation(NPC, 24.91, -5, 27.43, 3, 0)
	MovementLoopAddLocation(NPC, 35.62, -4.36, 23.49, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, 49.33, 1.87, 25.42, 3, 0)
	MovementLoopAddLocation(NPC, 50.05, 2, 16.59, 3, 0)
	MovementLoopAddLocation(NPC, 36.91, 2.25, 9.9, 3, 0)
	MovementLoopAddLocation(NPC, 41.25, 3, 3.85, 3, 0)
	MovementLoopAddLocation(NPC, 36.61, 5.25, -12.45, 3, 0)
	MovementLoopAddLocation(NPC, 16.85, 4.68, -16.27, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, -4.91, 3, -28.45, 3, 0)
	MovementLoopAddLocation(NPC, -6.21, 4, -44.52, 3, 0)
	MovementLoopAddLocation(NPC, -29.21, 4.18, -87.21, 3, 0)
	MovementLoopAddLocation(NPC, -0.93, 5, -34.29, 3, 0)
	MovementLoopAddLocation(NPC, -11.73, 2, -4.82, 3, 0)
	MovementLoopAddLocation(NPC, -19.76, 1.83, 4.02, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, -26.49, -0.76, 1.73, 3, 0)
	MovementLoopAddLocation(NPC, -28, -0.75, 5.77, 3, 0)
	MovementLoopAddLocation(NPC, -16.75, -5.02, 10.26, 3, 0)
	MovementLoopAddLocation(NPC, -13.14, -6.3, 30.08, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end