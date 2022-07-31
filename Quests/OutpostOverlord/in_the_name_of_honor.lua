--[[
	Script Name	: Quests/OutpostOverlord/in_the_name_of_honor.lua
	Script Purpose	: Handles the quest, "In the Name of Honor"
	Script Author	: Scatman
	Script Date	: 2008.12.23

	
	Zone       : Outpost of the Overlord
	Quest Giver: Charles Arker
	Preceded by: In the Name of Presitge (in_the_name_of_prestige.lua)
	Followed by: The Tunarian Plot (the_tunarian_plot.lua)
--]]


function Init(Quest)
	--Laena's ring


	AddQuestStepLocation(Quest, 1, "Search the Wilderwood, just north of the Seaside glade.", 20, "I must find Laena, the Tunarian spy that has captivated Charles Arker. She could be in any of these locations; I'll have to search carefully.", 0, 182.50, 5.57, 111.24) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_firstLoc")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker020.mp3", "", "", 3837612635, 962972593, Player)
			AddConversationOption(conversation, "Easy for you to say.")
			StartConversation(conversation, QuestGiver, Player, "There's no time like the present.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_firstLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Searched the Wilderwood.")
	
	AddQuestStepLocation(Quest, 2, "Search the Rocky Dig to the east inside the Wilderwood.", 20, "I must find Laena, the Tunarian spy that has captivated Charles Arker. She could be in any of these locations; I'll have to search carefully.",0 , 109.67, 1.37, 108.32) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_secondLoc")
end

function step2_complete_secondLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Searched the Rocky Dig.")
	
	AddQuestStepLocation(Quest, 3, "Search Cliffdiver Canyon to the west of Seaside Glade.", 20, "I must find Laena, the Tunarian spy that has captivated Charles Arker. She could be in any of these locations; I'll have to search carefully.", 0, 217.41, -3.68, 140.91) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_thirdLoc")
end

function step3_complete_thirdLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Searched Cliffdiver Canyon.")
	
	AddQuestStepLocation(Quest, 4, "Search Wilderbear Vale, at the northern end of Cliffdiver Canyon.", 20, "I must find Laena, the Tunarian spy that has captivated Charles Arker. She could be in any of these locations; I'll have to search carefully.", 0, 246.40, -0.96, -67.90) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_fourthLoc")
end

function step4_complete_fourthLoc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've located the ghost of Laena.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've located the ghost of Laena.")
	
	SpawnMob(GetZone(Player), 2780200, false, 257.37, -1.27, -62.25, 80)
	AddQuestStepKill(Quest, 5, "The ghost of Laena must be eliminated!", 1, 100, "There she is! I must get rid of Laena's ghost so that Charles is not tempted any longer.", 0, 2780200)
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_killedLaena")
end

function step5_complete_killedLaena(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've gotten rid of Laena, for good.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've gotten rid of Laena, for good.")
	
	--SummonItem(Player, 2084)
	AddQuestStepChat(Quest, 6, "Charles will be grateful to learn that Laena is out of his life now.", 1, "Now that the Tunarian is gone, I should let Charles know he can wed his Freeport lady in peace.", 0, 2780089)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	--RemoveItem(Player, 11446)
	UpdateQuestDescription(Quest, "When I located that captivated Charles Arker's imagination, she was already dead but in ghostly form. To make sure that Laena doesn't come back to haunt him, I made sure she will never rise again. Arker seemed surprised, perhaps even dismayed, but Laena's death with only make him stronger.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_firstLoc(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_secondLoc(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_thirdLoc(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_fourthLoc(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_killedLaena(Quest, QuestGiver, Player)
	end
end
