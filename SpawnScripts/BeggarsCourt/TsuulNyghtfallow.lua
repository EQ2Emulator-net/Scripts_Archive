--[[
	Script Name	: SpawnScripts/BeggarsCourt/TsuulNyghtfallow.lua
	Script Purpose	: Tsuul Nyghtfallow 
	Script Author	: John Adams
	Script Date	: 2009.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_2e8f1542.mp3", "some good advice in freeport dont drink the water or you get lucans revenge", "", 1894354512, 3476177255, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "im only half the man i used to be", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "...", "", 1689589577, 4560189, Spawn)
	else
	end

end

