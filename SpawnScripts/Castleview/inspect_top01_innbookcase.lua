--[[
	Script Name	: SpawnScripts/Castleview/inspect_top01_innbookcase.lua
	Script Purpose	: inspect_top01_innbookcase
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Inspect" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Stop browsing.")
		StartDialogConversation(conversation, 1, NPC, Spawn, "This is an antique bookcase of exquisite elven craftmanship. It is filled with books written in both elven tongues and common Norrathian tongue.")
	end
end