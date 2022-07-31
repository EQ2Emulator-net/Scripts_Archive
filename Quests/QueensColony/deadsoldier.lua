--[[
	Script Name	: Quests/QueensColony/deadsoldier.lua
	Script Purpose	: Spawn Defiled Soldiers and attack player
	Script Author	: Scatman
	Script Date	: 2008.08.09
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, 78)


		
	AddQuestStepLocation(Quest, 1, "Found a soldier!", 114, -4, 156, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 2, "Found a soldier!", 117, -3, 182, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 3, "Found a soldier!", 123, -4, 193, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 4, "Found a soldier!", 130, -4, 183, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 5, "Found a soldier!", 141, -3, 150, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 6, "Found a soldier!", 152, -4, 213, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 7, "Found a soldier!", 154, -3, 151, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 8, "Found a soldier!", 156, -3, 135, 10, "TaskGroupText")
	AddQuestStepLocation(Quest, 9, "Found a soldier!", 171, -3, 186, 10, "TaskGroupText")

	AddQuestStepCompleteAction(Quest, 1, "FoundAllSoldiers")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			Say(QuestGiver, "Thank you for accepting this task " .. GetName(Player) .. ".  Please return to me when you have completed it.")
			Emote(QuestGiver, " thanks you warmly.", Player)
		end
	end
end

function Declined(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			Say(QuestGiver, "If you change your mind " .. GetName(Player) .. ", you know where to find me.")
			Emote(QuestGiver, " glares at you.", Player)
		end
	end
end

function FoundAllSoldiers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the soldiers... he's not going to like this.")
	UpdateQuestDescription(Quest, "I have discovered the fate of the soldiers.  Return to Murrar Shar for my reward.")
end

