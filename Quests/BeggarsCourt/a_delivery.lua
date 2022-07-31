--[[
	Script Name	: Quests/BeggarsCourt/a_delivery.lua
	Script Purpose	: Handles the quest, "A Delivery"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: None
	Followed by: Dirty Work (dirty_work.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver this report to Lieutenant Cervaen in the upstairs room in the western end of the northern half of Beggar's Court.", 1, ".", 75, 1370049)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToCervaen")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian014.mp3", "", "", 746734341, 3406058828, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good. The Brotherhood Awaits.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the note to Lieutenant Cervaen.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Delcairn Sebastian.", 1, ".", 0, 1370050)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered Thavian's letter. After speaking with Lieutenant Cervaen and Delcairn Sebastian they have offered me more work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	end
end
