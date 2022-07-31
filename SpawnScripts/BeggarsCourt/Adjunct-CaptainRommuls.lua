--[[
	Script Name	: SpawnScripts/BeggarsCourt/Adjunct-CaptainRommuls.lua
	Script Purpose	: Adjunct-Captain Rommuls 
	Script Author	: John Adams
	Script Date	: 2009.04.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)

	MovementLoopAddLocation(NPC, -8.13, 4.00, -42.68, 3, 0)
	MovementLoopAddLocation(NPC, -14.43, 3.57, -27.02, 3, 6)
	MovementLoopAddLocation(NPC, -24.59, 2.00, -7.14, 3, 10, "DespawnRommulus")

	AddTimer(NPC, 15000, "Talk1")
	AddTimer(NPC, 23000, "Talk2")
	AddTimer(NPC, 29000, "Talk3")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function Talk1(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_seeexplosion_f4d0194c.mp3", "What's all this?!", "", 2343755495, 1390123839)
end

function Talk2(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_grrr_5833be16.mp3", "I have fared better against worse odds... but I shall comply, for now.", "", 148659455, 3381420393)
end

function Talk3(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_ohno_48ef4e64.mp3", "You won't get away with this you... you elves!", "", 2960277190, 1354555525)
end

function DespawnRommulus(NPC)
	Despawn(NPC)
end