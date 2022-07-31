--[[
	Script Name	: SpawnScripts/BigBend/aBonebreakerChampion.lua
	Script Purpose	: a Bonebreaker Champion <The Dreadnaughts>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 3)
	
	if choice == 1 then
		PlayFlavor(NPC, "", "If I can beat all of the other champions... I can enter the gymnasium.", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Who needs brain power when you have brawn power!", "flex", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "You don't want any of the champ!", "flex", 0, 0, Spawn)
	end
end