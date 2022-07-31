--[[
	Script Name	: Quests/BeggarsCourt/tricking_the_traitor.lua
	Script Purpose	: Handles the quest, "Tricking the Traitor"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Alucious Valus
	Preceded by: Big Trouble in Beggar's Court (big_trouble_in_beggars_court.lua)
	Followed by: Meet the Inquisitor (meet_the_inquisitor.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to go confront Alucius and convince him of his wrong doing.", 1, "I need to confront Alucius about his actions.", 0, 1370004)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToAlucius")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will go confront Alucius about his betrayal now.")
	StartConversation(conversation, QuestGiver, Player, "Good. Remember not to back down from him. You must make him fear for his very life if he were to act against you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToAlucius(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to convince Alucius that I am being protected by the Militia.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to convince Alucius that I am being protected by the Militia.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Durio to give him the details of my conversation with Alucius.", 1, "I need to let Durio know what happened with Alucius.", 0, 1370023)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Alucius, and was able to convince him I am not to be messed with. I guess the thought of being marked as a traitor by the Overlord worked well.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToAlucius(Quest, QuestGiver, Player)
	end
end
