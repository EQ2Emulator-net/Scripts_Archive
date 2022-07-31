--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -25.38, 2.5, -19.52, 3, 0)
	MovementLoopAddLocation(NPC, -21.93, 3, -30.63, 3, 0)
	MovementLoopAddLocation(NPC, -15.98, 4, -34, 3, 0)
	MovementLoopAddLocation(NPC, -7.28, 4, -42.71, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, 6.25, 4.75, -25.21, 3, 0)
	MovementLoopAddLocation(NPC, 20.03, 5, -23.09, 3, 0)
	MovementLoopAddLocation(NPC, 27.46, 5.25, -11.32, 3, 0)
	MovementLoopAddLocation(NPC, 55.13, 5, -20.14, 3, 0)
	MovementLoopAddLocation(NPC, 55.92, 4.5, -9.12, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, 50.5, 3.24, -1.26, 3, 0)
	MovementLoopAddLocation(NPC, 51.59, 2.23, 10.84, 3, 0)
	MovementLoopAddLocation(NPC, 14.36, 3.5, 9.81, 3, 0)
	MovementLoopAddLocation(NPC, -1.27, 3.22, -0.62, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end
