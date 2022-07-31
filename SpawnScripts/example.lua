function spawn(NPC)
	--Syntax is NPC, x, y, z, speed, delay (in seconds)
	--MovementLoopAddLocation(NPC, x, y, z, 2, 30)
end
function respawn(NPC)
	Say(NPC, "I am respawning!!")
end
function attacked(NPC, Spawn)
	Say(NPC, "Attack me will you?!?!")
end
function targeted(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "You feeling lucky, punk?!?  Well do you..?")
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Emote(NPC, "glares at you.")
	Say(NPC, "Yes, Hail to you as well.")
end
function death(NPC, Spawn)
	Say(NPC, "Alas, I am dead. :(")
end
function killed(NPC, Spawn)
	Say(NPC, "Haha, I killed j00.  I am leet!")
end
function aggro(NPC, Spawn)
	Say(NPC, "You have ruined your own lands.  You shall not ruin mine!!")
end
function healthchanged(NPC)
	Say(NPC, "Oh no, I am getting low on health.")
end