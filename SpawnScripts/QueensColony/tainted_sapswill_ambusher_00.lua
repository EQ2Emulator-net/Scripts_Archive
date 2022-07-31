--[[
	Spawn Template
	Script Name	: tainted_sapswill_ambusher_00.lua
	Script Purpose	: Does nothing?
	Script Author	: Scatman
	Script Date	: 2008-08-27
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

