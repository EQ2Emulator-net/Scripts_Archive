--[[
	Script Name	: SpawnScripts/OutpostOverlord/aTunarianhorsesentry1.lua 
	Script Purpose	: Mount/Movement for Tunarian sentry (2780108)
	Script Author	: John Adams
	Script Date	: 2009.03.27
	Script Notes	: Figure out how to use one script for all Tunarian Horse Sentry NPCs
--]]

function spawn(NPC)
	SetMount(NPC, 6848)
	SetMountColor(NPC, 255, 255, 255, 255, 255, 255)

	MovementLoopAddLocation(NPC, 221.08, -0.98, -97.89, 20, 2)
	MovementLoopAddLocation(NPC, 229.12, -1.01, -90.95, 20, 0)
	MovementLoopAddLocation(NPC, 234.56, -1.04, -81.01, 20, 0)
	MovementLoopAddLocation(NPC, 237.25, -1.05, -68.09, 20, 0)
	MovementLoopAddLocation(NPC, 234.24, -1.24, -51.18, 20, 0)
	MovementLoopAddLocation(NPC, 235.43, -4.05, -35.47, 20, 2)
	MovementLoopAddLocation(NPC, 234.24, -1.24, -51.18, 20, 0)
	MovementLoopAddLocation(NPC, 237.25, -1.05, -68.09, 20, 0)
	MovementLoopAddLocation(NPC, 234.56, -1.04, -81.01, 20, 0)
	MovementLoopAddLocation(NPC, 229.12, -1.01, -90.95, 20, 0)
end

function respawn(NPC)
   spawn(NPC)
end
