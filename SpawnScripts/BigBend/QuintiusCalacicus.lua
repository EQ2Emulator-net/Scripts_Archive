--[[
	Script Name	: SpawnScripts/BigBend/QuintiusCalacicus.lua
	Script Purpose	: Quintius Calacicus <Banker>
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

		PlayFlavor(NPC, "voiceover/english/banker_quintius_calacicus/fprt_hood1/bnk_quintiuscalacicus_hail.mp3", "", "", 3742555178, 748563821, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_14_1")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Freeport Reserve. Will you entrust me with your valuables and cash? I'll take fine care of them.")
	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/banker_quintius_calacicus/fprt_hood1/bnk_quintiuscalacicus_hail.mp3", "", "", 3742555178, 748563821, Spawn)
		AddConversationOption(conversation, "Thank you.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Welcome to the Freeport Reserve. Will you entrust me with your valuables and cash? I'll take fine care of them.")
	end

end

