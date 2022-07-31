--[[
	Script Name	: SpawnScripts/BeggarsCourt/SentiusPoisonleaf.lua
	Script Purpose	: Sentius Poisonleaf 
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

	PlayFlavor(NPC, "voiceover/english/guard_sentius_verus/fprt_hood04/std_sentius_poisonleaf.mp3", "", "", 3476707665, 1763780062, Spawn)
	AddConversationOption(conversation, "I don't really care.")
	StartConversation(conversation, NPC, Spawn, "This mead is quite exquisite! It's a good thing I just came into some money. I've seen what Banwyn does to people who don't pay their tab.")
end