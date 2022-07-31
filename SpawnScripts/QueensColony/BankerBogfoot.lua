--[[
	Script Name	: SpawnScripts/QueensColony/BankerBogfoot.lua
	Script Purpose	: Banker Bogfoot <Banker>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function targeted(NPC, Spawn)
	hailed(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "As a banker it is my job to hold items and coin for you for safe-keeping. If you would like to learn more, speak with Trainer Zidget Sprogrudder. She is just east of me, around the corner.", "", 0, 0, Spawn)
end

