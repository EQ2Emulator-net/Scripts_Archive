--[[
	Script Name	: SpawnScripts/TempleSt/SpezitheStreetHag.lua
	Script Purpose	: Spezi the Street Hag 
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

		PlayFlavor(NPC, "voiceover/english/spezi_the_street_hag/fprt_hood03/qst_streethagspezi.mp3", "", "", 1064590659, 1345460348, Spawn)
	AddConversationOption(conversation, "Yes, there are very few with your level of attractiveness.  I have to be someplace else now.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Take a good look!  There are nots many as attractive as I, Spezi. You want somes company?")
	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/spezi_the_street_hag/fprt_hood03/qst_streethagspezi.mp3", "", "", 1064590659, 1345460348, Spawn)
		AddConversationOption(conversation, "Yes, there are very few with your level of attractiveness.  I have to be someplace else now.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Take a good look!  There are nots many as attractive as I, Spezi. You want somes company?")
	end

end

