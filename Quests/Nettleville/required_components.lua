--[[
	Script Name	: Quests/Nettleville/required_components.lua
	Script Purpose	: Handles the quest, "Required Components"
	Script Author	: Scatman
	Script Date	: 2008.09.23
	
	Zone       : Nettleville
	Quest Giver: Laharn Rahai
	Preceded by: Curious Findings (curious_findings.lua)
	Followed by: Unfortunate Mistakes (unfortunate_mistakes.lua)
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "I need to buy Reactive Kesmith. Laharn says that Alchemist Garion Dunam in the scribe shop will sell some.", 1, 100,  "I need to acquire Reactive Kesmith some moss scrapings and a Litsuth Bag.", 10,  9803)
	AddQuestStepObtainItem(Quest, 2,  "I need to buy a Litsuth bag. Laharn says that I can get one from Tailor Ehuraa Rotherham on the west side of Nettleville.", 1, 100,  "I need to acquire Reactive Kesmith some moss scrapings and a Litsuth Bag.", 179,  7739)
	AddQuestStepObtainItem(Quest, 3,  "I need to collect some Selki Mushrooms. Laharn says they can be found in the ferryway near the Mariner's Bell in western Nettleville.", 4, 100,  "I need to acquire Reactive Kesmith some moss scrapings and a Litsuth Bag.", 821,  10435)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotReactive")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotBag")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_gotMushrooms")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 
	 PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai007a.mp3", "", "", 2216928573, 1758019339, Player)
	 AddConversationOption(conversation, "All right.")
	 StartConversation(conversation, QuestGiver, Player, "I will prepare the rest of what is necessary.")
end

function Declined(Quest, QuestGiver, Player)
end


function step1_complete_gotReactive(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I bought the Reactive Kesmith.")
	if QuestIsComplete(Player, 39) then
	   GotAllItems(Quest, QuestGiver, Player)
	end 
end

function step2_complete_gotBag(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I bought a Litsuth Bag.")
	if QuestIsComplete(Player, 39) then
	   GotAllItems(Quest, QuestGiver, Player)
	end
end

function step3_complete_gotMushrooms(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected some Selki Mushrooms.")
	if QuestIsComplete(Player, 39) then
	   GotAllItems(Quest, QuestGiver, Player)
	end 
end

function GotAllItems(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have acquired the needed reagants.")
	AddQuestStepChat(Quest, 4, "I need to return to Laharn, near the armor shop.", 1, "I need to bring these reagants to Laharn and discover what the unknown substance is for Lakosha.", 0, 2330042) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToLaharn")
end

function step4_complete_talkedToLaharn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Laharn.")
	AddQuestStepChat(Quest, 5, "I need to speak with Lakosha, on the west side of Nettleville.", 1, "I need to bring these reagants to Laharn and discover what the unknown substance is for Lakosha.", 0, 2330009) 
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	-- Reactive Kesmith
	while HasItem(Player, 9803, 1) do
		RemoveItem(Player, 9803)
	end
	
	-- Litsuth bag
	while HasItem(Player, 7739, 1) do
		RemoveItem(Player, 7739)
	end
	
	-- Selki Mushrooms
	while HasItem(Player, 10435, 1) do
		RemoveItem(Player, 10435)
	end
	
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lakosha.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the reagents and discovered what the unknown substance is.")
	UpdateQuestDescription(Quest, "After I collect all of Laharn's needed components he performed his test. It turns out someone seems to be performing the Pa'Rok ceremony, in which one mourns for the dead. Unfortunately, according to Laharn, there are other compounds in the soil that may corrupt the ceremony.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotReactive(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_gotBag(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_gotMushrooms(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedToLaharn(Quest, QuestGiver, Player)
	end
end