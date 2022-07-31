--[[
	Script Name	: Quests/OutpostOverlord/the_tunarian_plot.lua
	Script Purpose	: Handles the quest, "The Tunarian Plot"
	Script Author	: Scatman
	Script Date	: 2009.01.09
	
	Zone       : Outpost of the Overlord
	Quest Giver: Charles Arker
	Preceded by: In the Name of Honor (in_the_name_of_honor.lua)
	Followed by: Checking on Charles (checking_on_charles.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "Search some Tunarian protectors for these parchment scraps.", 2, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 611, 2780163, 2780099, 2780124, 2780143, 2780198, 2780165, 2780100, 2780191, 2780132, 2780129, 2780101, 2780117, 2780154, 2780159, 2780113, 2780142)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killTunarians")


end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killTunarians(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've searched the Tunarian protectors.")
	
	-- A PARCHMENT SCRAP
	-- The edges of the parchment are torn and jagged as though ripped from a larger document.
	--    Examine the parchment.    (updates quest, need dialog after
	--    Put together the parchment pieces.   (updates quest, need dialog after)
	--    Put the parchment away.
	
	AddQuestStepChat(Quest, 2, "I must examine the parchment scraps (Dev Note: Talk to Charles Arker for now).", 1, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 0, 2780089) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_examinedParchment")
end

function step2_complete_examinedParchment(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've examined the parchment.")

	AddQuestStepKill(Quest, 3, "Search the Tunarian bearmasters for more of these parchment scraps.", 1, 100, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 611, 2780203, 2780186, 2780119, 2780116, 2780144, 2780199, 2780187, 2780111)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_killBearmasters")
end

function step3_complete_killBearmasters(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've searched the Tunarian bearmasters.")
	
	-- A PARCHMENT SCRAP
	-- The edges of the parchment are torn and jagged as though ripped from a larger document.
	--    Examine the parchment.    (updates quest, need dialog after
	--    Re-examine the parchment.   (updates quest, need dialog after)
	--    Put the parchment away.
	
	AddQuestStepChat(Quest, 4, "I must examine the parchment scraps (Dev Note: Talk to Charles Arker for now).", 1, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 0, 2780089) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_examinedParchment")
end

function step4_complete_examinedParchment(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've examined the parchment.")

	AddQuestStepChat(Quest, 5, "Charles Arker knows more about this than he's led me to believe. I'll see what he has to say about things now.", 1, "I need to find the rest of this Tunarian parchment so that I can solve its mystery.", 0, 2780089) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToCharles")
end

function step5_complete_talkedToCharles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've gathered most of the parchment pieces together.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered most of the parchment pieces together.")
	
	SpawnMob(GetZone(Player), 2780205, false, 124.04, 1.88, 25.71, 215.41)
	--Despawn(GetSpawn(Player, 2780205), 180000) -- 3 minutes
	AddQuestStepChat(Quest, 6, "Meet Charles Arker at the Nook, east of the center of the Wilderwood.", 1, "Charles Arker said he will explain everything to me, but away from the encampment where we might be overheard.", 0, 2780205) 
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToCharles")
end

function step6_complete_talkedToCharles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Charles Arker and learned his dark secret.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Charles Arker and learned his dark secret.")
	
	Despawn(GetSpawn(Player, 2780205), 10000)
	--Destroy parchment
	AddQuestStepChat(Quest, 7, "I'll get rid of the parchment by burning it in the firepit at Whizratchet's Bank (Dev Note: Talk to Charles Arker for now).", 1, "Charles Arker once again needs me to take care of something for him.", 0, "2780089")
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The 'Tunarian Plot' turned out to be nothing more than Charles Arker ineptly arranging a meeting with that Tunarian wood elf, Laena. He confessed to me that he'd only been trying to get back all the pieces of this note before word got back to his family. I helped cover his tracks by destroying all the parchment pieces we gathered.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killTunarians(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_examinedParchment(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_killBearmasters(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_examinedParchment(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToCharles(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_talkedToCharles(Quest, QuestGiver, Player)
	end
end

