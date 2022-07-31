	--[[
	Script Name	: SpawnScripts/Baubbleshire/aMistyThicketShadebloom.lua
	Script Purpose	: a Misty Thicket Shadebloom
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

local HALFLING_MENTOR_QUEST_2 = 71

function spawn(NPC)
	SetRequiredQuest(NPC, HALFLING_MENTOR_QUEST_2, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end