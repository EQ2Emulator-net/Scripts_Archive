--[[
	Spawn Template
	Script Name	: tainted_sapswill_ambusher_01.lua
	Script Purpose	: Makes one of the Tainted Sapswill Ambushers attack the tree fort on Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008-08-27
	Script Notes	: 

	These are just suggested functions to get you started. Edit as needed.
--]]

function spawn(NPC)
   MovementLoopAddLocation(NPC, 6.90  , 1.84, -213.57, 4, 0)
   MovementLoopAddLocation(NPC, -10.10, 2.45, -177.46, 4, 0)
   MovementLoopAddLocation(NPC, -55.79, 2.21, -152.94, 4, 0)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end