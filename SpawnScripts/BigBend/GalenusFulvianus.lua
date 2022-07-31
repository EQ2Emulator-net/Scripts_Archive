--[[
	Script Name	: SpawnScripts/BigBend/GalenusFulvianus.lua
	Script Purpose	: Galenus Fulvianus <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_e79db99d.mp3", "So tell me, what's your poison?", "hello", 1333275744, 2244181784, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_c5b9c7c2.mp3", "You want to talk?  If you want us to be friends all you need to do is buy a drink!", "stare", 449345966, 4157533401, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_3/ft/service/bartender/human_bartender_service_evil_3_hail_gm_4b169ed.mp3", "I do believe a gratuity is in order.", "glare", 3876231044, 2766008796, Spawn)
	else
	end

end

