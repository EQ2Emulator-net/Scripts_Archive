--[[
	Script Name	: SapswillVillageMusician.lua
	Script Purpose	: Spawn script for Sapswill musician.
	Script Author	: Scatman
	Script Date	: 2009.01.11
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasCompletedQuest(Spawn, 56) or HasQuest(Spawn, 56) then
		QuestTalk(NPC, Spawn)
	else
		NormalTalk(NPC, Spawn)
	end
	
	
end

function NormalTalk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "What you mean backwards? Expert I am!")
	else
		Say(NPC, "Course I know what I'm doing! What you mean backwards?")
	end
end

function QuestTalk(NPC, Spawn)
	if HasQuest(Spawn, 56) and not QuestStepIsComplete(Spawn, 56, 1) then
		SetStepComplete(Spawn, 56, 1)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "I play special tune for diplomats!")
	else
		Say(NPC, "Happy meeting, diplomat!")
	end
end