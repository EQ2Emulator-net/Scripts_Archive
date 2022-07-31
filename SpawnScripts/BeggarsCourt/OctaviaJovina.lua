--[[
	Script Name	: SpawnScripts/BeggarsCourt/OctaviaJovina.lua
	Script Purpose	: Octavia Jovina 
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

function InRange(NPC, Spawn)
	choice = math.random(1, 2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_10_gf_1236a75.mp3", "The Freeport Militia demands unconditional obedience among its ranks.", "", 70786309, 2889649459, Spawn)
	elseif choice == 2 then
		Say(NPC, "There is no better collection of fearless warriors than the Freeport Militia.", Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_hail_gf_c9e6b7a9.mp3", "The priests of Dismal Rage are better at running from battle than leading one.", "", 2396198417, 3099644701, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_hail_gf_d59d3347.mp3", "The Seafury Buccaneers can't be trusted. They will turn on you when you least expect it.", "", 1280576093, 2130150895, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_hail_gf_6509ed3d.mp3", "The Arcane Scientists are just a cowardly bunch that can't stand getting their hands dirty.", "", 1024489319, 2331992073, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_hail_gf_f2eb775b.mp3", "There is no better collection of fearless warriors than the Freeport Militia.", "", 3315984902, 4037913760, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_hail_gf_2972d442.mp3", "What does a thief and a trader from Coalition of Tradesfolke have in common? They both will strip you of your coins.", "", 1516863043, 2498897125, Spawn)
	end
end