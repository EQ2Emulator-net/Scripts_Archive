
--[[
	Script Name	: Quests/TempleSt/more_power.lua
	Script Purpose	: Quest , More Power.
	Script Author	: Xanibunib
	Script Date	: 4.25.2009
	
	Zone       : Temple Street
	Quest Giver: Neezer Grund
	Quest ID#	: 199
	Preceded by: n/a
	Followed by: More Quality
--]]

function Init(Quest)

	--Volatile Chaw
	
	--Volatile Powder ICON: White Powder
	AddQuestStepObtainItem(Quest, 1,  "I need to collect some volatile powder from abandoned kegs strewn about Temple Street.", 10, 100,  "Neezer Grund has asked that I collect some final components needed to test his new translation device.", 342,  10659)

	AddQuestStepCompleteAction(Quest, 1, "GotPowder")
	

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget (QuestGiver, Player)
			conversation = CreateConversation()
			
			AddConversationOption(NPC, Spawn, "I can do this.")
			StartConversation(NPC, Spawn, "Great! I need some source of concentrated power.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function GotPowder(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the volatile powder.")
	
	AddQuestStepChat(Quest, 2, 	"I need to return to Neezer Grund near the docks now that I have this volatile powder.", 1, "Neezer Grund has asked that I collect some final components needed to test his new translation device.", 0, 1360035)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete")
end

function Step2_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Neezer Grund.")
	
	AddQuestStepSpell(Quest, 3, "I need to place the blast capsule in the translation device so that Neezer can power it up.", 1, 100, "Neezer Grund has asked that I collect some final components needed to test his new translation device.", 0, 5035)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete")
end

function Step3_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "When I placed the blast capsule in the translation device it exploded.")
	
	AddQuestStepChat(Quest, 4, "I need to speak with Neezer Grund again.", 1, "Neezer Grund has asked that I collect some final components needed to test his new translation device.", 0, 1360035)
	AddQuestStepCompleteAction(Quest, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Neezer Grund.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Neezer's translation device is not yet functional.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotPowder(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete(Quest, QuestGiver, Player)
	end
end
	
	
