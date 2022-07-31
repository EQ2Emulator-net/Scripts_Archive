--[[
	Script Name	: Quests/Starcrest/gathering_glowmyst.lua
	Script Purpose	: Handles the quest, "Gathering Glowmyst"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Bartender Bermo
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	
	-- Bermo Beamer (5)


	AddQuestStepKill(Quest, 1, "I must gather glowmyst from the beetles in Oakmyst forest.", 10, 100, "I need to gather up glowmyst juice from Oakmyst forest by hunting down the glowmyst beetles.", 1950001)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBeetles")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 PlayFlavor(QuestGiver, "voiceover/english/bartender_bermo/qey_village02/100_bartender_bermo_multhail4_bd869670.mp3", "", "", 2103292434, 2123107577, Player)
	 AddConversationOption(conversation, "All right, I'll try to hurry.")
	StartConversation(conversation, QuestGiver, Player, "I must have my glowmyst! My customers won't settle for anything other than that glowing conocotion!")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBeetles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've successfully gathered the glowmyst juice I need!")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've successfully gathered the glowmyst juice I need!") 
	
	AddQuestStepChat(Quest, 2, "I need to return to Bartender Bermo in Starcrest.", 1, "I should return to Bartender Bermo in the Starcrest Village.", 2340034) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToBermo")
end

function step2_complete_talkedToBermo(Quest, QuestGiver, Player)
	UpdateQuestDescription("I returned to Bartender Bermo with all the juice he needed. Finding all ten beetles took quite some time, but in the end I persevered!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quset, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedBeetles(Quest, QuestGiver, Player)
	end
end
