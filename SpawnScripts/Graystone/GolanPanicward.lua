--[[
	Script Name	: SpawnScripts/Graystone/GolanPanicward.lua
	Script Purpose	: Golan Panicward 
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "RandomTalk")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomTalk(NPC, Spawn, false)
end

function RandomTalk(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "", "Haha, I saw you!  I'm not one to fall for the same thing three times.", "", 1689589577, 4560189, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "", "Ah, what I wouldn't give to cradle a mug of good Dwarven Ale just now.", "", 1689589577, 4560189, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "", "A hard day of adventuring makes one long for home, don't it?", "", 1689589577, 4560189, Spawn)
		else
			PlayFlavor(NPC, "", "Only elves would build a city high up in the trees without any railing!", "", 1689589577, 4560189, Spawn)
		end
	end
end
