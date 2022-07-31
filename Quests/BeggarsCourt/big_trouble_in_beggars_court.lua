--[[
	Script Name	: Quests/BeggarsCourt/big_trouble_in_beggars_court.lua
	Script Purpose	: Handles the quest, "Big Trouble in Beggar's Court"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Alucious Valus
	Preceded by: Saving History (saving_history.lua)
	Followed by: Tricking the Traitor (tricking_the_traitor.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to locate Durio and sell this package to him.", 1, "I need to sell a package to Durio for Alucius.", 0, 1370023)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToDurio")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will be back soon.")
	StartConversation(conversation, QuestGiver, Player, "Just go sell my package to Durio Dexus. I'll give you a split of the profits. But the longer you take, the smaller your share becomes.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToDurio(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Durio and discovered Alucius is a traitor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Durio and discovered Alucius is a traitor.")
	
	AddQuestStepChat(Quest, 2, "I need to locate a Militia captain named Kaseo and give him these documents.", 1, "I need to locate Captain Kaseo of the Freeport Militia and speak to him about these documents.", 0, 1370058)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeToKaseo")
end

function Step2_Complete_SpokeToKaseo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found Kaseo and turned over the documents to him.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Kaseo and turned over the documents to him.")
	
	AddQuestStepChat(Quest, 3, "I need to speak with Durio about the documents I handed over to the Militia.", 1, "I need to speak with Durio again about the documents.", 0, 1370023)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "That snake Alucius was trying to sell off the fake documents I obtained for him earlier! I turned over the documents to a captain of the Freeport Militia as Durio suggested. Not only was I rewarded, but it felt good to be ablt to help Freeport and preserve the reputation of the Overlord.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToDurio(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeToKaseo(Quest, QuestGiver, Player)
	end
end
