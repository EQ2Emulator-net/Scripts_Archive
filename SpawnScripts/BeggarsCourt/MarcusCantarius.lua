--[[
	Script Name	: SpawnScripts/BeggarsCourt/MarcusCantarius.lua
	Script Purpose	: Marcus Cantarius 
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
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/marcus_cantarius/fprt_hood04/quests/marcuscantarius/marcuscantarius001.mp3", "", "", 1085537039, 2873606329, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "I've dedicated my life to eradicating the dervishes.")
end