--[[
	Spawn Template
	Script Name	: fallen_brigand_01.lua
	Script Purpose	: Makes the fallen brigand walk a defined path near the cometary on the Queen's Colony.
	Script Author	: Scatman
	Script Date	: 2008.08.29
	Script Notes	: 
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)

   -- way up
   MovementLoopAddLocation(NPC, -90.40 , 5.50, -81.21, 2, 0)
   MovementLoopAddLocation(NPC, -118.30, 4.32, -98.28, 2, 0)
   MovementLoopAddLocation(NPC, -133.59, 4.37, -89.50, 2, 0)
   MovementLoopAddLocation(NPC, -126.09, 4.34, -47.56, 2, 0)

   -- way back
   MovementLoopAddLocation(NPC, -133.59, 4.37, -89.50, 2, 0)
   MovementLoopAddLocation(NPC, -118.30, 4.32, -98.28, 2, 0)
   MovementLoopAddLocation(NPC, -90.40 , 5.50, -81.21, 2, 0)
   MovementLoopAddLocation(NPC,  x     , y   ,  z    , 2, 0)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
end