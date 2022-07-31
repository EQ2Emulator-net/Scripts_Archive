--[[
	Script Name	: SpawnScripts/BeggarsCourt/LuciusVulso.lua
	Script Purpose	: Lucius Vulso 
	Script Author	: John Adams
	Script Date	: 2009.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/lucius_vulso/fprt_hood04/100_std_lucius_vulso_hum_m_callout1_96f04ea2.mp3", "What do you need? I've no time for small talk.", "", 1224233, 3736016050, Spawn)
end

