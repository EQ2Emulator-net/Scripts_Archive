--[[
	Script Name	: SpawnScripts/Stonestair/Kazar.lua
	Script Purpose	: Kazar 
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/kazar/fprt_hood02/20_tavernpatron_erudite_callout1_2aea6285.mp3", "Bah! Another adventurer.  Why don't you go bother one of those overgrown house cats?", "", 705599440, 4085265206, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end