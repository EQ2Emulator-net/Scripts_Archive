--[[
	Script Name	: SpawnScripts/Castleview/barrel_with_enriched_soil.lua
	Script Purpose	: barrel_with_enriched_soil
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: Scatman
--]]

local HIGH_ELF_MENTOR_QUEST_1 = 60

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_1, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end