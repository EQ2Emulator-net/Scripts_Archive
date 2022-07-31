--[[
	Script Name	: SpawnScripts/QueensColony/aMorakdevourer_halfling.lua
	Script Purpose	: a Morak devourer
	Script Author	: Scatman
	Script Date	: 2009.05.14
	Script Notes	: 
--]]

morak_devourers_alive = 0

function spawn(NPC)
	morak_devourers_alive = morak_devourers_alive + 1
	local Halfling = GetSpawn(NPC, 2530208)
	if Halfling ~= nil then
		SpawnSet(Halfling, "show_command_icon", 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	morak_devourers_alive = morak_devourers_alive - 1
	if morak_devourers_alive == 0 then
		local Halfling = GetSpawn(Spawn, 2530208)
		if Halfling ~= nil then
			SpawnSet(Halfling, "show_command_icon", 1)
		end
	end
end