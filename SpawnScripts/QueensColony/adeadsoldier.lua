--[[
	Script Name	: SpawnScripts/QueensColony/adeadsoldier.lua
	Script Purpose	: a dead soldier
	Script Author	: Scatman
	Script Date	: 2009.06.13
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, 7) and GetQuestStep(Spawn, 7) == 4 then
		SetStepComplete(Spawn, 7, 4)
	end
end
