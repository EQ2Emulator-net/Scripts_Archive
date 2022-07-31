--[[
	Script Name	: SpawnScripts/TempleSt/Brashk.lua
	Script Purpose	: Brashk 
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

		PlayFlavor(NPC, "voiceover/english/optional1/brashk/fprt_hood03/qst_brashk.mp3", "", "", 67711495, 2241704250, Spawn)
	AddConversationOption(conversation, "I bet it does... if you treasure filth, that is. Goodbye.", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "A new treasure lurks in every corner! Ooooh! ")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/optional1/brashk/fprt_hood03/qst_brashk.mp3", "", "", 67711495, 2241704250, Spawn)
		AddConversationOption(conversation, "I bet it does... if you treasure filth, that is. Goodbye.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "A new treasure lurks in every corner! Ooooh! ")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/optional1/brashk/fprt_hood03/qst_brashk.mp3", "", "", 67711495, 2241704250, Spawn)
		AddConversationOption(conversation, "I bet it does... if you treasure filth, that is. Goodbye.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "A new treasure lurks in every corner! Ooooh! ")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/optional1/brashk/fprt_hood03/qst_brashk.mp3", "", "", 67711495, 2241704250, Spawn)
		AddConversationOption(conversation, "I bet it does... if you treasure filth, that is. Goodbye.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "A new treasure lurks in every corner! Ooooh! ")
	end

end

