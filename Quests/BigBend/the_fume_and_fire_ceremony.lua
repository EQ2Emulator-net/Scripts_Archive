--[[
	Script Name	: Quests/BigBend/the_fume_and_fire_ceremony.lua
	Script Purpose	: Handles the quest, "The Fume and Fire Ceremony"
	Script Author	: Scatman
	Script Date	: 2009.04.02
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: Much Ado' About Rallos (much_ado_about_rallos.lua)
	Followed by: More Bashing! (more_bashing.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Kroota, and receive the ceremonial items from him.", 1, "The ceremony for Rallos Zek is to continue without Kroota.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToKroota")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher025.mp3", "", "", 3329043126, 3925179850, Spawn)
	AddConversationOption(conversation, "What items?", "WhatItems")
	StartConversation(conversation, NPC, Spawn, "Go to Somdoq, in the Western most room in the alleys of Big Bend.  He will be performing the rites with Lochugh, and tell you what to do with the items.")
end

function WhatItems(Quest, QuestGiver, Player)
	SetStepComplete(Player, 168, 1)
	
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Blood of Rallos' Enemies
	if not HasItem(Player, 3830) then
		SummonItem(Player, 3830)
	end
	
	-- Incense
	if not HasItem(Player, 7105) then
		SummonItem(Player, 7105)
	end
	
	-- Skins of the Inferior
	if not HasItem(Player, 11154) then
		SummonItem(Player, 11154)
	end

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher058.mp3", "", "", 3108767778, 618795226, Player)
	AddConversationOption(conversation, "I will not disappoint.")
	StartConversation(conversation, QuestGiver, Player, "The blood, skin and incense that you had collected earlier to honor Rallos Zek.  Take them to Somdoq.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToKroota(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Kroota.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Kroota.")
	
	AddQuestStepChat(Quest, 2, "Take the ceremonial items to Somdoq in the western most room in the alleys of Big Bend.", 1, "Kroota sent me to the ceremony, with the items.", 0, 1340042)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToSomdoq")
end

function Step2_Complete_TalkedToSomdoq(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Somdoq.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Somdoq.")
	
	AddQuestStep(Quest, 3, "I must examine the incense in my inventory, and burn it (Dev Note: Talk to Somdoq for now).", 1, 100, "Somdoq has asked that I prepare the items for the ceremony.", 0)
	AddQuestStep(Quest, 4, "I must examine the skin of the inferior in my inventory, and tear it (Dev Note: Talk to Somdoq for now).", 1, 100, "Somdoq has asked that I prepare the items for the ceremony.", 0)
	AddQuestStep(Quest, 5, "I must examine the vase of elven blood in my inventory, and smash it (Dev Note: Talk to Somdoq for now).", 1, 100, "Somdoq has asked that I prepare the items for the ceremony.", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_Incense")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_Skin")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_Blood")
end

function Step3_Complete_Incense(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The incense starts to burn, filling the air with a heavy smell.")
	
	if QuestIsComplete(Player, 168) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_Skin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Strips of flesh have been thrown upon the ground.")
	
	if QuestIsComplete(Player, 168) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step5_Complete_Blood(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "The vase has been broken and the blood of the enemy spills upon the ground.")
	
	if QuestIsComplete(Player, 168) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I prepared the items for the ceremony.")
	
	AddQuestStepChat(Quest, 6, "Speak with Somdoq, so he knows to start the tribute.", 1, "I should tell Somdoq that I am ready.", 0, 1340042)
	AddQuestStepCompleteAction(Quest, 6, "Step6_Complete_TalkedToSomdoq")
end

function Step6_Complete_TalkedToSomdoq(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Somdoq and Lochugh have finished the ceremony.")
	UpdateQuestTaskGroupDescription(Quest, 4, "Somdoq and Lochugh have finished the ceremony.")
	
	AddQuestStepChat(Quest, 7, "Report back to Kroota at the pier in Big Bend.", 1, "I should return to Kroota, now.", 0, 1340003)
	AddQuestStepCompleteAction(Quest, 7, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The ceremony was completed without interruption.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeToKroota(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToSomdoq(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_Incense(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_Skin(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_Blood(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6_Complete_TalkedToSomdoq(Quest, QuestGiver, Player)
	end
end
