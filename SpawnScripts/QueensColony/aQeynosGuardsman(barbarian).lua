--[[
	Script Name	: SpawnScripts/QueensColony/aQeynosGuardsman(barbarian).lua
	Script Purpose	: a Qeynos Guardsman <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "For the love of Halas, I could use a stout!", "", 1689589577, 4560189, Spawn)
	else
		-- say nothing
	end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say("I am on duty, and cannot be bothered.")
end
