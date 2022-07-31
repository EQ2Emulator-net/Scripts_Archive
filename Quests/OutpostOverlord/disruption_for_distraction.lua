--[[
	Script Name	: Quests/OutpostOverlord/disruption_for_distraction.lua
	Script Purpose	: Handles the quest, "Disruption for Distraction"
	Script Author	: Scatman
	Script Date	: 2008.09.07
	
	Zone       : Outpost of the Overlord
	Quest Giver: Tayil N'Velex
	Preceded by: Preventative Maintenance (preventative_maintenance.lua)
	Followed by: The Final Assault (the_final_assault.lua)
--]]

function Init(Quest)
	-- Freeportian Cloth Shawl
	-- Freeportian Leather Shoulderpads
 	-- Freeportian Plated Pauldrons
	-- Freeportian Studded Mantle


	AddQuestStepChat(Quest, 1, "Seek out Coercer Zlith at the camp in west Seaside Glade.", 1, "I need to speak with Coercer Zlith at the camp in west Seaside Glade. He will have details regarding the Tunarian mine.", 0, 2780085) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToZlith")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			AddConversationOption(conversation, "I will return.")
			StartConversation(conversation, QuestGiver, Player, "Who better to teach you the fine arts of distraction than a coercer? Return to the camp in Seaside Glade where Coercer Zlith will fill you in on the details of our plan. Report back to me after you have succeeded against the Tunarians.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToZlith(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Coercer Zlith at the camp in west Seaside Glade.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Coercer Zlith at the camp in west Seaside Glade.")
	
	AddQuestStepKill(Quest, 2, "Kill Tunarian miners at the mine in eastern Wilderwood.", 3, 100, "I need to head to the Tunarian mine and cause the disruption. The mine is in the eastern Wilderwood.", 611, 2780183, 2780176, 2780194, 2780195, 2780044, 2780045, 2780064, 2780175, 2780046, 2780065, 2780066)
	AddQuestStep(Quest, 3, "Retrieve glimmering ore samples near the mine.", 2, 100, "I need to head to the Tunarian mine and cause the disruption. The mine is in the eastern Wilderwood.", 0) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedMiners")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_minedOre")
	
	--mined from a Glimmering ore 1 capacity 1 per mine
	--node is a lapis lazuli shard
	-- not item given when mined, so maybe it's just a Spell?
end

function step2_complete_killedMiners(Quest, QuestGiver, Player)
	if QuestIsComplete(Player, 13) then
		step2and3_complete(Quest, QuestGiver, Player)
	end
	
	UpdateQuestStepDescription(Quest, 2, "I've killed enough Tunarian miners.")
end

function step3_complete_minedOre(Quest, QuestGiver, Player)
	if QuestIsComplete(Player, 13) then
		step2and3_complete(Quest, QuestGiver, Player)
	end
	
	UpdateQuestStepDescription(Quest, 3, "I've harvested enough glimmering ore samples.")
end

function step2and3_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed the miners and retrieved the ore samples that Coercer Zlith requested.")
	
	AddQuestStepChat(Quest, 4, "Return to Coercer Zlith.", 1, "I've caused some havoc at the mine and should return to Coercer Zlith.", 2780085) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToZlith")
end

function step4_complete_talkedToZlith(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned and spoke to Coercer Zlith.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned and spoke to Coercer Zlith.")
	
	AddQuestStepKill(Quest, 5, "Kill Tunarian horse sentries in the Wilderwood.", 2, 100, "To cause a bigger distraction and take my revenge for their meddling, I should head back into the Wilderwood and slay some of the Tunarian horse sentries.", 611, 2780138, 2780188, 2780095, 2780134, 2780097, 2780190, 2780108, 2780161, 2780114, 2780083, 2780123) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_killedHorseSentries")
end

function step5_complete_killedHorseSentries(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I took out the horse sentries in the Wilderwood.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I took out the horse sentries in the Wilderwood.")
	
	AddQuestStepChat(Quest, 6, "Return to Coercer Zlith.", 1, "I've killed the horse sentries and should return to Coercer Zlith.", 0, 2780085) 
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I talked with Coercer Zlith at the camp in Seaside Glade and was given details on how to cause the distraction at the Tunarian mine. I attacked the mine and retrieved some ore samples for Tayil, and then took out some horse sentries for good measures. Zlith said that the distraction worked and forces were being sent to check on my havoc. We should now be ready for our final assault.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToZlith(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedMiners(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_minedOre(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedToZlith(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_killedHorseSentries(Quest, QuestGiver, Player)
	end
end
