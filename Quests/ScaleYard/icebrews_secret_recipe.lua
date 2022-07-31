--[[
	Script Name	: Quests/ScaleYard/icebrews_secret_recipe.lua
	Script Purpose	: Quest 196, Icebrew's Secret Recipe
	Script Author	: Xanibunib
	Script Date	: 4.11.2009
	
	Zone       : Scale Yard / The Ruins
	Quest Giver: Bartender Icebrew
	Preceded by: n/a
	Followed by: Blind Taste Test
--]]


function Init(Quest)

	



	AddQuestStepKill(Quest, 1, "I must collect ten jars of rust monster blood.", 10, 100, "I should head out to the Sunken City and collect ten vials of blood from some of thouse rust monsters.", icon, 1240110, 1240084, 1240039, 1240106)
	AddQuestStepCompleteAction(Quest, 1, "HaveBlood")



end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(NPC, Spawn)
			conversation = CreateConversation()

			PlayFlavor(NPC, "voiceover/english/bartender_icebrew/fprt_hood06/mer_bartender_icebrew_multhail3_c40a6388.mp3", "", "", 3143807370, 1008038806, Spawn)
			AddConversationOption(conversation, "All right!")
			StartConversation(conversation, NPC, Spawn, "My customers are thirsty! You better get my liquid rust or I'll crush your skull!")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function HaveBlood(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collect up the blood from the Rust monsters that Icebrew wanted. I guess he was right... this blood DOES look like rust.")
	
	AddQuestStepChat(Quest, 2, "I need to talk to Icebrew the Bartender.", 1, "I should bring this Rust Monster blood back to Icebrew to get my money.", 0, 1390049)
	AddStepCompleteAction(Quest, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Icebrew has given me my money and my free beer. I think I'll hold onto the beer for now... it seemsmore like a weapon than a drink.")
	GiveQuestReward(Quest, Player)
end

