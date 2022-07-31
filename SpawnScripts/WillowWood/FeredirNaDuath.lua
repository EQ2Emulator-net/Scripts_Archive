--[[
	Script Name	: SpawnScripts/WillowWood/FeredirNaDuath.lua
	Script Purpose	: Feredir Na'Duath  
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local WOOD_ELF = 15

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "", "The city is not the most beautiful place in Norrath, but it is at least familiar.", "", 1689589577, 4560189, Spawn)
		elseif choice == 2 then
			Say(NPC, "I've often wondered whether a kerra tail would be a help or hindrance in life amongst the treetops.", Spawn)
		end
	end
	if GetRace(Spawn) == WOOD_ELF and math.random(0, 100) <= 50 then
		SendMessage(Spawn, GetName(NPC) .. " greets you.")
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 5)

	if choice == 1 then
		PlayFlavor(NPC, "", "To be among the highest leaves and branches of a tree is to feel free.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I too long for my home in Faydark.  Someday I am sure Tunare will answer us.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "With the help of Feir'Dal such as you, I know we will be able to rebuild our homes and live in peace among the trees.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		Say(NPC, "The blessing of Tunare is the highest blessing of all.", Spawn)
	elseif choice == 5 then
		Say(NPC, "I've often wondered whether a kerra tail would be a help or hindrance in life amongst the treetops.", Spawn)
	end
end
