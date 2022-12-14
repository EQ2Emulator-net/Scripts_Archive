--[[
	Script Name	: SpawnScripts/Baubbleshire/DeputySplitshin.lua
	Script Purpose	: Deputy Splitshin <Guard>
	Script Author	: Scatman
	Script Date	: 2009.09.25
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
