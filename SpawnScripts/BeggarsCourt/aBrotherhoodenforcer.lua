--[[
	Script Name	: SpawnScripts/BeggarsCourt/aBrotherhoodenforcer.lua
	Script Purpose	: a Brotherhood enforcer 
	Script Author	: John Adams
	Script Date	: 2009.04.07
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

	PlayFlavor(NPC, "", "Be quiet, don't struggle, and come with us, Rommuls.", "", 1689589577, 4560189, Spawn)
end

