--[[
	Script Name	: SpawnScripts/Stonestair/Thindel.lua
	Script Purpose	: Thindel <Bowyer>
	Script Author	: John Adams
	Script Date	: 2009.04.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Come closer, see the wares!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Bows are better than swords, my friend!", "", 1689589577, 4560189, Spawn)
	end
end