--[[
	Script Name	: SpawnScripts/Stonestair/SevriIlBethod.lua
	Script Purpose	: Sevri Il'Bethod 
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
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/quest_newbie_erudite_sevri_no_speak_f6ea55bb.mp3", "Please, I don't have anything for you right now.", "", 3441706534, 2672842670, Spawn)
end