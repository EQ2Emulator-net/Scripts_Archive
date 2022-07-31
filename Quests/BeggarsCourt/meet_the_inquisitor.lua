--[[
	Script Name	: Quests/BeggarsCourt/meet_the_inquisitor.lua
	Script Purpose	: Handles the quest, "Meet the Inquisitor"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Alucious Valus
	Preceded by: Tricking the Traitor (tricking_the_traitor.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to locate Inquisitor Thorson. I should use the bell to summon transport to the Sunken City.", 1, ".", 0, INQUISITOR_THORSON_ID)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you again for all of your help.")
	StartConversation(conversation, QuestGiver, Player, "You have proven yourself well. I'm sure you will be a great help to him. Travel safely, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
end


function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've spoken with Inquisitor Thorson in the Sunken City. I should be able to learn much more from him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
end
