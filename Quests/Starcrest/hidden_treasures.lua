--[[
	Script Name	: Quests/Starcrest/hidden_treasures.lua
	Script Purpose	: Handles the quest, "Hidden Treasures"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: Information Merchants (information_merchants.lua)
	Followed by: Confrontation (confrontation.lua)
--]]

function Init(Quest)
	
	-- Cleansing Stones of Wisdom
	-- Cleansing Stones of Endurance


	AddQuestStepSpell(Quest, 1, "I need to swim in the ferryway in the eastern portion of Starcrest Commune and see if anything is stuck behind the grate.", 1, 100, ".", 0, 5012) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_inspectedBox")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona020a.mp3", "", "", 2218692163, 3483095154, Player)
			AddConversationOption(conversation, "Thank you.")
			StartConversation(conversation, QuestGiver, Player, "Good luck.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_inspectedBox(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the package Maareona spoke of.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the package Maareona spoke of.")
	
	-- small metal box and paper
	-- SummonItem(Spawn, 11245)
	AddQuestStepChat(Quest, 2, "I must return this package to Maaereona in the eastern portion of Starcrest Commune.", 1, ".", 0, 2340001)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_inspectedBox(Quest, QuestGiver, Player)
	end
end
