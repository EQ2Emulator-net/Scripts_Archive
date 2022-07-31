--[[
	Script Name	: SpawnScripts/Stonestair/Tobial.lua
	Script Purpose	: Tobial 
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Miala will never notice me. I've been here forever and she hasn't even looked at me.", "", 1689589577, 4560189, Spawn)
end