--[[
	Script Name	: Quests/BeggarsCourt/dirty_work.lua
	Script Purpose	: Handles the quest, "Dirty Work"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: A Delivery (a_delivery.lua)
	Followed by: Reel Him In (reel_him_in.lua)
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "I need to purchase 'Fate's Whisper' from Loamshallow a merchant whose shop is southeast of the bank.", 1, 100,  "I need to purchase some poison.", 0,  4973)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_BoughtPoison")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn005a.mp3", "", "", 3741115317, 660402658, Player)
	AddConversationOption(conversation, "Yes, sir.")
	StartConversation(conversation, QuestGiver, Player, "Neither Revlos nor his interrogator must live. Go, quickly.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_BoughtPoison(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have purchased the poison.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have purchased the poison.")
	
	AddQuestStep(Quest, 2, "I need to go to the gate to North Freeport and eavesdrop on the conversation that is supposed to take place there. I should hide behind the western side of the gates.", 1, 100, "I need to eavesdrop on a conversation.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Listened")
end

function Step2_Complete_Listened(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have learned the location that the meeting will take place in.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have learned the location that the meeting will take place in.")
	
	AddQuestStepSpell(Quest, 3, "I must poison the cups in the room in the southeastern area of the Beggar's Court, east of the inn.", 1, 100, "I need to poison the cups at the meeting place.", 0, 5030)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_CupsPoisoned")
end

function Step3_Complete_CupsPoisoned(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have poisoned the cups.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have poisoned the cups.")

	-- Fate's Whisper
	RemoveItem(Player, 6160)
	
	AddQuestStepChat(Quest, 4, "I need to return to Delcairn Sebastian in the upstairs room in the western end of the northern half of Beggar's Court.", 1, "I need to return to Delcairn.", 0, 1370050)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have poisoned the cups that will be used in Revlos' interrogation.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_BoughtPoison(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Listened(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_CupsPoisoned(Quest, QuestGiver, Player)
	end
end
