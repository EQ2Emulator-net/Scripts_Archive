--[[
	Script Name	: Quests/OutpostOverlord/checking_on_charles.lua
	Script Purpose	: Handles the quest, "Checking on Charles"
	Script Author	: Scatman
	Script Date	: 2009.01.10
	
	Zone       : Outpost of the Overlord
	Quest Giver: Charles Arker
	Preceded by: The Tunarian Plot (the_tunarian_plot.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Investigator's Buckle


	AddQuestStepChat(Quest, 1, "Speak with Nogg Dreadscar.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780035) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToNogg")
	
end

function Accepted(Quest, QuestGiver, Player)
if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink007.mp3", "", "", 1860903025, 3285043812, Player)
			AddConversationOption(conversation, "I'll be back.")
			StartConversation(conversation, QuestGiver, Player, "Exssssss-cellent.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToNogg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Nogg Dreadscar.")
	
	AddQuestStepChat(Quest, 2, "Speak with Trainer Jayla Surfrider.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780028) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToJayla")
end

function step2_complete_talkedToJayla(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Jayla Surfrider. She didn't know him.")
	
	AddQuestStepChat(Quest, 3, "Speak with Trainer Darg Frostwind.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780032) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToDarg")
end

function step3_complete_talkedToDarg(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke to Darg Frostwind. He didn't know Charles and never trained him.")
	
	AddQuestStepChat(Quest, 4, "Speak with Captain Pinious, just inside the tower.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780027) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedPinious")
end

function step4_complete_talkedPinious(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke to Captain Pinious, who can't recall Charles.")
	
	AddQuestStepChat(Quest, 5, "Speak with Chef Gorga.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780062) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToGorga")
end

function step5_complete_talkedToGorga(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I spoke to Chef Gorga. She doesn't know him, though she might like to cook him.")
	
	AddQuestStepChat(Quest, 6, "Speak with Trainer Vella N'Dur.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780058) 
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToVella")
end

function step6_complete_talkedToVella(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I spoke to Vella D'Nur, who also doesn't know Charles.")
	
	AddQuestStepChat(Quest, 7, "Speak with Trainer Corx Knickknack.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780042) 
	AddQuestStepCompleteAction(Quest, 7, "step7_complete_talkedToCorx")
end

function step7_complete_talkedToCorx(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke to Corx Knickknack, who didn't know Charles.")
	
	AddQuestStepChat(Quest, 8, "Speak with Assassin Vamir.", 1, "Speak with some of the other Freeportians to see what they've heard about Charles Arker.", 0, 2780086) 
	AddQuestStepCompleteAction(Quest, 8, "step8_complete_talkedToVamir")
end

function step8_complete_talkedToVamir(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've spoken with the locals.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with the locals.")
	
	AddQuestStepChat(Quest, 9, "Speak with Zherran Tzizzink. She'll probably be lurking near the firepit in the Outpost.", 1, "The local Freeportians had nothing bad to say about Charles. Nothing good, either. Time to zell Zherran Tzizzink the news.", 0, 2780174) 
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I spoke with several of the Freeportians here at the Outpost of the Overlord. Charles Arker seems to have left very little impression, even with those who are at the same camp as he is! Guess the lack of luster to his name is not going to stop the wedding plans for him. I can only wish him all the best.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToNogg(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToJayla(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToDarg(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedPinious(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToGorga(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_talkedToVella(Quest, QuestGiver, Player)
	elseif Step == 7 then
		step7_complete_talkedToCorx(Quest, QuestGiver, Player)
	elseif Step == 8 then
		step8_complete_talkedToVamir(Quest, QuestGiver, Player)
	end
end
