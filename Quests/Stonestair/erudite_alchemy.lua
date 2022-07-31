--[[
	Script Name	: Quests/Stonestair/erudite_alchemy.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	
	Zone       : <zone-name>
	Quest Giver: <NPC-name>
	Preceded by: <preceding-quest-name>
	Followed by: <quest-to-follow>
--]]


function Init(Quest)

	--RegisterQuest(Quest, Quest Name, Quest Type, Quest Zone, Quest level, Description)





	--AddQuestStepKill(Quest, Step ID, Description, Quantity, TaskGroupText, NPC ID(s))

	--AddQuestStepCompleteAction(Quest, Step ID, Function Name)

	--SetCompletedDescription(Quest, Description)


end

--example only from Murrar Shar.lua
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

function KilledAllCrabs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the crabs as Murrar requested.")
	UpdateQuestDescription(Quest, "I killed some of the crabs on the beach.  Return to Murrar Shar for your reward.")
end



