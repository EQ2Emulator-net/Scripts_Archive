--[[
	Script Name	: Quests/OutpostOverlord/xalieas_request.lua
	Script Purpose	: Handles the quest, "Xaliea's Request"
	Script Author	: Scatman
	Script Date	: 2008.09.07
	
	Zone       : Outpost of the Overlord
	Quest Giver: Priestess Xaliea
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	
	-- Bone Bracelet
	AddQuestStepKill(Quest, 1, "I need to find three bone chips for Xaliea. Perhaps I can obtain some from the undead pirates on the northeastern shore of the bay.", 3, 100, "I need to acquire three bone chips for Xaliea.", 611, 2780167, 2780081)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedSkeletons")
	
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 PlayFlavor(QuestGiver, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_secondtalk_01.mp3", "", "", 125454777, 4152864248, Player)
	 AddConversationOption(conversation, "I will do so.")
	 StartConversation(conversation, QuestGiver, Player, "I can hear them, out there in the distance. Their bones are rattling and cracking. Oh! How I want to feel them crumble beneath my grasp. Hurry up, bring me those bone chips!")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedSkeletons(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the bone chips for Xaliea.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the bone chips for Xaliea.")
	
	AddQuestStepChat(Quest, 2, "I still need to take the bone chips to Xaliea.", 1, "I should take the bone chips back to Xaliea.", 0, 2780074) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToXaliea")
end

function step2_complete_talkedToXaliea(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I defeated some of the local skeletons and gave Priestess Xaliea the three bone chips. This seemed to satisfy her lust for adventure.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_killedSkeletons(Quest, QuestGiver, Player)
	end
end
