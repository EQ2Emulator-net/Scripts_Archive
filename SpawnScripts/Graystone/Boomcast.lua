--[[
	Script Name	: SpawnScripts/Graystone/Boomcast.lua
	Script Purpose	: Boomcast
	Script Author	: Scatman
	Script Date	: 2009.05.30
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