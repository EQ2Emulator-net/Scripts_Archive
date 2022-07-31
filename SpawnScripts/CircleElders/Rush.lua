--[[
	Script Name	: Rush.lua
	Script Purpose	: Rush's spawn script
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
	Breeze = GetSpawn(Spawn, 3480002)
	
	OldBruiserIsAlive = false
	BreezeIsAlive = false
	
	if OldBruiser then
		OldBruiserIsAlive = IsAlive(OldBruiser)
	end
	
	if Breeze then
		BreezeIsAlive = IsAlive(Breeze)
	end
	
	if not OldBruiserIsAlive and not BreezeIsAlive then
		SpawnMob(GetZone(Spawn), 3480007, 0, -11.64, 0, -2.03, 267.74)
	end
end
