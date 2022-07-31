--[[
	Script Name	: SpawnScripts/BeggarsCourt/AntiusVedrix.lua
	Script Purpose	: Antius Vedrix 
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
	PlayFlavor(NPC, "voiceover/english/antius_vedrix/fprt_hood04/100_std_antius_vedrix_hum_m_multhail1_cd2636f5.mp3", "Who are you? You're not the new guy! Get out of here!", "", 3883094832, 1572266881, Spawn)
end