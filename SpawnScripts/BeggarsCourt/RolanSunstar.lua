--[[
	Script Name	: SpawnScripts/BeggarsCourt/RolanSunstar.lua
	Script Purpose	: Rolan Sunstar 
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
		Say(NPC, "If you have friends watching your back, you might live through this.", Spawn)
	elseif choice == 2 then
		Say(NPC, "Welcome to the city. Hopefully you'll live long enough to enjoy your stay.", Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_1edba7a5.mp3", "Quit breathing my air!", "glare", 2440457715, 1164344641, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_852b8675.mp3", "Shove off, mate!", "shakefist", 4223989531, 84768942, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_6bd51371.mp3", "I'm a dual-breed, not a half-elf.  If you call me half-elf again, I'll cut YOU in half!", "cutthroat", 2884965634, 996787293, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_ef8afd3c.mp3", "I gotta get into the Militia.  Then I could legally beat up people.", "ponder", 2140199906, 2198679856, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_7344f21b.mp3", "I'm in the mood to kick someone in the teeth.", "kick", 620861878, 995351111, Spawn)
	end
end

