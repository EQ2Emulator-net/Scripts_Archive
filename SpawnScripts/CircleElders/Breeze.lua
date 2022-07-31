--[[
	Script Name	: Breeze.lua
	Script Purpose	: Breeze's spawn script
	Script Author	: Scatman
	Script Date	: 2009.01.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	OldBruiser = GetSpawn(Spawn, 3480003)
	Rush = GetSpawn(Spawn, 3480004)
	
	OldBruiserIsAlive = false
	RushIsAlive = false
	
	if OldBruiser then
		OldBruiserIsAlive = IsAlive(OldBruiser)
	end
	
	if Rush then
		RushIsAlive = IsAlive(Rush)
	end
	
	if not OldBruiserIsAlive and not RushIsAlive then
		SpawnMob(GetZone(Spawn), 3480007, 0, -11.64, 0, -2.03, 267.74)
	end
end
