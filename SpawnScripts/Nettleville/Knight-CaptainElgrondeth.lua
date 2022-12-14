--[[
	Script Name	: SpawnScripts/Nettleville/Knight-CaptainElgrondeth.lua
	Script Purpose	: Knight-Captain Elgrondeth <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

local QUEST_1 = 1

function spawn(NPC)
	--ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == QUEST_STEP_END then
		elseif GetLevel(Spawn) >= MIN_LEVEL then
			AddConversationOption(conversation, "What do you mean?", "dlg_7_1")
		end
		PlayFlavor(NPC, "voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth000.mp3", "", "", 3582894338, 2709560661, Spawn)
		AddConversationOption(conversation, "I am a little preoccupied just now.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Thank the gods you came along! Just when I need an extra set of hands!")
	else
		PlayFlavor(NPC, "voiceover/english/knight-captain_elgrondeth/qey_village01/100_quest_captain_elgrondeth_questcomplete_55592dd4.mp3", "I appreciate your help.  If I can return the favor someday, I shall.", "thanks", 1398230613, 3767711690, Spawn)
	end
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth001.mp3", "", "", 1567852224, 3144262033, Spawn)
	AddConversationOption(conversation, "I would be glad to help.", "dlg_7_2")
	AddConversationOption(conversation, "Sorry, I can't help right now.")
	StartConversation(conversation, NPC, Spawn, "One of the guards didn't show up for his shift, and I have reports that I need investigated. It's not easy work, but you look up for a challenge. What do you say? You want to help me out with my investigation?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth002.mp3", "", "", 4148519234, 3732616918, Spawn)
	AddConversationOption(conversation, "I am ready!", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "First, I need you to investigate the sudden increase of vermin in Antonica. The beasts are eating away at our food stores and must be destroyed. I would send a guard, but we have more reports than my guards can handle. Are you ready to help?")
end