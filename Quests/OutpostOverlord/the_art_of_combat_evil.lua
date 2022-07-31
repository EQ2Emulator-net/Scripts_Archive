--[[
	Script Name	: Quests/OutpostOverlord/the_art_of_combat_evil.lua
	Script Purpose	: Handles the quest, "The Art of Combat"
	Script Author	: Scatman
	Script Date	: 2008.09.04
	
	Zone       : Outpost of the Overlord
	Quest Giver: Tayil N'Velex
	Preceded by: None
	Followed by: Seaside Stew (seaside_stew.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Trainer Darg Frostwind at Combat Clearing, northwest of Tayil N'Velex.", 1, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 0, 2780032) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToDarg")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex035.mp3", "", "", 613247670, 1228791827, Player)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, QuestGiver, Player, "In case you forgot, I've written down his name and location in your quest journal.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToDarg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Darg Frostwind.")
	
	AddQuestStepKill(Quest, 2, "I need to defeat a sparring partner in combat. There are several sparring partners just north of Trainer Darg Frostwind.", 1, 100, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 611, 2780016,2780017,2780018,2780019,2780020,2780021) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedSparringPartner")
end

function step2_complete_killedSparringPartner(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated a sparring partner in combat.")
	
	AddQuestStepChat(Quest, 3, "I need to speak with Trainer Darg Frostwind again.", 1, "I need to speak with Darg Frostwind. He will train me in the ways of combat.", 0, 2780032) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToDarg")
end

function step3_complete_talkedToDarg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken to Sergeant Darg Frostwind.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have defeated a sparring partner in combat.") 
	
	AddQuestStepChat(Quest, 4, "I need to return to Tayil N'Velex.", 1, "Now that I have completed my combat training I should speak with Tayil N'Velex.", 0, 2780022) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkToTayil")
end

function step4_complete_talkToTayil(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have learned some of the basics of combat from Trainer Darg Frostwind at the Outpost of the Overlord. Hopefully this knowledge helps me serve Freeport and uncover the trouble here.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_talkedToDarg(Quest, QuestGiver, Player)
	elseif Step == 2 then
	   step2_complete_killedSparringPartner(Quest, QuestGiver, Player)
	elseif Step == 3 then
	   step3_complete_talkedToDarg(Quest, QuestGiver, Player)
	end
end
