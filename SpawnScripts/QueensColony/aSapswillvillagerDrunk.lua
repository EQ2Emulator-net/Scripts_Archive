--[[
	Script Name	: SapswillVillageDrunk.lua
	Script Purpose	: Spawn script for a drunk Sapswill villager.
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
	if HasQuest(Spawn, 56) and not QuestStepIsComplete(Spawn, 56, 2) then
		SetStepComplete(Spawn, 56, 2)
	end
	
	FaceTarget(NPC, Spawn)
	Say(NPC, "...")
end

