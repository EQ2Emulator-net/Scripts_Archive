--[[
	Script Name	: SapswillVillageHappy.lua
	Script Purpose	: Spawn script for a happy Sapswill villager.
	Script Author	: Scatman
	Script Date	: 2009.01.11
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasQuest(Spawn, 56) then
		SetStepComplete(Spawn, 56, 5)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Get some swill, diplomat! Is good!")
	else
		Say(NPC, "Dishpan hands? Huh? Oh! Dip-lo-mat! Ha! Funny!")
	end
end

