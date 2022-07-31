--[[
	Script Name	: SpawnScripts/Nettleville/loosesoil.lua
	Script Purpose	: loose soil
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

local QUEST_1_FROM_LAKOSHA = 37

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_1_FROM_LAKOSHA, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
Say(Spawn, "NCSDF")
	if HasQuest(Spawn, QUEST_1_FROM_LAKOSHA) and GetQuestStep(Spawn, QUEST_1_FROM_LAKOSHA) <= 3 then
		local sli = GetSpawnLocationID(NPC)
		Say(Spawn, "SLI= " .. sli)
		if sli == 159577 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 1) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 1)
			end
		elseif sli == 159575 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 2) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 2)
			end
		elseif sli == 159576 then
			if not QuestStepIsComplete(Spawn, QUEST_1_FROM_LAKOSHA, 3) then
				SetStepComplete(Spawn, QUEST_1_FROM_LAKOSHA, 3)
			end
		end
	end
end