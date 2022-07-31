--[[
	Script Name	: SpawnScripts/TempleSt/PlordoBlotterdook.lua
	Script Purpose	: Plordo Blotterdook <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

		PlayFlavor(NPC, "voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", "", "", 438412116, 3436978899, Spawn)
	AddConversationOption(conversation, "I am not interested.  ", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", "", "", 438412116, 3436978899, Spawn)
		AddConversationOption(conversation, "I am not interested.  ", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", "", "", 438412116, 3436978899, Spawn)
		AddConversationOption(conversation, "I am not interested.  ", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", "", "", 438412116, 3436978899, Spawn)
		AddConversationOption(conversation, "I am not interested.  ", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/merchant_plordo_blotterdook/fprt_hood03/mer_merchantplordoblotterdook.mp3", "", "", 438412116, 3436978899, Spawn)
		AddConversationOption(conversation, "I am not interested.  ", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Yes, yes, I am hurrying.  What can good 'ole Plordo sell you today?")
	end

end

