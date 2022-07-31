--[[
	Script Name	: SpawnScripts/Stonestair/ViscountNorian.lua
	Script Purpose	: Viscount Norian <Guard>
	Script Author	: John Adams
	Script Date	: 2009.04.12
	Script Notes	: Did not collect this, stole it from Scale Yard
--]]

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end