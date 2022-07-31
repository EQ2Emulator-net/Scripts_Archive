--[[
	Script Name	: SpawnScripts/Stonestair/Irian.lua
	Script Purpose	: Irian <Alchemist>
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

	PlayFlavor(NPC, "voiceover/english/merchant_irian/fprt_hood02/mer_merchant_irian.mp3", "", "", 3784948478, 4065569350, Spawn)
	AddConversationOption(conversation, "I think I will.")
	StartConversation(conversation, NPC, Spawn, "Take a look at my wares, I'm sure you'll find something useful.")
end