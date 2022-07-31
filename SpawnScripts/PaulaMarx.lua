function spawn(NPC)
	--Syntax is NPC, x, y, z, speed, delay (in seconds)
	MovementLoopAddLocation(NPC, 22.19, -6.86, 183.95, 2, 30)
	MovementLoopAddLocation(NPC, 30.76, -6.33, 196.28, 2, 30)
	MovementLoopAddLocation(NPC, 20.70, -6.85, 206.43, 2, 30)
	MovementLoopAddLocation(NPC, -.90, -5.47, 212.14, 2, 30)
	MovementLoopAddLocation(NPC, 2.35, -4.73, 196.93, 2, 30)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Emote(NPC, "glares at you.")
	Say(NPC, "Yes, Hail to you as well.")
end