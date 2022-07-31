--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 30.75, 5.25, -9.51, 3, 0)
	MovementLoopAddLocation(NPC, 34.18, 5.25, -15.64, 3, 0)
	MovementLoopAddLocation(NPC, 54.27, 5, -15.92, 3, 0)
	MovementLoopAddLocation(NPC, 46.23, 3.75, -9.11, 3, 0)
	MovementLoopAddLocation(NPC, 33.82, 5.25, -11.38, 3, 0)
	MovementLoopAddLocation(NPC, 26.14, 3.5, -0.37, 3, 0)
	MovementLoopAddLocation(NPC, 20.26, 3.5, 8.07, 3, 0)
	MovementLoopAddLocation(NPC, 36.78, 2.7, 7.65, 3, 0)
	MovementLoopAddLocation(NPC, 54.97, 4.5, -8.71, 3, 0)
	MovementLoopAddLocation(NPC, 27.66, 9.46, -25.32, 3, 0)
	MovementLoopAddLocation(NPC, 29.12, 9.46, -28.32, 3, 0)
	MovementLoopAddLocation(NPC, 27.93, 9.46, -25.25, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, 45.19, 5.25, -18.4, 3, 0)
	MovementLoopAddLocation(NPC, 26.72, 5.25, -10.19, 3, 0)
	MovementLoopAddLocation(NPC, 6.73, 4.75, -28.58, 3, 0)
	MovementLoopAddLocation(NPC, -21.62, 3, -31.54, 3, 0)
	MovementLoopAddLocation(NPC, -23.81, 2.5, -17.77, 3, 0)
	MovementLoopAddLocation(NPC, -15.89, 2, -3.05, 3, 0)
	MovementLoopAddLocation(NPC, -19.65, 1.81, 4.5, 3, 0)
	MovementLoopAddLocation(NPC, -26.9, -0.76, 2.27, 3, 0)
	MovementLoopAddLocation(NPC, -28.47, -0.75, 5.85, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, -15.08, -5.01, 11.89, 3, 0)
	MovementLoopAddLocation(NPC, -28.2, -5.75, 24.67, 3, 0)
	MovementLoopAddLocation(NPC, -1.07, -7, 48, 3, 0)
	MovementLoopAddLocation(NPC, 28.29, -7, 51.23, 3, 0)
	MovementLoopAddLocation(NPC, 35.59, -5, 32.06, 3, 0)
	MovementLoopAddLocation(NPC, 30.66, -5, 24.72, 3, 0)
	MovementLoopAddLocation(NPC, 49.44, 1.88, 25.07, 3, 0)
	MovementLoopAddLocation(NPC, 49.22, 2, 13.77, 3, math.random(5, 25))
	MovementLoopAddLocation(NPC, 21.13, 3.5, 2.41, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
