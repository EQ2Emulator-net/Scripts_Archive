--[[
	Script Name	: SpawnScripts/TempleSt/QwergoTogglesmeet.lua
	Script Purpose	: Qwergo Togglesmeet <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Buy from the Togglesmeets!  Those rats have inferior goods made from shoddy workmanship. Don't believe their lies, I tell you.", "", 1689589577, 4560189, Spawn)
end

