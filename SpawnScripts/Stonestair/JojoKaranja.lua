--[[
	Script Name	: SpawnScripts/Stonestair/JojoKaranja.lua
	Script Purpose	: Jojo Karanja 
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Greetings, friend... Come sit awhile if you are weary from travel.", "", 1689589577, 4560189, Spawn)
end

