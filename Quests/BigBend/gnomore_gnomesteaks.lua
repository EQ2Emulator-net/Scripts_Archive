--[[
	Script Name	: Quests/BigBend/gnomore_gnomesteaks.lua
	Script Purpose	: Handles the quest, "Gnomore Gnomesteaks"
	Script Author	: Scatman
	Script Date	: 2009.04.04
	
	Zone       : Big Bend
	Quest Giver: Kroota Gukbutcher
	Preceded by: Troll Patrol (troll_patrol.lua)
	Followed by: Troll Adventures (troll_adventures.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Check up on Ruzb and see if he's back to eating gnomes again.", 1, "Check in with Ruzb and make sure he's not gone back to eating gnomes again.", 0, 1340029)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToRazb")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "mentor_braz_gutpounder/fprt_hood1/braz_gutpounder030.mp3", "", "", 2167927839, 496576877, Player)
	AddConversationOption(conversation, "Den dis fing, I will do it for you.")
	AddConversationOption(conversation, "Now that's my kind of swift justice. I'll see to the 'problem'.")
	StartConversation(conversation, QuestGiver, Player, "We gots ta take care of our own. If'n a troll is behavin' too bad, den da Freeport Militia come crackin' down hard and barshin' all troll heads in. Dat ain't no way to live.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToRazb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Looks like Ruzb is beyond salvation.")
	
	Ruzb = GetSpawn(Player, 1340029)
	SpawnSet(Ruzb, "show_level", 1)
	SpawnSet(Ruzb, "attackable", 1)
	AddHate(Player, Ruzb, 100)
	
	AddQuestStepKill(Quest, 2, "Punch Ruzb's one-way ticket out of Freeport. Permanently.", 1, 100, "Check in with Ruzb and make sure he's not gone back to eating gnomes again.", 0, 1340029)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledRuzb")
end

function Step2_Complete_KilledRuzb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Looks like Ruzb just couldn't keep away from the gnomesteaks. His loss.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Looks like Ruzb just couldn't keep away from the gnomesteaks. His loss.")
	
	AddQuestStepChat(Quest, 3, "Speak with Braz Gutpounder", 1, "Return to Braz Gutpounder and to tell him of Ruzb's unfortunate accident.", 0, 1340002)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Unfortunately, Ruzb just couldn't keep from eating the gnomes. Much to his discomfort, he had to be put out of his own misery. Or rather, Freeport can't have its citizens eating each other. It's just bad for morale.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_SpokeToRazb(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledRuzb(Quest, QuestGiver, Player)
	end
end
