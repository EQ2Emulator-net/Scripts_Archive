--[[
	Script Name	: SpawnScripts/ScaleYard/CalebBrazenroot.lua
	Script Purpose	: Caleb Brazenroot 
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

	if HasQuest(Spawn, 183) and GetQuestStep(Spawn, 183) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/caleb_brazenroot/fprt_hood06/caleb001.mp3", "", "", 1644020306, 887498353, Spawn)
		AddConversationOption(conversation, "AHHHHHHHHHHHHHHHH!", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Aye? What can I do you for?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/caleb_brazenroot/fprt_hood06/quest_caleb_idle_text_55217158.mp3", "An axe might do it, or a sword. A hammer would work too... Or even a flail! Bah, we barbarians have to make such difficult decisions!", "", 3199749556, 268743291, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/caleb_brazenroot/fprt_hood06/caleb002.mp3", "", "", 1052071538, 473490683, Spawn)
	AddConversationOption(conversation, "AHHHHHHHHHHHHHHHH!", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "AHHHHHHHHHHHHHHHH!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, 183, 2)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/caleb_brazenroot/fprt_hood06/caleb002.mp3", "", "", 1052071538, 473490683, Spawn)
	AddConversationOption(conversation, "...")
	StartConversation(conversation, NPC, Spawn, "AHHHHHHHHHHHHH!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/caleb_brazenroot/fprt_hood06/quest_caleb_idle_text_55217158.mp3", "An axe might do it, or a sword. A hammer would work too... Or even a flail! Bah, we barbarians have to make such difficult decisions!", "", 3199749556, 268743291, Spawn)
--]]

