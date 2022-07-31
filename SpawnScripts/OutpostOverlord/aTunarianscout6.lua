--[[
	Script Name	: SpawnScripts/OutpostOverlord/aTunarianscout6.lua
	Script Purpose	: When player enters 30m proximity, scout Crouches
	Script Author	: John Adams
	Script Date	: 2009.01.08
	Script Notes	: JA: may need to adjust range
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 30, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Player)
	FaceTarget(NPC, Player)
	DuckSpawn = GetSpawn(NPC, 2780196)		-- Get Tunarian Scout
	SpawnSet(DuckSpawn, "visual_state", "221")	-- Start crouch_idle
end

function LeaveRange(NPC, Player)
	DuckSpawn = GetSpawn(NPC, 2780196)		-- Get Tunarian Scout
	SpawnSet(DuckSpawn, "visual_state", "0")	-- Stop crouch_idle
end
