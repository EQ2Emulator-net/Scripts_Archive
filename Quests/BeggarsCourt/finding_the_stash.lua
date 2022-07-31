--[[
	Script Name	: Quests/BeggarsCourt/finding_the_stash.lua
	Script Purpose	: Handles the quest, "Finding the Stash"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Alucious Valus
	Preceded by: None
	Followed by: Saving History (saving_history.lua)
--]]

function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to locate the hidden stash of items Alucius is looking for. He said it should be in one of the northwestern rooms.", 1, 100, "Alucius wants me to find a stash of items belonging to a recently departed man.", 0, 5028)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundStash")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, I will be back soon.")
	StartConversation(conversation, QuestGiver, Player, "Your money will be here waiting for you. You will get it as soon as I get what is mine.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundStash(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to find the stashed items Alucius was looking for.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to find the stashed items Alucius was looking for.")
	
	AddQuestStepChat(Quest, 2, "I need to give the items I found to Alucius for my reward.", 1, "I have found what I think Alucius was looking for, I should return to him now.", 0, 1370004)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to locate the hidden stash Alucius wanted. I have returned what I found to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundStash(Quest, QuestGiver, Player)
	end
end
