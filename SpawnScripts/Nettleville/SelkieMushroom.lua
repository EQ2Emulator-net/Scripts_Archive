--[[
	Script Name	: SpawnScripts/Nettleville/SelkieMushroom.lua
	Script Purpose	: Selkie Mushroom
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 39, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end