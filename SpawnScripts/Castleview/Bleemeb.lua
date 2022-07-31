--[[
	Script Name	: SpawnScripts/Castleview/Bleemeb.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
Say(NPC, "Collect me on live! :)", Spawn)
end

function respawn(NPC)
end
