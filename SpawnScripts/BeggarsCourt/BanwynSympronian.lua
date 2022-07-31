--[[
	Script Name	: SpawnScripts/BeggarsCourt/BanwynSympronian.lua
	Script Purpose	: Banwyn Sympronian 
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

	PlayFlavor(NPC, "voiceover/english/optional1/banwyn_sympronian/fprt_hood04/std_banwyn_sympronian.mp3", "", "", 3405002036, 270659243, Spawn)
	AddConversationOption(conversation, "I'll take my business elsewhere, then.")
	StartConversation(conversation, NPC, Spawn, "I'm busy with a patron. Don't bother me.")
end