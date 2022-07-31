--[[
	Script Name	: Quests/ScaleYard/what_happens_in_the_scale_yard_stays.lua
	Script Purpose	: Quest 185, What Happens In The Scale Yard Stays...
	Script Author	: Xanibunib
	Script Date	: 4.10.2009

	
	Zone       : Scale Yard
	Quest Giver: Clan Cheif Malachi Sleetspear
	Preceded by: Battle On The Home Front
	Followed by: Report to Kurdek.
--]]

function Init(Quest)

	
	
	AddQuestStepKill(Quest, 1, "I need to slay the shadowy agents!", 2, 100, "I must intercept the agents that saw me trash Issik's quarters!", 611, 1390074, 1390075, 1390068, 1390135, 1390070, 1390014, 1390015, 1390078, 1390069)

	AddQuestStepCompleteAction(Quest, 1, "Step1_KillAgents")



end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi050.mp3", "", "", 2097942464, 2987521072, Spawn)
			AddConversationOption(conversation, "Won't the guards assist the agents?", "dlg_0_0")
			AddConversationOption(conversation, "I'm gone!")
			StartConversation(conversation, NPC, Spawn, "Go and silence the agents. They're probably still lurking near Issik's quarters. Go now and strike quickly before they slip away.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi050.mp3", "", "", 2097942464, 2987521072, Spawn)
	AddConversationOption(conversation, "Won't the guards assist the agents?", "dlg_0_1")
	AddConversationOption(conversation, "I'm gone!")
	StartConversation(conversation, NPC, Spawn, "Go and silence the agents. They're probably still lurking near Issik's quarters. Go now and strike quickly before they slip away.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi051.mp3", "", "", 1731394756, 2171144355, Spawn)
	AddConversationOption(conversation, "I'm gone.")
	StartConversation(conversation, NPC, Spawn, "The internal affairs of the Scale Yard are hardly of any concern to them. All they care about is keeping the riff-raff out the city itself. They won't interfere with you. Now go!")
end

function Step1_KillAgents(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have disposed of the agents and prevented them from finishing their report.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Malachi.", 1, "I need to tell Malachi that I have silenced the agents!", 0, 1390077) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I arrived just in time! The gents were still there and I was able to dispatch them before they had a chance to submit their report.")
	
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_KillAgents(Quest, QuestGiver, Player)
	end
end

