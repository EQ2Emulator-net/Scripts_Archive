--[[
	Script Name	: SpawnScripts/BeggarsCourt/Maecenus.lua
	Script Purpose	: Maecenus 
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

	PlayFlavor(NPC, "voiceover/english/maecenus/fprt_hood04/maecenus000.mp3", "", "", 2491712536, 707778820, Spawn)
	AddConversationOption(conversation, "I don't know you either.")
	StartConversation(conversation, NPC, Spawn, "I don't know you. Shove off.")
end