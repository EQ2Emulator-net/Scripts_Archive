--[[
	Script Name	: Quests/BeggarsCourt/one_last_request.lua
	Script Purpose	: Handles the quest, "One Last Request"
	Script Author	: Scatman
	Script Date	: 2009.04.07
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: Thaen Sevellos (thaen_sevellos.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Inquisitor Thorson in the Sunken City. From Beggar's Court, I can use the Mariner's Bell on the docks to reach the Sunken City.", 1, ".", 0, 1240007)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn015a.mp3", "", "", 2742302436, 855265638, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thanks again, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have found Inquisitor Thorson.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
