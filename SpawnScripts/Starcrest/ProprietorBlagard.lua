--[[
	Script Name	: SpawnScripts/Starcrest/ProprietorBlagard.lua
	Script Purpose	: Proprietor Blagard 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

		PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard000.mp3", "", "", 3622450968, 3253656744, Spawn)
	AddConversationOption(conversation, "No thanks", "dlg_10_1")
	StartConversation(conversation, NPC, Spawn, "Step up to the bar, my friend. Never has coin been better spent. ")
	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard000.mp3", "", "", 3622450968, 3253656744, Spawn)
		AddConversationOption(conversation, "No thanks", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Step up to the bar, my friend. Never has coin been better spent. ")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard000.mp3", "", "", 3622450968, 3253656744, Spawn)
		AddConversationOption(conversation, "No thanks", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Step up to the bar, my friend. Never has coin been better spent. ")
	end

end

