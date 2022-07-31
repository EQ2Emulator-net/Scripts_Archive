--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_scourgeson_x2_rygorr_tent.lua 
	Script Purpose	:	for the quest tent spawns
	Script Author	:	theFoof
	Script Date		:	2013.6.20
	Script Notes	:	
--]]

local HighlyMaterials = 74

function spawn(NPC)
	SetRequiredQuest(NPC, HighlyMaterials, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'burn tent' then
		if GetQuestStep(Spawn, HighlyMaterials) == 2 then
		    local zone = GetZone(NPC)
	       	if GetSpawnLocationID(NPC) == 435782 then
		    	local fire = SpawnByLocationID(zone, 572721)
		    elseif GetSpawnLocationID(NPC) == 435783 then
		    	local fire = SpawnByLocationID(zone, 572720)
		    elseif GetSpawnLocationID(NPC) == 435788 then
		    	local fire = SpawnByLocationID(zone, 572719)
		    elseif GetSpawnLocationID(NPC) == 435793 then
		    	local fire = SpawnByLocationID(zone, 572722)
		    elseif GetSpawnLocationID(NPC) == 435792 then
			    local fire = SpawnByLocationID(zone, 572718)
		    elseif GetSpawnLocationID(NPC) == 435790 then
		    	local fire = SpawnByLocationID(zone, 442666)
		    end
			AddStepProgress(Spawn, HighlyMaterials, 2, 1)
			AddTimer(fire, 25000, "Despawn")
		    AddTimer(NPC, 5000, "KillArea")
		end
	end
end

function KillArea(NPC)
	KillSpawnByDistance(NPC, 10, 0, 0)
end