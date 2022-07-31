--[[
	Script Name	: SpawnScripts/OutpostOverlord/aMilitiapatroller.lua
	Script Purpose	: a Militia patroller <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
	choice = math.random(1,20)
	if choice == 1 then
		PlayFlavor(NPC, "", "I hear Chef Gorga's almost done with our daily stew.  Livers!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The outpost is secure.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "No one dares challenge the might of the Freeport Militia!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "For the strength of Freeport!", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "I'll arm wrestle you for it tonight, but it was my kill!", "", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Ha, I dare them to try!", "", 1689589577, 4560189, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "I can't wait to get back and hit the Seafarer's Roost for an ale.", "", 1689589577, 4560189, Spawn)
	else
	-- say nothing
	end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	-- say something scathing, i am sure...
end


