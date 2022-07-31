--[[
	Script Name	: SpawnScripts/QueensColony/aQeynosianscout.lua
	Script Purpose	: a Qeynosian scout 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_victory_gm_1d908867.mp3", "The soil thanks you for your donation.", "", 2150629553, 2562009754, Spawn)
end
