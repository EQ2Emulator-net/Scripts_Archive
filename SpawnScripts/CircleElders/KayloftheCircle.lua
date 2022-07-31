--[[
	Script Name	: SpawnScripts/CircleElders/KayloftheCircle.lua
	Script Purpose	: Kayl of the Circle 
	Script Author	: John Adams
	Script Date	: 2008.10.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "T... Tayil! How did you find me?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Noooooooo!", "", 1689589577, 4560189, Spawn)
	else
	end

end

