--[[
	Script Name	: SpawnScripts/BeggarsCourt/CaptainPaullus.lua
	Script Purpose	: Captain Paullus <Guard>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)

	MovementLoopAddLocation(NPC, 74.37, -7.08, 97.93, 3, 20)
	MovementLoopAddLocation(NPC, 68.84, -7.08, 112.13, 3, 20)
	MovementLoopAddLocation(NPC, 54.24, -7.08, 107.31, 3, 20)
	MovementLoopAddLocation(NPC, 60.52, -7.08, 91.32, 3, 20)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1281050619, 1758539799, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3265760930, 1055342916, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 1906726944, 247472694, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 1744928325, 2718395831, Spawn)
	end
end