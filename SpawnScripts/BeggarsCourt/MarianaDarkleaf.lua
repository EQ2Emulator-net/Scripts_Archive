--[[
	Script Name	: SpawnScripts/BeggarsCourt/MarianaDarkleaf.lua
	Script Purpose	: Mariana Darkleaf 
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

	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_84555678.mp3", "half is better than nothing", "", 1222734846, 1658567854, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_c175ec10.mp3", "people call me a half elf im really a three quarter elf", "", 1655768806, 1430035197, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_feb1d2e4.mp3", "i am a half helf and im rude", "", 1628841617, 2548194304, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/mariana_darkleaf/fprt_hood04/100_std_mariana_darkleaf_elf_f_callout1_3a667a53.mp3", "Elowyn is a treat for the eyes ... and even better, he's as handsome as he is stupid ... ", "", 578977669, 3350940430, Spawn)
	else
	end

end

