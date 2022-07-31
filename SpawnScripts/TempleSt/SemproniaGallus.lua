--[[
	Script Name	: SpawnScripts/TempleSt/SemproniaGallus.lua
	Script Purpose	: Sempronia Gallus <Banker>
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

		PlayFlavor(NPC, "voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail.mp3", "", "", 2059269441, 1111799165, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_8_1")
	StartConversation(conversation, NPC, Spawn, "This is the Freeport Reserve. Please make sure all deposits are in exact change and recognizable currency, thank you.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail.mp3", "", "", 2059269441, 1111799165, Spawn)
		AddConversationOption(conversation, "Thank you.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "This is the Freeport Reserve. Please make sure all deposits are in exact change and recognizable currency, thank you.")
	end

end

