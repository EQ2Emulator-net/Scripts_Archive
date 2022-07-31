--[[
	Script Name	: Quests/GreaterFaydark/infestation.lua
	Script Purpose	: Handles the quest "Infestation"
	Script Author	: Zcoretri
	Script Date	: 2009.03.01
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: none
	Followed by: Running Off the Grobin Scouts
--]]


function Init(Quest)
	  -- Steadfast Bracelet
	 -- Sand-Etched Bracers
	 -- Shrumbler Grips
	 -- Matron's Sleeve
	 -- Harmonic Band
	 AddQuestStepKill(Quest, 1, "I need to eliminate the shrumblers threatening the spirit bloom nursery to the east and west!", 4, 100, "I need to get rid of the shrumblers in the spirit bloom nursery!", 98, 1140007,1140008,1140010)
	 AddQuestStepCompleteAction(Quest, 1, "KilledAllShrumblers")

end

function Accepted(Quest, QuestGiver, Player)
	 if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	    conversation = CreateConversation()
	    FaceTarget(QuestGiver, Player)
	    AddConversationOption(conversation, "I will return")
	    StartConversation(conversation, QuestGiver, Player, "I hope so. You are still quite young and those creatures can be very dangerous!")
	end
	 end
end

function Declined(Quest, QuestGiver, Player)
end

function KilledAllShrumblers(Quest, QuestGiver, Player)
	 UpdateQuestTaskGroupDescription(Quest, 1, "I got rid of the shrumblers that were threatening the spirit blooms.")
	 AddQuestStepChat(Quest, 2, "I should let the Matron of the Nursery know I took care of the shrumbler infestation.", 1, ".", 0, 1140004)
	 AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	 UpdateQuestDescription(Quest, "I got rid of the shrumbler worms that were eating the spirit blooms in the nursery.")
	 GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	 if Step == 1 then
	KilledAllShrumblers(Quest, QuestGiver, Player)
	 end
end


