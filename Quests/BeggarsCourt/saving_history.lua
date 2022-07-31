--[[
	Script Name	: Quests/BeggarsCourt/saving_history.lua
	Script Purpose	: Handles the quest, "Saving History"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Alucious Valus
	Preceded by: Finding the Stash (finding_the_stash.lua)
	Followed by: Big Trouble in Beggar's Court (big_trouble_in_beggars_court.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to locate and retrieve the false war documents from the shady thug who has them.", 1, 100, "I need to locate a shady thug who has false historical records concerning the last war.", 0, 1370064, 1370043, 1370065)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledThug")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will be back soon.")
	StartConversation(conversation, QuestGiver, Player, "The sooner you get back, the better off everyone will be. So get going!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledThug(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "It was difficult, but I recovered the documents and rid Freeport of a traitor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It was difficult, but I recovered the documents and rid Freeport of a traitor.")
	
	AddQuestStepChat(Quest, 2, "I need to return these fake documents to Alucius right away.", 1, "I need to take these documents to Alucius.", 0, 1370004)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to remove the shady thug, put a halt to his horrible rumors about the Overlord, and return the false historical documents to Alucius.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledThug(Quest, QuestGiver, Player)
	end
end
