--[[
	Script Name	: Quests/Castleview/froglok_in_waiting.lua
	Script Purpose	: Handles the quest, "Froglok in Waiting"
	Script Author	: Scatman
	Script Date	: 2008.09.19
	
	Zone       : Castleview Hamlet
	Quest Giver: Kwa Stalwart
	Preceded by: None
	Followed by:
--]]

function Init(Quest)
	
	AddQuestStepChat(Quest, 1, "I need coin for the ale.", 1, "Kwal asked if I would go get him some drink as he waits.", 2360046) 
	AddQuestStepCompleteAction(Quest, 1, "step1_completed_talkedKwal")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 AddConversationOption(conversation, "A sweet bog spirit to drink down, will be delivered.")
	 StartConversation(conversation, QuestGiver, Player, "Excellent! Pass the fountain of Valor. East of here ye will set thine sights upon the Hole in the Wall Tavern, next to the Qeynos Harbor gate. Their bog water spirits would vanquish this thirst nicely.")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end


function step1_completed_talkedKwal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "test")
	
	AddQuestStepChat(Quest, 2, "Speak to Waitress Brooak at the tavern next to the Qeynos Harbor gate.", 1, "Exchange Kwan's coin for an ale at The Hole in the Wall Tavern.", 2360023) 
	AddQuestStepCompleteAction(Quest, 2, "step2_completed_talkedBrooak")
	Say(QuestGiver, "work")
	UpdateQuestDescription(Quest, "Blah")
	GiveQuestReward(Quest, Player)
end

function step2_completed_talkedBrooak(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "test")

end
