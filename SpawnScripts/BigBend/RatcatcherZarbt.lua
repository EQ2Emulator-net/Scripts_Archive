--[[
	Script Name	: SpawnScripts/BigBend/RatcatcherZarbt.lua
	Script Purpose	: Ratcatcher Zarbt 
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

		PlayFlavor(NPC, "voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", "", "", 3774469332, 1538503466, Spawn)
	AddConversationOption(conversation, "Why would I care about rats? Don't bother me.", "dlg_33_1")
	StartConversation(conversation, NPC, Spawn, "Hass you seens any rats around latelys? ")
	if convo==34 then
		PlayFlavor(NPC, "voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", "", "", 3774469332, 1538503466, Spawn)
		AddConversationOption(conversation, "Why would I care about rats? Don't bother me.", "dlg_34_1")
		StartConversation(conversation, NPC, Spawn, "Hass you seens any rats around latelys? ")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", "", "", 3774469332, 1538503466, Spawn)
		AddConversationOption(conversation, "Why would I care about rats? Don't bother me.", "dlg_35_1")
		StartConversation(conversation, NPC, Spawn, "Hass you seens any rats around latelys? ")
	end

	if convo==40 then
		PlayFlavor(NPC, "voiceover/english/optional1/ratcatcher_zarbt/fprt_hood1/qst_ratcatcherzarbt.mp3", "", "", 3774469332, 1538503466, Spawn)
		AddConversationOption(conversation, "Why would I care about rats? Don't bother me.", "dlg_40_1")
		StartConversation(conversation, NPC, Spawn, "Hass you seens any rats around latelys? ")
	end

end

