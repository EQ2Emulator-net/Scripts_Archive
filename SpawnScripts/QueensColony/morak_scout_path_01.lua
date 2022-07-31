--[[
	Spawn Template
	Script Name	: morak_scout_path_01.lua
	Script Purpose	: Makes one of the morak devourer and tainted sapswill scouts roam their path in the Queen's
                          Colony.
	Script Author	: Scatman
	Script Date	: 2008-08-28
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)

   speed = 2

   --way down
   MovementLoopAddLocation(NPC, 236.03 , -1.04, -67.27, speed, 0)
   MovementLoopAddLocation(NPC, 249.31 , -4.11, -8.59 , speed, 0)
   MovementLoopAddLocation(NPC, 232.06 , -4.05,  5.32 , speed, 0)
   MovementLoopAddLocation(NPC, 232.90 , -4.08,  28.51, speed, 0)
   MovementLoopAddLocation(NPC, 253.21 , -4.13,  45.12, speed, 0)
   MovementLoopAddLocation(NPC, 247.54 , -6.88,  79.07, speed, 0)

   --way back up
   MovementLoopAddLocation(NPC, 253.21 , -4.13,  45.12, speed, 0)
   MovementLoopAddLocation(NPC, 232.90 , -4.08,  28.51, speed, 0)
   MovementLoopAddLocation(NPC, 232.06 , -4.05,  5.32 , speed, 0)
   MovementLoopAddLocation(NPC, 249.31 , -4.11, -8.59 , speed, 0)
   MovementLoopAddLocation(NPC, x      ,  y   ,  z    , speed, 0)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
end