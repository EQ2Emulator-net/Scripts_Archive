--[[
	Script Name	: SpawnScripts/BigBend/BarmaidPoppaea.lua
	Script Purpose	: Barmaid Poppaea <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/baker/human_baker_service_evil_1_hail_gf_255a87b2.mp3", "Hey you want that spicy cake to go?  Be careful, that one will singe your nose hairs!", "wince", 4093910034, 4247623060, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/baker/human_baker_service_evil_1_hail_gf_49c499ab.mp3", "Hey do you see any water around here?  Oh well, who needs to wash their hands?", "shrug", 745739472, 2926044111, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/baker/human_baker_service_evil_1_hail_gf_96237e07.mp3", "Man do I love gnome bread!  The trolls, they just love gnomes period!", "chuckle", 3504202120, 504150221, Spawn)
	else
	end

end

