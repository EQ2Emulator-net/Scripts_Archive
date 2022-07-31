--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 26.86, -6.17, 45.71, 10, 0)
	MovementLoopAddLocation(NPC, 24.95, -7, 51.09, 10, 0)
	MovementLoopAddLocation(NPC, 42.91, -7, 52.14, 10, 0)
	MovementLoopAddLocation(NPC, 42.53, -5, 31.14, 10, 0)
	MovementLoopAddLocation(NPC, -12.57, -5.75, 22.78, 10, 0)
	MovementLoopAddLocation(NPC, -33.29, -5.75, 25.24, 10, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
