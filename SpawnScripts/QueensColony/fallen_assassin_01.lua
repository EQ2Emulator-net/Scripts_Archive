--[[
	Spawn Template
	Script Name	: fallen_assassin_01.lua
	Script Purpose	: Makes the fallen assassins that spawn inside the graveyard and the one that spawns along
                          the wall run to the tree house on the Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008-08-28
	Script Notes	: 
--]]

function spawn(NPC)
   MovementLoopAddLocation(NPC, -132.90, 4.37, -87.26 , 8, 0)
   MovementLoopAddLocation(NPC, -47.80 , 2.08, -143.73, 8, 0)
   MovementLoopAddLocation(NPC, -55.52 , 2.16, -152.13, 8, 0)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	if IsPlayer(Spawn) then
		random = math.random(1, 100)
		if random <= 35 then
			Skull = SpawnMob(GetZone(Spawn), 2530212, false, GetX(NPC), GetY(NPC), GetZ(NPC), math.random(0, 359))
			Despawn(Skull, 180000)
		end
	end
end