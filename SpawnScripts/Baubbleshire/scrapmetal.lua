--[[
	Script Name	: SpawnScripts/Baubbleshire/scrapmetal.lua
	Script Purpose	: scrap metal
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

local GNOME_MENTOR_QUEST_1 = 26

function spawn(NPC)
	SetRequiredQuest(NPC, GNOME_MENTOR_QUEST_1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end