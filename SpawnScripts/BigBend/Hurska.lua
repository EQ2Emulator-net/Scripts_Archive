--[[
	Script Name	: SpawnScripts/BigBend/Hurska.lua
	Script Purpose	: Hurska 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

	PlayFlavor(NPC, "voiceover/english/optional5/hurska/hurska_line1_64.mp3", "", "", 4288363486, 696744928, Spawn)
	AddConversationOption(conversation, "I will move on then....")
	StartConversation(conversation, NPC, Spawn, "Why are you botherin' Hurska?")
end