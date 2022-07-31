--[[
	Script Name	: SpawnScripts/BeggarsCourt/TulliaDomna.lua
	Script Purpose	: Tullia Domna 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tullia_domna/fprt_hood04/100_std_tullia_domna_hum_f_callout1_77869ddd.mp3", "Come hither ... how can I, Queen Antonia Bayle, serve you?", "", 3532309135, 780107631, Spawn)
end