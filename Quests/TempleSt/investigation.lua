--[[
	Script Name	: Quests/TempleSt/investigation.lua
	Script Purpose	: Handles the quest, "Investigation"
	Script Author	: Scatman
	Script Date	: 2009.03.13
	
	Zone       : Temple Street
	Quest Giver: Fedul
	Preceded by: None
	Followed by: A Favor for a Favor (a_favor_for_a_favor.lua)
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to search the barrel that carried the stolen shipment. It should be near the gates to South Freeport.", 1, 100, ".", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SearchedBarrel")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "All right, I will be back.")
	StartConversation(conversation, QuestGiver, Player, "You don't have a reputation yet, if they see you nosing around they may talk to you--but not likely--and then let you go. Don't worry, at least not yet. You'll be fine.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SearchedBarrel(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have searched the broken barrel and taken a piece of wood for Fedul to examine.")
	
	AddQuestStepChat(Quest, 2, "I need to bring this piece of wood to Fedul near the docks.", 1, ".", 835, 1360034)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToFedul")
end

function Step2_Complete_TalkedToFedul(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Fedul the piece of wood.")
	RemoveItem(Player, 2201)
	
	AddQuestStepChat(Quest, 3, "I need to speak with Neezer Grund on the docks in Temple Street.", 1, ".", 835, 1360035)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	-- Samples and payment for Neezer
	RemoveItem(Player, 10282)
	
	UpdateQuestDescription(Quest, "I have found some clues that may lead Fedul to the thief of the object that Fedul had wanted to steal.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SearchedBarrel(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToFedul(Quest, QuestGiver, Player)
	end
end
