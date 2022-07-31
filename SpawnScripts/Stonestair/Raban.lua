--[[
	Script Name	: SpawnScripts/Stonestair/Raban.lua
	Script Purpose	: Raban 
	Script Author	: John Adams
	Script Date	: 2009.04.25
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

	PlayFlavor(NPC, "voiceover/english/optional1/tavern_patron,_erudite_female/fprt_hood02/tavern_patron_erudite_raban.mp3", "", "", 2922822950, 250860244, Spawn)
	AddConversationOption(conversation, "Whatever.")
	StartConversation(conversation, NPC, Spawn, "Can't you adventurers find some other place to drink?")
end