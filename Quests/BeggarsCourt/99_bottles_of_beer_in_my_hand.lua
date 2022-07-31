--[[
	Script Name	: Quests/BeggarsCourt/99_bottles_of_beer_in_my_hand.lua
	Script Purpose	: Handles the quest, "99 Bottles Of Beer In My Hand"
	Script Author	: Scatman
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Festus Septimius
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some brine sifters.", 5, 100, "I need to travel to the Sunken City and kill brine sifters until I have a big handful of sand from their gizzards. When they're dead, I'll collect the sand that's in their gizzards.", 77, 1240013, 1240004, 1240033, 1240008)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledCrabs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/festus_septimus/fprt_hood04/quests/festusseptimus/festus_x1_accept.mp3", "", "", 395004029, 46881327, Player)
	AddConversationOption(conversation, "I'll go get some for you.")
	StartConversation(conversation, QuestGiver, Player, "I need gritty sand to craft glass. Glass made from beach sand is too sturdy, so I must use my old standby - crab gizzard sand. Go to the Sunken City and find some bulky crabs. Kill them, open up their gizzards, and sift out the sand. Return with the gritty sand from several crabs and I'll pay you for your work.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledCrabs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed the crabs and collected all the sand I could find in their gizzards.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the crabs and collected all the sand I could find in their gizzards.")
	UpdateQuestZone(Quest, "Beggar's Court")
	
	AddQuestStepChat(Quest, 2, "I need to talk with Festus in Beggar's Court.", 1, "I should bring this sand back to Festus Septimus if I want to get paid.", 0, 1370021)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've been paid by Fetus Septimus for the sand I've collected. It seems that he intended on using the sand to make weaker glass bottles. His market for glassware requires that his bottles break in a jagged fashion so that they can be used as weapons in a bar fight.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledCrabs(Quest, QuestGiver, Player)
	end
end
