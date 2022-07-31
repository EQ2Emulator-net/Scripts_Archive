--[[
	Script Name	: Quests/BeggarsCourt/reel_him_in.lua
	Script Purpose	: Handles the quest, "Reel Him In"
	Script Author	: Scatman
	Script Date	: 2009.04.07
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: Dirty Work (dirty_work.lua)
	Followed by: Thaen Sevellos (thaen_sevellos)
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "I need to collect the stashed components found strewn around the city - the containers will be marked so that I can recognize them.", 3, 100,  ".", 2285,  5640)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotComponents")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen005a.mp3", "", "", 673024524, 1827470261, Player)
	AddConversationOption(conversation, "I won't")
	StartConversation(conversation, QuestGiver, Player, "Oh... don't make a big ruckus when you get those supplies.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotComponents(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the stashed components.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Lieutenant Cervaen and have him put these components together. He is upstairs in the western end of the northeastern half of Beggar's Court.", 1, ".", 0, 1370049)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeToCervaen")
end

function Step2_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Lieutenant Cervaen has put the bomb together.")
	
	-- hidden components
	RemoveItem(Player, 6941)
	RemoveItem(Player, 6941)
	RemoveItem(Player, 6941)
	
	-- a small explosive device
	SummonItem(Player, 2496)
	
	AddQuestStep(Quest, 3, "I need to blow up the supplies in the eastern end of the northern half of Beggar's Court.", 1, 100, ".", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_PlacedExplosives")
end

function Step3_Complete_PlacedExplosives(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have placed the explosives.")
	
	-- a small explosive device
	RemoveItem(Player, 2496)
	
	AddQuestStepChat(Quest, 4, "I need to return to Declairn Sebastian in the upstairs room in the western end of the northern half of Beggar's Court.", 1, ".", 0, 1370050)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Adjunct-Captain Rommuls has been captured by the Brotherhood. It is unlikely that he will survive much longer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotComponents(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_PlacedExplosives(Quest, QuestGiver, Player)
	end
end
