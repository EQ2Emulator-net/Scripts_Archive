--[[
	Script Name	: SpawnScripts/WillowWood/SaliniaBrooklily.lua
	Script Purpose	: Salinia Brooklily <Spell Scrolls>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: This spawn speaks Feir'Dal
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "The amazing thing about nature is its ability to balance life with no assistance.  Unfortunately, the influx of people to this city is disrupting this balance. ", "", 1689589577, 4560189, Spawn)
end