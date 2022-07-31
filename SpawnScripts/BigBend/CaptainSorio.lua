--[[
	Script Name	: SpawnScripts/BigBend/CaptainSorio.lua
	Script Purpose	: Captain Sorio <Freeport Militia>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)

	MovementLoopAddLocation(NPC, -1.79, 3, -61.38, 3, 20)
	MovementLoopAddLocation(NPC, -5, 3, -68.47, 3, 20)
	MovementLoopAddLocation(NPC, -10.36, 3, -66.76, 3, 20)
	MovementLoopAddLocation(NPC, -5.04, 3, -55.52, 3, 20)
	MovementLoopAddLocation(NPC, 1.55, 3, -64.86, 3, 20)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "What do you want?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end