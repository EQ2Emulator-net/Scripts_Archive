--[[
	Script Name	: SpawnScripts/Stonestair/Rori.lua
	Script Purpose	: Rori 
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
	PlayFlavor(NPC, "voiceover/english/optional1/rori/fprt_hood02/20_streetthug_kerra_callout_de294dba.mp3", "What are you looking at, tough guy?", "", 4159437749, 798807133, Spawn)
end