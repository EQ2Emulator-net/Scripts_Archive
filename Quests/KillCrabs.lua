--[[
	This is the EQ2Emu example LUA Quest.
	These functions are shared, so don't save any character data in them.
	If you have any questions be sure to read the Quest Functions.txt in the Quests directory or the wiki site location on the eq2emulator.net website.
--]]

function Init(Quest)
	RegisterQuest(Quest, "Kill Crabs", "Hallmark", "Queen's Colony", 1, "Murrar Shar is deathly afraid of crabs and wants you to kill some of them for him.")

	AddQuestRewardItem(Quest, 1001)
	
	AddQuestRewardCoin(Quest, 78)

	SetQuestRewardExp(Quest, 200)

	SetQuestPrereqLevel(Quest, 1)
		
	AddQuestStepKill(Quest, 1, "Kill 1 of the crabs on the nearby shore", 1, 100, "Kill Crabs for Murrar Shar", 28, 546, 568, 569)

	AddQuestStepCompleteAction(Quest, 1, "KilledAllCrabs")

	SetCompletedDescription(Quest, "This is the description that is displayed when the quest is completed and shown in the completed quest list.")

	QuestReturnNPC(Quest, 547)
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

function KilledAllCrabs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the crabs as Murrar requested.")
	UpdateQuestDescription(Quest, "I killed some of the crabs on the beach.  Return to Murrar Shar for your reward.")
end

