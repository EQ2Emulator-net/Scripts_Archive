--[[
	Script Name	: SpawnScripts/TempleSt/TwergoTogglesmeet.lua
	Script Purpose	: Twergo Togglesmeet <Jeweler>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "My dad runs the best shop in town!  A much better shop, mind you, than those ratmen trying to ruin our business.", "", 1689589577, 4560189, Spawn)
end

