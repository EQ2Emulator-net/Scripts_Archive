--[[
	Script Name	: aSapswillvillagerRunner.lua
	Script Purpose	: Makes the sapswill on the Queen's Colony run around the rock.
	Script Author	: Scatman
	Script Date	: 2008.12.15
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -82.84, 1.64, -224.23, 5, 0)
	MovementLoopAddLocation(NPC, -79.27, 0.67, -239.10, 5, 0)
	MovementLoopAddLocation(NPC, -75.56, 1.25, -240.10, 5, 0)
	MovementLoopAddLocation(NPC, -75.53, 0.27, -246.10, 5, 0)
	MovementLoopAddLocation(NPC, -80.12, 1.19, -245.78, 5, 0)
end

function hailed(NPC, Spawn)
	--FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end
