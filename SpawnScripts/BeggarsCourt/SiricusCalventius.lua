--[[
	Script Name	: SpawnScripts/BeggarsCourt/SiricusCalventius.lua
	Script Purpose	: Siricus Calventius 
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
	PlayFlavor(NPC, "voiceover/english/siricus_calventius/fprt_hood04/100_std_siricus_calventius_hum_m_callout1_12a2e93c.mp3", "How dare you enter my house, scoundrel! This time you're not destroying my figurines!", "", 2618163617, 4254987101, Spawn)
end