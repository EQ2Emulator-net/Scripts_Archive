--[[
	Script Name	: OldBruiser.lua
	Script Purpose	: Old Bruiser's spawn script
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
	Breeze = GetSpawn(Spawn, 3480002)
	Rush = GetSpawn(Spawn, 3480004)
	
	BreezeIsAlive = false
	RushIsAlive = false
	
	if Breeze then
		BreezeIsAlive = IsAlive(Breeze)
	end
	
	if Rush then
		RushIsAlive = IsAlive(Rush)
	end
	
	if not BreezeIsAlive and not RushIsAlive then
		SpawnMob(GetZone(Spawn), 3480007, 0, -11.64, 0, -2.03, 267.74)
	end
end