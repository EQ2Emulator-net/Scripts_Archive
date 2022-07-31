--[[
	Script Name	: SpawnScripts/BeggarsCourt/ArmsdealerSilentblade.lua
	Script Purpose	: Armsdealer Silentblade <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Need adventuring gear? Look no further. I've everything you could possibly want.", "", 1689589577, 4560189, Spawn)
end