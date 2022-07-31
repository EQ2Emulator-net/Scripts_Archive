--[[
	Script Name	: SpawnScripts/BigBend/EnforcerDrulk.lua
	Script Purpose	: Enforcer Drulk 
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

		PlayFlavor(NPC, "enforcer_drulk/fprt_hood1/quests/dreadnaught_drulk001.mp3", "", "", 1553522469, 3808275354, Spawn)
	AddConversationOption(conversation, "Nothing.", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "What do you want, little one?")
	if convo==12 then
		PlayFlavor(NPC, "enforcer_drulk/fprt_hood1/quests/dreadnaught_drulk001.mp3", "", "", 1553522469, 3808275354, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "What do you want, little one?")
	end

end

