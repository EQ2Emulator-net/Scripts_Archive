--[[
	Script Name	: SpawnScripts/Stonestair/Savanuu.lua
	Script Purpose	: Savanuu <Guard>
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
	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Do you have business with the Freeport Militia?", "glare", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "", 0, 0, Spawn)
	end
end