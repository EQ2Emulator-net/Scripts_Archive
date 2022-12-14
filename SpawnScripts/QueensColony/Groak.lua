--[[
	Script Name	: SpawnScripts/QueensColony/Groak.lua
	Script Purpose	: Groak <Fishmonger>
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
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Good thing Murrar Shar is here!", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "It's amazing what you can make from a fish.", "", 1689589577, 4560189, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1016.mp3", "", "", 0, 0, Spawn)
end

