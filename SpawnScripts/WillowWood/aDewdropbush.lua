--[[
	Script Name	: SpawnScripts/WillowWood/aDewdropbush.lua
	Script Purpose	: a Dewdrop bush
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 22, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end