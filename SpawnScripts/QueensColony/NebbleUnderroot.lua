--[[
	Script Name	: SpawnScripts/QueensColony/NebbleUnderroot.lua
	Script Purpose	: Nebble Underroot 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Player)
	PlayFlavor(NPC, "", "Mmm, triggerfish pie!  I can smell it now.", "", 1689589577, 4560189)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
end
