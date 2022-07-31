--[[
   Script Name     : SpawnScripts/FrostfangSea/aRyGorrambusher.lua 
   Script Purpose  : for the spawns "a RyGorr ambusher"
   Script Author   : theFoof
   Script Date     : 2013.5.10
   Script Notes    : 
--]]

local FlameOn = 5

function spawn(NPC)
end

function death(NPC, Spawn) -- updates step 2 of "Flame On!" when the encounter is killed.
    if IsAlive(GetSpawnByLocationID(GetZone(NPC), 32806)) == false and IsAlive(GetSpawnByLocationID(GetZone(NPC), 32810)) == false then
	SetStepComplete(Spawn, FlameOn, 2)
    end
end

function CombatReset(NPC)
    Despawn(NPC)
end