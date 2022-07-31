--[[
	Script Name	: SpawnScripts/Stonestair/BarmaidMiala.lua
	Script Purpose	: Barmaid Miala <Provisioner>
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

	AddConversationOption(conversation, "That's not my problem.")
	StartConversation(conversation, NPC, Spawn, "That guy won't stop staring at me. He's creepy!")
end