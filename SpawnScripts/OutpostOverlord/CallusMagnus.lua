--[[
	Script Name	: SpawnScripts/OutpostOverlord/CallusMagnus.lua
	Script Purpose	: Callus Magnus 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Here's to the Overlord!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Have a stout for Freeport!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Watch out for those sneaky Tunarians.", "", 1689589577, 4560189, Spawn)
	else
	end

end

