--[[
	Script Name	: SpawnScripts/Graystone/WatcherCurmoglielKarthal.lua
	Script Purpose	: Watcher Curmogliel Kar`thal 
	Script Author	: John Adams
	Script Date	: 2009.05.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "The Celestial Watch is ever vigilant. Rest will come only after the tyranny of evil can be undone.", "", 1689589577, 4560189, Spawn)
end