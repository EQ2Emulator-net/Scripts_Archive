--[[
	Script Name	: SpawnScripts/BigBend/Muzmog.lua
	Script Purpose	: Muzmog 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 2)
	
	if choice == 1 then
		PlayFlavor(NPC, "", "this ale tastes awful", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		Say(NPC, "You lookin' at my ale? Better not be lookin' at my ale. I smash the heads of them who looks at my ale!", Spawn)
	end
end