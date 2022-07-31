--[[
	Script Name	: SpawnScripts/Stonestair/Johari.lua
	Script Purpose	: Johari <Spell Scrolls>
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

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "I've got these fine scrolls for sale, do take a look at them.")
end