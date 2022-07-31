--[[
	Script Name	: SpawnScripts/BeggarsCourt/FlaviaDomitillaFulvia.lua
	Script Purpose	: Flavia Domitilla Fulvia  
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

	choice = math.random(1,11)

	if choice == 1 then
		PlayFlavor(NPC, "", "Eiryn ebres kieralay", "no", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Kelest ebren val ehnedres", "frustrated", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Notro kitreq inva taz", "heckno", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Otresta sovas eirgrest", "frustrated", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e88fad9f.mp3", "Whoa!!!  I don't remember saying I wanted to talk to you!", "heckno", 3869016622, 3073089976, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_cec6fc9a.mp3", "If I ruled this city, there would be statues of me EVERYWHERE!", "fullcurtsey", 2776668686, 3459755281, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_53c5bc53.mp3", "One day I'll be famous and everyone here will be sorry they ignored me.", "grumble", 1314849459, 3332284891, Spawn)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_29efa844.mp3", "I didn't see or hear anything!  I swear!", "shiver", 485112397, 1983474419, Spawn)
	elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_f2f1105d.mp3", "I already stuck three people today.  Do you want to be the one to make it four?", "scold", 591598271, 2045220321, Spawn)
	elseif choice == 10 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e22fa528.mp3", "What's the difference between your face and your bottom?  Yeah,  I can't tell either.", "shrug", 3407089973, 2027516210, Spawn)
	elseif choice == 11 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_2c74d6d9.mp3", "Get your foul orc-breath away from me!", "stinky", 3849285611, 1607961607, Spawn)
	else
	end

end

