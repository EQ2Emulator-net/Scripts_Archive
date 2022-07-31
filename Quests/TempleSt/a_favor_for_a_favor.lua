--[[
	Script Name	: Quests/TempleSt/a_favor_for_a_favor.lua
	Script Purpose	: Handles the quest, "A Favor for a Favor"
	Script Author	: Scatman
	Script Date	: 2009.03.13
	
	Zone       : Temple Street
	Quest Giver: Fedul
	Preceded by: Investigation (investigation.lua)
	Followed by: Digging Deeper (digging_deeper.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect six acid glands from the filth gobblers around the Temple Street. I should be able to find them hiding in garbage piles.", 6, 100, ".", 170, 1360071)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotGlands")
-- This filth pile looks temporarily abondonded. Perhaps you should check back later.
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/quests/neezer_grund/ratonga_neezer_grund007a.mp3", "", "", 3729599538, 4025692399, Player)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "Great! I'll be right here when you're done.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotGlands(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the acid glands.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these acid glands to Neezer Grund in Temple Street near the docks.", 1, ".", 0, 1360035)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToNeezer")
end

function Step2_Complete_TalkedToNeezer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Neezer the acid glands.")
	
	AddQuestStepChat(Quest, 3, "I need to bring Neezer's findings to Fedul near the docks in Temple Street.", 1, ".", 185, 1360034)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)	
	UpdateQuestDescription(Quest, "Neezer's tests found traces of a toxin in the saliva of whoever broke open the box.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_GotGlands(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToNeezer(Quest, QuestGiver, Player)
	end
end
