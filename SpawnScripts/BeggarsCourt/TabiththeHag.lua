--[[
	Script Name	: SpawnScripts/BeggarsCourt/TabiththeHag.lua
	Script Purpose	: Tabith the Hag 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_fighter_gf_544e4a58.mp3", "Epic battles await your future, but the strength of your arm shall tame them all!", "", 3412016143, 1212387502, Spawn)
end

function InRange(NPC, Spawn)
	choice = math.random(1, 3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_fighter_gf_544e4a58.mp3", "Epic battles await your future, but the strength of your arm shall tame them all!", "", 3412016143, 1212387502, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_mage_gf_f18445ae.mp3", "Clearly your intellect is your best asset. The world shall marvel at the wonders you control.", "", 2374480230, 2549502692, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_scout_gf_a250f41f.mp3", "Stealth, guile and bravado shall follow you on your path to greatness.", "", 1797841506, 2868715164, Spawn)
	end
end