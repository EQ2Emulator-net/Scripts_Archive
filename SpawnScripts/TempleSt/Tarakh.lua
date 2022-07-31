--[[
	Script Name	: SpawnScripts/TempleSt/Tarakh.lua
	Script Purpose	: Tarakh 
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

		PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh.mp3", "", "", 3608596443, 357856972, Spawn)
	AddConversationOption(conversation, "Big talk from a little rat.", "dlg_10_1")
	AddConversationOption(conversation, "My apologies, I will move on.")
	StartConversation(conversation, NPC, Spawn, "Keep your tongue to yourself, lest you find it missing.")
	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh.mp3", "", "", 3608596443, 357856972, Spawn)
		AddConversationOption(conversation, "Big talk from a little rat.", "dlg_11_1")
		AddConversationOption(conversation, "My apologies, I will move on.")
		StartConversation(conversation, NPC, Spawn, "Keep your tongue to yourself, lest you find it missing.")
	end

end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh000.mp3", "", "", 33100111, 1117280474, Spawn)
	AddConversationOption(conversation, "It doesn't surprise me that you are a dirty little grave robber. ", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Try me!  First I'll gut you then I'll return to your grave to rob it!  Though it's unlikely you would have anything of value in your pine box.")
end

