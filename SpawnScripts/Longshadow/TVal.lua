--[[
	Script Name	: SpawnScripts/Longshadow/TVal.lua
	Script Purpose	: T`Val <Banker>
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

		PlayFlavor(NPC, "voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval.mp3", "", "", 90970771, 1252206294, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Hail to you.  Currency exchange, secure storage of goods, I offer a range of services tailored to the needs of Freeport guild members.")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval.mp3", "", "", 90970771, 1252206294, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Hail to you.  Currency exchange, secure storage of goods, I offer a range of services tailored to the needs of Freeport guild members.")
	end

end

