--[[
	Spawn Template
	Script Name	: tainted_sapswill_ambusher_02.lua
	Script Purpose	: Makes one of the Tainted Sapswill Ambushers attack the tree fort on Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008-08-27
	Script Notes	: 
--]]

function spawn(NPC)
   MovementLoopAddLocation(NPC, -55.79, 2.21, -152.94, 4, 0)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end