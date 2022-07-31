--[[
	Script Name	: SpawnScripts/Stonestair/Kaman.lua
	Script Purpose	: Kaman <Banker>
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

	PlayFlavor(NPC, "voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman.mp3", "", "", 1309348424, 2032495249, Spawn)
	AddConversationOption(conversation, "Maybe another time.")
	StartConversation(conversation, NPC, Spawn, "Hello! Your valuables are safe with Kaman. Trust me.  I'm the last of a long line of bankers. What guild do you belong to?")
end