--[[
	Script Name	: SpawnScripts/Stonestair/Jezrina.lua
	Script Purpose	: Jezrina 
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

	--if SPEAKS ERUDIN then
		PlayFlavor(NPC, "voiceover/english/jezrina/fprt_hood02/20_streetfortuneteller_multhail1_569fa693.mp3", "You ... you have nothing to offer me!  Be gone!", "", 424612651, 2476002427, Spawn)
	--else
		--PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_8c788b45.mp3", "do you have nothing better to do than to bother an erudite", "", 159075636, 2590624879, Spawn)
	--end
end