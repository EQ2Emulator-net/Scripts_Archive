--[[
	Script Name	: SpawnScripts/ScaleYard/aShissarianvase.lua 
	Script Purpose	: Spawn Shissarian asp
	Script Author	: Xanibunib
	Script Date	: 2009.03.31
	Script Notes	: 
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function death(NPC, Spawn)
	SpawnMob(GetZone(Spawn), 1390104, false, GetX(NPC), GetY(NPC), GetZ(NPC))
end
