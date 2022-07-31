--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	if IsPlayer(Spawn) then
		random = math.random(1, 100)
		if random <= 100 then
			Skull = SpawnMob(GetZone(Spawn), 2530212, false, GetX(NPC), GetY(NPC), GetZ(NPC), math.random(0, 359))
			Despawn(Skull, 180000)
		end
	end
end