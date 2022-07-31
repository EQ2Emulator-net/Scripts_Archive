--[[
	Script Name	: SpawnScripts/Stonestair/GalenusVatia.lua
	Script Purpose	: Galenus Vatia 
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

	PlayFlavor(NPC, "voiceover/english/old_man_walters/fprt_hood02/street_oldman.mp3", "", "", 3605248993, 3944697198, Spawn)
	AddConversationOption(conversation, "That's nice. Bye.")
	StartConversation(conversation, NPC, Spawn, "I miss my home on Odus. All my friends were there, but they're all dead now. At least I have a place to shelter these old bones of mine. Back in my day, we didn't ha---")
end