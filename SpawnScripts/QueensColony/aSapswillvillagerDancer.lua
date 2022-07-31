--[[
	Script Name	: SapswillVillageDancer.lua
	Script Purpose	: Spawn script for a dancing Sapswill.
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
		Say(NPC, "Danger? Only danger I see is crackin' my nog on this rock!")
	else
		Say(NPC, "Invasion? Ahh my dance! I call it the Stout Shuffle though.")
	end
end

function QuestTalk(NPC, Spawn)
	if HasQuest(Spawn, 56) and not QuestStepIsComplete(Spawn, 56, 4) then
		SetStepComplete(Spawn, 56, 4)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Special welcomes, diplomat!")
	else
		Say(NPC, "Dancing is good for diplomats too!")
	end
end

