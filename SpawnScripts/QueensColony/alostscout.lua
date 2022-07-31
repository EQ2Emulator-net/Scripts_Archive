--[[
	Script Name	: SpawnScripts/QueensColony/alostscout.lua
	Script Purpose	: a lost scout 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Wha... what happened?  I should get back to the colony!", "", 1689589577, 4560189, spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Whe... where am I?  I should get back to the colony!", "", 1689589577, 4560189, spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Whew, thank you!  I couldn't hold on much longer.", "", 1689589577, 4560189, spawn)
	else
		PlayFlavor(NPC, "", "Ahhhhh!  I must escape!", "", 1689589577, 4560189, spawn)
	end

end
