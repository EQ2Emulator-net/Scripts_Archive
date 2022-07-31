--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -27.04, -0.75, 2.22, 10, 0)
	MovementLoopAddLocation(NPC, -28.3, -0.75, 6.03, 10, 0)
	MovementLoopAddLocation(NPC, -17.77, -5.03, 10.37, 10, 0)
	MovementLoopAddLocation(NPC, -25.29, -6.75, 31.36, 10, 0)
	MovementLoopAddLocation(NPC, -7.63, -6.77, 41.6, 10, 0)
	MovementLoopAddLocation(NPC, 6.32, -6.64, 61.05, 10, math.random(5, 25))
	MovementLoopAddLocation(NPC, 7.27, -0.14, 74.06, 10, 0)
	MovementLoopAddLocation(NPC, 16.17, -0.14, 74.57, 10, 0)
	MovementLoopAddLocation(NPC, 17.32, -7, 59.01, 10, 0)
	MovementLoopAddLocation(NPC, 34.06, -7, 53.77, 10, 0)
	MovementLoopAddLocation(NPC, 32.02, -5, 23.81, 10, 0)
	MovementLoopAddLocation(NPC, 49.39, 1.88, 25.53, 10, 0)
	MovementLoopAddLocation(NPC, 48.61, 2, 14.17, 10, math.random(5, 25))
	MovementLoopAddLocation(NPC, 2.17, 2, 10.53, 10, 0)
	MovementLoopAddLocation(NPC, -0.76, 1.9, 15.2, 10, 0)
	MovementLoopAddLocation(NPC, -15.14, -4.99, 7.63, 10, 0)
	MovementLoopAddLocation(NPC, -18.78, -4.83, 9.09, 10, 0)
	MovementLoopAddLocation(NPC, -28.56, -0.75, 5.19, 10, 0)
	MovementLoopAddLocation(NPC, -26.72, -0.76, 2.51, 10, 0)
	MovementLoopAddLocation(NPC, -20.2, 1.79, 4.71, 10, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end