--[[
	Script Name	: SpawnScripts/BigBend/SlaverBrona.lua
	Script Purpose	: Slaver Brona 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 2)
	
	if choice == 1 then
		PlayFlavor(NPC, "", "It's hard to find help that's not afraid of me!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		Say(NPC, "You dare approach me peasant?! You look like one of my miserable thralls, so I know you've no coin. Begone!", Spawn)
	end
end