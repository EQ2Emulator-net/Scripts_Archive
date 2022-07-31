--[[
	Script Name	: SpawnScripts/Baubbleshire/BarmaidEstellaMuddyfoot.lua
	Script Purpose	: Barmaid Estella Muddyfoot <Provisioner>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericBakerVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericBakerHail(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericBakerHail(NPC, Spawn)
end
